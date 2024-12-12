SELECT f.family_income, sc.Exam_score
FROM family f
JOIN school sc ON f.student_id = sc.student_id;