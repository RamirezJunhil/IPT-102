USE RamirezCompany
GO

DROP TABLE IF EXISTS dbo.EMPLOYEE;
GO

CREATE TABLE dbo.EMPLOYEE
(
    [Fname]     VARCHAR(15) NOT NULL, 
    [Minit]     CHAR(1),    
    [Lname]     VARCHAR(15) NOT NULL,
    [Ssn]       CHAR(9)     NOT NULL,
    [Bdate]     DATE,
    [Address]   VARCHAR(30),
    [Sex]       CHAR(1),    
    [Salary]    DECIMAL(10,2),
    [Super_ssn] CHAR(9),
    [Dno]       INT         NOT NULL,
    CONSTRAINT PK_EMPLOYEE PRIMARY KEY(Ssn) 
);
GO

CREATE NONCLUSTERED INDEX IX_EMPLOYEE_Name ON dbo.EMPLOYEE ([Lname] ASC, [Fname] ASC);
GO

INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex,  Super_ssn, Dno)
VALUES 
(N'JUNHIL', N'1', N'RAMIREZ', N'123456789', '2003-07-01', N'ALAMADA, MIDSAYAP, COT', N'M', N'1234', 40);
GO

SELECT * FROM EMPLOYEE;
GO

UPDATE dbo.EMPLOYEE
SET 
    Address = 'NEW ADDRESS, ALAMADA, COT' 
WHERE Ssn = '1234';
GO

SELECT * FROM EMPLOYEE;
GO

DELETE FROM dbo.EMPLOYEE WHERE Ssn = '1234';
GO

SELECT * FROM EMPLOYEE;
GO
