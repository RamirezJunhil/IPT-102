CREATE TABLE [dbo].[DEPARTMENT]
(
	[Dname] VARCHAR(15) NOT NULL , 
    [Dnumber] INT NOT NULL, 
    [Mgr_ssn] NCHAR(10) NOT NULL, 
    [Mgr_start_date] DATE NULL, 
    PRIMARY KEY ([Dnumber]),
    UNIQUE ([Dname]),
    CONSTRAINT[PK_DEPARTMEN T_EMPLOYEE] FOREIGN KEY ([Mgr_ssn]) REFERENCES [EMPLOYEE]([Ssn])
)
