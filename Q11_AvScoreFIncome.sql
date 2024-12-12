SELECT f.family_income, AVG(sc.Exam_score) AS average_score
FROM family f
JOIN school sc ON f.student_id = sc.student_id
GROUP BY f.family_income
ORDER BY f.family_income;