WITH score_percentiles AS (
    SELECT 
        PERCENTILE_CONT(0.9) WITHIN GROUP (ORDER BY Exam_score) AS top_10_percent,
        PERCENTILE_CONT(0.1) WITHIN GROUP (ORDER BY Exam_score) AS bottom_10_percent
    FROM school
),
selected_students AS (
    SELECT s.student_id
    FROM school s
    CROSS JOIN score_percentiles sp
    WHERE s.Exam_score >= sp.top_10_percent OR s.Exam_score <= sp.bottom_10_percent
)
SELECT 
    s.student_id, s.sleep_hours, s.motivation_level, s.physical_activity, s.learning_desabilities, s.gender,
    sc.Exam_score, sc.attendance, sc.tutoring_sessions, sc.teacher_quality, sc.school_type, sc.distance_from_home, sc.Previous_scores,
    f.parental_involvement, f.family_income, f.parental_education_level,
    af.hours_studied, af.access_to_resources, af.extraurricular_activities, af.internet_access, af.peer_influence
FROM selected_students ss
JOIN student s ON ss.student_id = s.student_id
JOIN school sc ON ss.student_id = sc.student_id
JOIN family f ON ss.student_id = f.student_id
JOIN afactors af ON ss.student_id = af.student_id
ORDER BY sc.Exam_score DESC;