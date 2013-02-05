CREATE TABLE IF NOT EXISTS test (
id int NOT NULL,
course_professor_id int NOT NULL,
name text NOT NULL, 
PRIMARY KEY(id)/*,
CONSTRAINT test_in_course UNIQUE (course_professor_id, name)*/
);

CREATE TABLE IF NOT EXISTS person (
id int NOT NULL,
name text NOT NULL,
graduation date,
gpa decimal(3,2),
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS major (
id int NOT NULL,
department_id int NOT NULL,
name text NOT NULL,
PRIMARY KEY(id)/*,
CONSTRAINT department_name UNIQUE (department_id, name)*/
);

CREATE TABLE IF NOT EXISTS department (
id int NOT NULL,
name text NOT NULL,
PRIMARY KEY(id)/*,
CONSTRAINT department_name UNIQUE (name)*/
);

CREATE TABLE IF NOT EXISTS course (
id int NOT NULL,
department_id int NOT NULL,
course_number int NOT NULL,
name text NOT NULL,
PRIMARY KEY(id)/*,
CONSTRAINT department_course_number UNIQUE (department_id, course_number)*/
);

CREATE TABLE IF NOT EXISTS professor (
id int NOT NULL,
name text NOT NULL,
PRIMARY KEY (id)/*,
CONSTRAINT professor_name UNIQUE (name)*/
);

CREATE TABLE IF NOT EXISTS person_major (
id int NOT NULL,
person_id int NOT NULL,
major_id int NOT NULL,
PRIMARY KEY (id)/*,
CONSTRAINT person_major_unique UNIQUE (person_id, major_id)*/
);

CREATE TABLE IF NOT EXISTS course_professor (
id int NOT NULL,
course_id int NOT NULL,
professor_id int NOT NULL,
quarter date NOT NULL,
PRIMARY KEY (id)/*,
CONSTRAINT course_professor_quarter UNIQUE (course_id, professor_id, quarter)*/
);

CREATE TABLE IF NOT EXISTS course_professor_person (
id int NOT NULL,
course_professor_id int NOT NULL,
person_id int NOT NULL,
gpa decimal(3,2),
PRIMARY KEY (id)/*,
CONSTRAINT course_professor_person_unique UNIQUE (course_professor_id, person_id)*/
);

CREATE TABLE IF NOT EXISTS test_person (
id int NOT NULL,
test_id int NOT NULL,
person_id int NOT NULL,
grade decimal(4,2),
PRIMARY KEY (id)/*,
CONSTRAINT test_person_unique UNIQUE (test_id, person_id)*/
);

ALTER TABLE test
ADD CONSTRAINT test_course_professor
FOREIGN KEY (course_professor_id)
REFERENCES course_professor (id);

ALTER TABLE major
ADD CONSTRAINT major_department
FOREIGN KEY (department_id)
REFERENCES department (id);

ALTER TABLE course
ADD CONSTRAINT course_department
FOREIGN KEY (department_id)
REFERENCES department (id);

ALTER TABLE person_major
ADD CONSTRAINT person_major_person_id
FOREIGN KEY (person_id)
REFERENCES person (id);

ALTER TABLE person_major
ADD CONSTRAINT person_major_major_id
FOREIGN KEY (major_id)
REFERENCES major (id);

ALTER TABLE course_professor
ADD CONSTRAINT course_professor_course_id
FOREIGN KEY (course_id)
REFERENCES course (id);

ALTER TABLE course_professor
ADD CONSTRAINT course_professor_professor_id
FOREIGN KEY (professor_id)
REFERENCES professor (id);

ALTER TABLE course_professor_person
ADD CONSTRAINT course_professor_course_professor_id
FOREIGN KEY (course_professor_id)
REFERENCES course_professor (id);

ALTER TABLE course_professor_person
ADD CONSTRAINT course_professor_person_id
FOREIGN KEY (person_id)
REFERENCES person (id);

ALTER TABLE test_person
ADD CONSTRAINT test_person_test_id
FOREIGN KEY (test_id)
REFERENCES test (id);

ALTER TABLE test_person
ADD CONSTRAINT test_person_person_id
FOREIGN KEY (person_id)
REFERENCES person (id);
