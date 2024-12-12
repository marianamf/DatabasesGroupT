SELECT Exam_score, COUNT(student_id) AS student_count
FROM school
GROUP BY Exam_score
ORDER BY Exam_score ASC;