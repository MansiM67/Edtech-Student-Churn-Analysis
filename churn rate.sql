CREATE database student_dropoff_db;
USE student_dropoff_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    country VARCHAR(50),
    state VARCHAR(50),
    education_level VARCHAR(50),
    employment_status VARCHAR(50),
    industry VARCHAR(100),
    years_of_experience FLOAT,
    course_name VARCHAR(100),
    course_category VARCHAR(50),
    course_fee FLOAT,
    engagement_score FLOAT,
    progress_percent FLOAT,
    enrollment_date DATE,
    last_active_date DATE,
    assignment_submission_rate FLOAT,
    attendance_rate FLOAT,
    satisfaction_rating FLOAT,
    dropout_probability FLOAT,
    dropout_status VARCHAR(20)
);

set global local_infile=ON;
load data local infile 'C:/Users/ASUS/Downloads/learnedge_student_course_data.csv' into table students
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

select*
from students;

SELECT * FROM students LIMIT 10;
SHOW COLUMNS FROM students;

SELECT 
    COUNT(*) AS total_rows,
    SUM(student_name IS NULL) AS null_student_name,
    SUM(age IS NULL) AS null_age,
    SUM(gender IS NULL) AS null_gender,
    SUM(country IS NULL) AS null_country,
    SUM(state IS NULL) AS null_state,
    SUM(education_level IS NULL) AS null_education_level,
    SUM(employment_status IS NULL) AS null_employment_status,
    SUM(industry IS NULL) AS null_industry,
    SUM(years_of_experience IS NULL) AS null_experience,
    SUM(course_name IS NULL) AS null_course_name,
    SUM(course_category IS NULL) AS null_course_category,
    SUM(course_fee IS NULL) AS null_course_fee,
    SUM(engagement_score IS NULL) AS null_engagement,
    SUM(progress_percent IS NULL) AS null_progress,
    SUM(enrollment_date IS NULL) AS null_enrollment,
    SUM(last_active_date IS NULL) AS null_last_active,
    SUM(assignment_submission_rate IS NULL) AS null_assignment,
    SUM(attendance_rate IS NULL) AS null_attendance,
    SUM(satisfaction_rating IS NULL) AS null_satisfaction,
    SUM(dropout_probability IS NULL) AS null_dropout_prob,
    SUM(dropout_status IS NULL) AS null_dropout_status
FROM students;
