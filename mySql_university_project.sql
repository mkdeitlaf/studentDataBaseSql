use university_sql_project;

SELECT * 
FROM university_students;

#INSERTING IN USERS

INSERT INTO university_students(studentName)
VALUE ('John Smith');

INSERT INTO university_students(studentName)
VALUE ('Kelly Johnson');

INSERT INTO university_students(studentName)
VALUE ('Peter Piper');

INSERT INTO university_students(studentName)
VALUE ('Stephanie Williams');

INSERT INTO university_students(studentName)
VALUE ('Sue Lee');

INSERT INTO university_students(studentName)
VALUE ('Leann Kay');

INSERT INTO university_students(studentName)
VALUE ('Robert Dean');

INSERT INTO university_students(studentName)
VALUE ('Justin Kahn');

INSERT INTO university_students(studentName)
VALUE ('Jane Doe');

INSERT INTO university_students(studentName)
VALUE ('Esther Vaughn');

SELECT *
FROM university_professors;

#ENTERING PROFESSORS NAME

INSERT INTO university_professors(professors_name)
VALUE ('Lauren Comma');

INSERT INTO university_professors(professors_name)
VALUE ('Beau Decimal');

INSERT INTO university_professors(professors_name)
VALUE ('William Shakespear');

INSERT INTO university_professors(professors_name)
VALUE ('Albert Einstein');

SELECT *
FROM student_course_grade;

#ENTERING IN GRADES

INSERT INTO student_course_grade(grade_given)
VALUE(4.00);

INSERT INTO student_course_grade(grade_given)
VALUE(3.50);

INSERT INTO student_course_grade(grade_given)
VALUE(3.00);

INSERT INTO student_course_grade(grade_given)
VALUE(2.50);

INSERT INTO student_course_grade(grade_given)
VALUE(2.00);

INSERT INTO student_course_grade(grade_given)
VALUE(1.50);

INSERT INTO student_course_grade(grade_given)
VALUE(1.00);

INSERT INTO student_course_grade(grade_given)
VALUE(.50);


SELECT * 
FROM university_courses;

#GIVING COURSES ID

INSERT INTO university_courses(course_name)
VALUE ('MATH 1010');

INSERT INTO university_courses(course_name)
VALUE ('MATH 4550');

INSERT INTO university_courses(course_name)
VALUE ('ENGLISH 3500');

INSERT INTO university_courses(course_name)
VALUE ('DRAMA 2150');

INSERT INTO university_courses(course_name)
VALUE ('SCIENCE 3750');

#combined data

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,5,1);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,1,2);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,4,4);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,2,6);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,3,8);




INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,11,5,1);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,11,1,2);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,11,4,4);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,11,2,6);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,11,3,8);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,11,1,1);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,11,1,10);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,12,3,9);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,12,2,7);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,12,3,3);


INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(3,14,5,1);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(3,14,1,2);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(3,14,4,4);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(3,14,2,6);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(3,14,7,8);


INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,5,1);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(2,11,1,9);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,1,2);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,4,4);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,2,6);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,3,8);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,2,6);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(1,13,3,8);


INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(4,15,1,4);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(4,15,2,6);

INSERT INTO university_master_record(master_professor_id,master_course_id,master_grade_id,master_student_id)
VALUE(4,15,3,8);


SELECT s.studentName, p.professors_name, c.course_name, g.grade_given
FROM university_master_record m
JOIN university_students s
ON m.master_student_id = s.student_id
JOIN university_professors p
ON m.master_professor_id = p.professor_id
JOIN university_courses c
ON m.master_course_id = c.course_id
JOIN student_course_grade g
ON m.master_grade_id = g.grade_id;

#The average grade given by each professor

SELECT (s.studentName, p.professors_name, c.course_name, g.grade_given)
FROM university_master_record m
JOIN university_students s
ON m.master_student_id = s.student_id
JOIN university_professors p
ON m.master_professor_id = p.professor_id
JOIN university_courses c
ON m.master_course_id = c.course_id
JOIN student_course_grade g
ON m.master_grade_id = g.grade_id;


SELECT m.master_professor_id, p.professor_id, p.professors_name, AVG(master_grade_ID)
FROM university_master_record m
JOIN university_professors p
ON m.master_professor_id = p.professor_id
GROUP BY master_professor_id;

#ANSWER For professor with average grade in class
#1	2.9167
#2	2.5000
#3	3.8000
#4	2.0000

#THE TOP GRADES FOR EACH STUDENT

SELECT m.master_student_id as Student, s.student_id, s.studentName, Min(master_grade_id) as topGradeGiven
FROM university_master_record m
JOIN university_students s
ON s.student_id = m.master_student_id
GROUP BY master_student_id;

SELECT * 
FROM university_master_record;

#Group students by the courses that they are enrolled in

	#GROUPED STUDENT BY MATH1010 CLASS
SELECT m.master_course_id, c.course_id, c.course_name, m.master_student_id AS totalNumberOfStudents, s.student_id, s.studentName
FROM university_master_record m
JOIN university_courses c
ON m.master_course_id = c.course_id
JOIN university_students s
ON m.master_student_id = s.student_id
WHERE m.master_course_id = 11;
	
    #GROUPED STUDENT BY MATH4550
SELECT m.master_course_id, c.course_id, c.course_name, m.master_student_id AS totalNumberOfStudents, s.student_id, s.studentName
FROM university_master_record m
JOIN university_courses c
ON m.master_course_id = c.course_id
JOIN university_students s
ON m.master_student_id = s.student_id
WHERE m.master_course_id = 12;

	#GROUPED STUDENTS BY ENGLISH 3500 CLASS
SELECT m.master_course_id, c.course_id, c.course_name, m.master_student_id AS totalNumberOfStudents, s.student_id, s.studentName
FROM university_master_record m
JOIN university_courses c
ON m.master_course_id = c.course_id
JOIN university_students s
ON m.master_student_id = s.student_id
WHERE m.master_course_id = 13;

	#GROUPED STUDENTS BY DRAMA2150 CLASS
SELECT m.master_course_id, c.course_id, c.course_name, m.master_student_id AS totalNumberOfStudents, s.student_id, s.studentName
FROM university_master_record m
JOIN university_courses c
ON m.master_course_id = c.course_id
JOIN university_students s
ON m.master_student_id = s.student_id
WHERE m.master_course_id = 14;

	#GROUPED STUDENT BY COURSE SCIENCE3750
SELECT m.master_course_id, c.course_id, c.course_name, m.master_student_id AS totalNumberOfStudents, COUNT(s.student_id), s.studentName
FROM university_master_record m
JOIN university_courses c
ON m.master_course_id = c.course_id
JOIN university_students s
ON m.master_student_id = s.student_id
WHERE m.master_course_id = 15;


#Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course

SELECT m.master_course_id, c.course_id, c.course_name, m.master_grade_id, g.grade_id, AVG(g.grade_given) AS GPA
FROM university_master_record m
JOIN university_courses c
ON m.master_course_id = c.course_id
JOIN student_course_grade g
ON m.master_grade_id = g.grade_id
GROUP BY c.course_id
ORDER BY AVG(g.grade_given) ASC;

#Finding which student and professor have the most courses in common

SELECT DISTINCT 
m.master_professor_id, p.professor_id, 
p.professors_name, coalesce(m.master_student_id) AS StudentsID, 
s.studentName, m.master_course_id, COUNT(s.student_id) AS studentProfessorCommonality
FROM university_master_record m
JOIN university_professors p
ON m.master_professor_id = p.professor_id
JOIN university_students s
ON m.master_student_id = s.student_id
GROUP BY coalesce(s.student_id), p.professor_id
ORDER BY COUNT(s.student_id) DESC;


SELECT DISTINCT *
FROM university_master_record
ORDER BY master_professor_id ASC;