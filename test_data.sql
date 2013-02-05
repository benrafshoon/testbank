INSERT INTO professor VALUES
(1, 'Nikos Hardavellas'),
(2, 'Ian Horswill'),
(3, 'Russ Joseph');

INSERT INTO department VALUES 
(1, 'Electrical Engineering and Computer Science'),
(2, 'Mechanical Engineering');

INSERT INTO major VALUES
(1, 1, 'Computer Science'),
(2, 1, 'Computer Engineering'),
(3, 1, 'Electrical Engineering'),
(4, 2, 'Mechanical Engineering'),
(5, 2, 'Manufacturing Engineering');

INSERT INTO course VALUES
(1, 1, 303, 'Advanced Digital Logic Design'),
(2, 1, 205, 'Computer Systems Software'), 
(3, 2, 241, 'Thermodynamics');

INSERT INTO course_professor VALUES
(1, 1, 1, '2012-04-01'),
(2, 2, 3, '2012-01-01');

INSERT INTO test VALUES 
(1, 1, 'Midterm'),
(2, 1, 'Final'),
(3, 2, 'Final');

INSERT INTO person VALUES 
(1, 'Ben Rafshoon', '2014-06-01', '3.95'),
(2, 'John Smith', '2015-06-01', '3.5'),
(3, 'Drew Staples', '2014-06-01, '3.3');

INSERT INTO person_major VALUES 
(1, 1, 2),
(2, 2, 1),
(3, 2, 5),
(4, 3, 4);