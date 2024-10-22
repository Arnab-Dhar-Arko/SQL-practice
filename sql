-- Create a table for students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Email VARCHAR(100)
);

-- Create a table for attendance records
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    StudentID INT,
    Date DATE,
    Status VARCHAR(10), -- 'Present' or 'Absent'
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Create a table for assignments
CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    StudentID INT,
    AssignmentName VARCHAR(100),
    SubmissionDate DATE,
    Status VARCHAR(20), -- 'Submitted', 'Pending', etc.
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Create a table for grades
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    StudentID INT,
    Subject VARCHAR(50),
    Grade CHAR(2), -- e.g., 'A', 'B', 'C', etc.
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
