-- Create the Employee table
CREATE TABLE Empl (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10, 2),
    comm DECIMAL(10, 2),
    deptno INT
);



-- Insert sample data into the Employee table
INSERT INTO Empl VALUES (8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20);
INSERT INTO Empl VALUES (8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30);
INSERT INTO Empl VALUES (8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30);
INSERT INTO Empl VALUES (8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20);
INSERT INTO Empl VALUES (8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30);
INSERT INTO Empl VALUES (8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30);
INSERT INTO Empl VALUES (8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10);
INSERT INTO Empl VALUES (8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20);
INSERT INTO Empl VALUES (8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10);
INSERT INTO Empl VALUES (8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);

--select all table VALUES
SELECT * FROM Empl;

-- A. Display EName and Sal of employees whose salary is greater than or equal to 2200
SELECT ename, sal FROM Empl WHERE sal >= 2200;


-- B. Display details of employees who are not getting commission
SELECT * FROM Empl WHERE comm IS NULL;

-- C. Display employee name and salary of those employees who don't have their salary in the range of 2500 to 4000
SELECT ename, sal FROM Empl WHERE sal NOT BETWEEN 2500 AND 4000;

-- D. Display the name, job title, and salary of employees who don't have a manager
SELECT ename, job, sal FROM Empl WHERE mgr IS NULL;

-- E. Display the name of an employee whose name contains "A" as the third alphabet
SELECT ename FROM Empl WHERE SUBSTR(ename, 3, 1) = 'A';

-- F. Display the name of an employee whose name contains "T" as the last alphabet
SELECT ename FROM Empl WHERE ename LIKE '%T';



