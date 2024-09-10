CREATE TABLE [dbo].[DEPT_LOCATIONS]
(
	[Dnumber] INT NOT NULL , 
    [Dlocation] VARCHAR(15) NOT NULL, 
    PRIMARY KEY ([Dnumber], [Dlocation]), 
    CONSTRAINT [FK_DEPT_LOCATIONS_EMPLOYEE] FOREIGN KEY ([Dnumber]) REFERENCES [DEPARTMENT]([Dnumber])
)
