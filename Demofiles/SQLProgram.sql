
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    allowance DECIMAL(10, 2)
);


INSERT INTO students (id, name, position, allowance) VALUES
(1, 'Juan', 'CS STUD', 60.00),
(2, 'Dela', 'WEB STUD', 70.00),
(3, 'Cruz', 'NET STUD', 1000.00);


SELECT * FROM students;