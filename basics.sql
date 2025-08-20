-- Data types
-- INT -- whole numbers
-- DECIMAL(M,N) -- decimal numbers exact value
-- VARCHAR(1) -- string of text of length 1
-- BLOB -- binary large object, stores large data
-- DATE -- 'yyyy-mm-dd'
-- TIMESTAMP -- 'yyy-mm-dd hh:mm:ss' - used for recording

-- defining database schema
-- CREATE TABLE student (
--     student_id INT PRIMARY KEY,
--     name VARCHAR(20) NOT NULL,
--     major VARCHAR(20) UNIQUE
-- );

CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided'
);



-- DESCRIBE TABLE student;

DROP TABLE student;
-- -- 3 total digits 2, digits after decimal point
-- ALTER TABLE student ADD gpa DECIMAL(3,2);

-- ALTER TABLE student DROP COLUMN gpa;

-- Inserting data
INSERT INTO student(name, major) VALUES ('Jack', 'Biology');
INSERT INTO student(name, major) VALUES ('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES ('Mike', 'Computer Science');
INSERT INTO student(name, major) VALUES ('Alice', 'Computer Science');
INSERT INTO student(name, major) VALUES ('Ally', 'undecided');

-- Update and delete rows in a database
-- UPDATE student
-- SET major = 'Biochemistry' 
-- SET major = 'undecided'
-- WHERE major = 'Computer Science'
-- WHERE major = 'Bio' OR major = 'Chemistry';
-- WHERE student_id = 1;

-- DELETE FROM student
-- WHERE name = 'Ally' and major = 'undecided';

-- Basic Queries
-- SELECT * FROM student;
SELECT *
FROM student
-- ORDER BY major, student_id DESC
-- LIMIT 2;
-- WHERE major = 'Sociology' OR name = 'Jack'
-- WHERE major <> 'Sociology'
-- WHERE student_id <= 3
-- <, >, <=, >=, =, <>, AND, OR

-- WHERE name IN ('Claire', 'Kate', 'Mike');
WHERE major IN ('Biology', 'Chemistry') AND student_id < 2;

-- Company database info
