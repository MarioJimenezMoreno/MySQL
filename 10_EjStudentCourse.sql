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



