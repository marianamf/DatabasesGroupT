
COPY Student FROM '/private/tmp/EXGP/SPF_Student.csv'
DELIMITER ';' 
CSV HEADER;

COPY School FROM '/private/tmp/EXGP/SPF_School.csv'
DELIMITER ';' 
CSV HEADER;

COPY Family FROM '/private/tmp/EXGP/SPF_Family.csv'
DELIMITER ';' 
CSV HEADER;

COPY AFactors FROM '/private/tmp/EXGP/SPF_AFactors.csv'
DELIMITER ';' 
CSV HEADER;

/* The path used for the CSV files was a tmp one, working around permission issues in MacOS. The ingestion worked fine after this decision. */