ALTER TABLE test
DROP FOREIGN KEY test_course_professor;

ALTER TABLE major
DROP FOREIGN KEY major_department;

ALTER TABLE course
DROP FOREIGN KEY course_department;

ALTER TABLE person_major
DROP FOREIGN KEY person_major_person_id;

ALTER TABLE person_major
DROP FOREIGN KEY person_major_major_id;

ALTER TABLE course_professor
DROP FOREIGN KEY course_professor_course_id;

ALTER TABLE course_professor
DROP FOREIGN KEY course_professor_professor_id;

ALTER TABLE course_professor_person
DROP FOREIGN KEY course_professor_course_professor_id;

ALTER TABLE course_professor_person
DROP FOREIGN KEY course_professor_person_id;

ALTER TABLE test_person
DROP FOREIGN KEY test_person_test_id;

ALTER TABLE test_person
DROP FOREIGN KEY test_person_person_id;

DROP TABLE IF EXISTS course_professor_person;
DROP TABLE IF EXISTS course_professor;
DROP TABLE IF EXISTS person_major;
DROP TABLE IF EXISTS professor;
DROP TABLE IF EXISTS major;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS test;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS test_person;

