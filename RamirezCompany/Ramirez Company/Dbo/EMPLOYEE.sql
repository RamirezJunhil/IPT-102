CREATE TABLE [dbo].[EMPLOYEE]
(
	[Fname] VARCHAR(15) NOT NULL , 
    [Minit] CHAR NULL, 
    [Lname] VARCHAR(15) NOT NULL, 
    [Ssn] CHAR(9) NOT NULL, 
    [Bdate] DATE NULL, 
    [Adress] VARCHAR(30) NULL, 
    [Sex] CHAR NULL, 
    [Salary] DECIMAL(10, 2) NULL, 
    [Super_ssn] CHAR(1) NULL, 
    [Dno] INT NOT NULL,

    CONSTRAINT [PK_EMPLOYEE_Ssn]
    PRIMARY KEY CLUSTERED ([Ssn])
);
GO
   -- Create a non clustered index in the line Fname and Lname
   CREATE NONCLUSTERED INDEX [IX_EMPLOYEE_NAME]
   ON [Dbo].[EMPLOYEE]([Lname]) ASC, [Fname] ASC;