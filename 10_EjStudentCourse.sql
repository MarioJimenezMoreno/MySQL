DROP DATABASE IF EXISTS ej10_tablas;
CREATE DATABASE IF NOT EXISTS ej10_tablas;

USE ej10_tablas;

CREATE TABLE student(
student_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(40),
student_age TINYINT UNSIGNED,
student_sex VARCHAR(10)
);

CREATE TABLE teacher(
teacher_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
teacher_name VARCHAR(40)
);

CREATE TABLE course(
course_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(40),
teacher_id INT UNSIGNED,
FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);

CREATE TABLE sc(
student_id INT UNSIGNED,
course_id INT UNSIGNED,
score TINYINT,
FOREIGN KEY (course_id) REFERENCES course(course_id),
FOREIGN KEY (student_id) REFERENCES student(student_id)
);

INSERT INTO student (student_id, student_name, student_age, student_sex) VALUES
(1, 'John Smith', 20, 'Male'),
(2, 'Emily Johnson', 22, 'Female'),
(3, 'Michael Brown', 19, 'Male'),
(4, 'Emma Davis', 21, 'Female'),
(5, 'Matthew Wilson', 18, 'Male'),
(6, 'Olivia Jones', 20, 'Female'),
(7, 'Ethan Martinez', 19, 'Male'),
(8, 'Ava Anderson', 22, 'Female'),
(9, 'Noah Taylor', 21, 'Male'),
(10, 'Sophia Thomas', 18, 'Female'),
(11, 'Daniel Johnson', 19, 'Male'),
(12, 'Sophie Williams', 20, 'Female'),
(13, 'David Thompson', 21, 'Male'),
(14, 'Isabella Davis', 22, 'Female'),
(15, 'Alexander Martinez', 18, 'Male'),
(16, 'Charlotte Wilson', 19, 'Female'),
(17, 'James Anderson', 20, 'Male'),
(18, 'Olivia Brown', 21, 'Female'),
(19, 'Benjamin Taylor', 22, 'Male'),
(20, 'Mia Thomas', 18, 'Female');

INSERT INTO teacher (teacher_id, teacher_name) VALUES
(1, 'Mr. Johnson'),
(2, 'Mrs. Smith'),
(3, 'Mr. Davis'),
(4, 'Mrs. Wilson'),
(5, 'Mr. Anderson'),
(6, 'Mrs. Taylor'),
(7, 'Mr. Brown'),
(8, 'Mrs. Martinez'),
(9, 'Mr. Thomas'),
(10, 'Mrs. Jones');

INSERT INTO course (course_id, course_name, teacher_id) VALUES
(1, 'Mathematics', 2),
(2, 'History', 4),
(3, 'Science', 5),
(4, 'English', 8),
(5, 'Physics', 3),
(6, 'Chemistry', 6),
(7, 'Literature', 1),
(8, 'Geography', 9),
(9, 'Computer Science', 7),
(10, 'Art', 10),
(11, 'Biology', 5),
(12, 'Music', 10),
(13, 'Economics', 8),
(14, 'Physical Education', 2),
(15, 'Psychology', 9),
(16, 'Sociology', 2),
(17, 'Spanish', 2),
(18, 'Programming', 9),
(19, 'Marketing', 1),
(20, 'Engineering', 1);

INSERT INTO sc (student_id, course_id, score) VALUES
(1, 3, 85),
(2, 8, 92),
(3, 1, 78),
(4, 5, 89),
(5, 2, 93),
(6, 6, 80),
(7, 9, 87),
(8, 4, 95),
(9, 7, 81),
(10, 10, 88),
(11, 4, 88),
(12, 6, 76),
(13, 10, 92),
(14, 3, 85),
(15, 7, 91),
(16, 1, 82),
(17, 9, 89),
(18, 2, 95),
(19, 5, 87),
(20, 8, 83);

/* 1 */
SELECT teacher_id, COUNT(student_id) FROM course 
LEFT JOIN sc ON course.course_id = sc.course_id GROUP BY teacher_id;
/* 2 */
SELECT teacher_id,COUNT(course_id) FROM course GROUP BY teacher_id;
/* 3 */
SELECT student_id, COUNT(course_id) FROM sc GROUP BY student_id;