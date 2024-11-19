-- Display all records from the courses table
SELECT * FROM courses;
-- Concatenate Course Name and Semester
SELECT course_name || ' - ' || semester AS course_info 
FROM courses;

-- Display the first 10 records from the assignments table
SELECT * FROM assignments
LIMIT 10;

-- Count the number of courses in the courses table
SELECT count(*) AS course_count 
FROM courses;

-- Find the earliest due date in the assignments table
SELECT min(due_date) AS earliest_due_date 
FROM assignments;

-- Display courses where the course name starts with 'Intro'
SELECT * 
FROM courses
WHERE course_name LIKE 'Intro%';

-- Display incomplete assignments ordered by due date
SELECT * 
FROM assignments
WHERE status != 'Completed'
ORDER BY due_date;
