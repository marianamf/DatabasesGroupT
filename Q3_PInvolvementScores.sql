SELECT f.parental_involvement, sc.Exam_score
FROM family f
JOIN school sc ON f.student_id = sc.student_id;