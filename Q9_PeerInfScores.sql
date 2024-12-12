SELECT af.peer_influence, sc.Exam_score
FROM afactors af
JOIN school sc ON af.student_id = sc.student_id;