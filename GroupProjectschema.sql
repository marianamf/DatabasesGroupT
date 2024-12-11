DROP TABLE IF EXISTS Student, Family, School, AFactors;

CREATE TABLE Student(
	Student_ID int PRIMARY KEY,
	Sleep_Hours int,
	Motivation_Level varchar(24),
	Physical_Activity int,	
	Learning_Desabilities varchar(24),
	Gender varchar(24)	
);
	
CREATE TABLE Family(
	Family_ID int PRIMARY KEY,
	Student_ID int REFERENCES Student,
	Parental_Involvement varchar(24),
	Family_Income varchar(24),
	Parental_education_Level varchar(128)
);

CREATE TABLE School(
	School_ID int PRIMARY KEY,
	Student_ID int REFERENCES Student,
	Attendance int,
	Tutoring_sessions int,
	Teacher_Quality varchar(24),
	School_Type varchar(24),
	Distance_from_home varchar(24),
	Previous_scores int,	
	Exam_score int
	
);

CREATE TABLE AFactors(
	AF_ID int PRIMARY KEY,
	Student_ID int REFERENCES Student,
	Hours_Studied int,
	Access_to_Resources varchar(24),
	Extraurricular_Activities varchar(24),
	Internet_Access varchar(24),
	Peer_Influence varchar(24)
);
