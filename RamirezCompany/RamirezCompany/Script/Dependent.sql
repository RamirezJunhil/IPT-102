USE RamirezCompany;
GO

INSERT INTO dbo.DEPENDENT (Essn, Dependent_name, Sex, Bdate, Relationship)
VALUES
('111', 'DJ', 'M', '2003-03-01', 'SINGLE'),
('122', 'MARK', 'M', '2002-05-01', 'MARRIED'),
('123', 'BRYAN', 'M', '2003-02-01', 'DIVORCED'),
('124', 'JOSHUA', 'M', '2004-03-01', 'SINGLE'),
('125', 'BRYLE', 'M', '2005-01-01', 'SEPARATED');

SELECT * FROM dbo.DEPENDENT;

DELETE FROM dbo.DEPENDENT;
