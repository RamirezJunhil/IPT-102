    USE RamirezCompany;
GO

-- Drop tables if they exist
DROP TABLE IF EXISTS dbo.PROJECT;
DROP TABLE IF EXISTS dbo.DEPARTMENT;
GO

-- Create DEPARTMENT table
CREATE TABLE dbo.DEPARTMENT (
    Dnumber INT NOT NULL PRIMARY KEY,
    Dname NVARCHAR(50) NOT NULL
);
GO

-- Create PROJECT table
CREATE TABLE dbo.PROJECT (
    Pname VARCHAR(15) NOT NULL,
    Pnumber INT NOT NULL,
    Plocation VARCHAR(15),
    Dnum INT NOT NULL,
    CONSTRAINT PK_PROJECT PRIMARY KEY (Pnumber),
    CONSTRAINT UI_PROJECT_Pname UNIQUE (Pname)
);
GO

-- Create non-clustered index on Plocation
CREATE NONCLUSTERED INDEX IX_PROJECT_Plocation ON dbo.PROJECT (Plocation ASC);
GO

-- Insert initial data into DEPARTMENT table
INSERT INTO dbo.DEPARTMENT (Dnumber, Dname)
VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance');
GO

-- Insert data into PROJECT table
INSERT INTO dbo.PROJECT (Pname, Pnumber, Plocation, Dnum)
VALUES (N'DJ', 18, N'ALAMADA', 1);
GO

-- Select all records from PROJECT
SELECT * FROM dbo.PROJECT;
GO

-- UPDATE RECORD IN PROJECT
UPDATE dbo.PROJECT
SET Plocation = 'COTABATO', Dnum = 2
WHERE Pnumber = 18;
GO


-- DELETE RECORD FROM PROJECT
DELETE FROM dbo.PROJECT
WHERE Pnumber = 18;
GO


-- LEFT JOIN BETWEEN DEPARTMENT and PROJECT
SELECT D.Dname, D.Dnumber, P.Pname, P.Plocation
FROM dbo.DEPARTMENT D
LEFT JOIN dbo.PROJECT P ON D.Dnumber = P.Dnum;
GO

-- RIGHT JOIN BETWEEN DEPARTMENT and PROJECT
SELECT D.Dname, D.Dnumber, P.Pname, P.Plocation
FROM dbo.DEPARTMENT D
RIGHT JOIN dbo.PROJECT P ON D.Dnumber = P.Dnum;
GO

-- CROSS JOIN BETWEEN DEPARTMENT and PROJECT
SELECT D.Dname, D.Dnumber, P.Pname, P.Plocation
FROM dbo.DEPARTMENT D
CROSS JOIN dbo.PROJECT P;
GO


