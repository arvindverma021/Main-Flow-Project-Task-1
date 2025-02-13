-- Creating Database
CREATE DATABASE StudentManagement;
USE StudentManagement;


-- Creating the Student Table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);


-- Now Inserting data into table with sample data
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES 
('Aryan Kumar', 'M', 14, 'A', 95, 88, 90),
('Naina Singh', 'F', 15, 'B', 78, 82, 80),
('Ravi Sharma', 'M', 13, 'C', 65, 70, 72),
('Priya Verma', 'F', 14, 'A', 88, 90, 85),
('Manish Patel', 'M', 15, 'B', 80, 75, 78),
('Sakshi Gupta', 'F', 13, 'A', 92, 85, 88),
('Ankit Joshi', 'M', 14, 'C', 70, 68, 65),
('Meera Reddy', 'F', 15, 'B', 85, 80, 82),
('Rahul Mishra', 'M', 13, 'A', 90, 92, 94),
('Sneha Das', 'F', 14, 'C', 68, 70, 72);


-- Now displaying all students and their details :
SELECT *FROM Students;


-- Now calculating the average scores for each subjects :
SELECT 
    AVG(MathScore) AS AvgMathScore, 
    AVG(ScienceScore) AS AvgScienceScore, 
    AVG(EnglishScore) AS AvgEnglishScore 
FROM Students;


-- Now finding the student with the highest total score across total subjects :
SELECT 
    StudentID, Name, 
    (MathScore + ScienceScore + EnglishScore) AS TotalScore 
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;


-- Count the number of students in each grade to observe grade distributions :
SELECT Grade, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY Grade;


-- Average score for male and female students:
SELECT 
    Gender,
    AVG(MathScore) AS AvgMathScore, 
    AVG(ScienceScore) AS AvgScienceScore, 
    AVG(EnglishScore) AS AvgEnglishScore 
FROM Students
GROUP BY Gender;


-- Identifying students whose Math score is above 80:
SELECT * FROM Students
WHERE MathScore > 80;


-- Updating the grade of a student with a specific Student ID:
UPDATE Students
SET Grade = 'A'
WHERE StudentID = 3;













