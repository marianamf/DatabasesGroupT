SELECT 
    s.sleep_hours, s.motivation_level, s.physical_activity, s.learning_desabilities, 
    sc.attendance, sc.tutoring_sessions, sc.teacher_quality, sc.school_type, sc.distance_from_home, sc.Previous_scores, sc.Exam_score,
    f.parental_involvement, f.family_income, f.parental_education_level,
    af.hours_studied, af.access_to_resources, af.extraurricular_activities, af.internet_access, af.peer_influence
FROM student s
JOIN school sc ON s.student_id = sc.student_id
JOIN family f ON s.student_id = f.student_id
JOIN afactors af ON s.student_id = af.student_id;