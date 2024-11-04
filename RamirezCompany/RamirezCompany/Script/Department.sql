USE RamirezCompany;
GO

CREATE TABLE DEPARTMENT (
    Dname VARCHAR(50),
    Dnumber INT,
    Mgr_ssn CHAR(9),
    Mgr_start_date DATE
);
GO

INSERT INTO DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
VALUES
('CounterFlow', 1, '141', '2021-06-16'),
('CounterFlow', 2, '142', '2021-06-16'),
('CounterFlow', 3, '143', '2021-06-16'),
('CounterFlow', 4, '143', '2021-06-16');

SELECT * FROM dbo.DEPARTMENT;

DELETE FROM dbo.DEPARTMENT;
