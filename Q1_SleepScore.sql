SELECT s.sleep_hours, sc.Exam_score
FROM student s
JOIN school sc ON s.student_id = sc.student_id;
