CREATE TABLE [dbo].[DEPENDENT]
(
	[Essn] CHAR(9) NOT NULL , 
    [Dependent_name] VARCHAR(15) NOT NULL, 
    [Sex] CHAR(1) NULL, 
    [Bdate] DATE NULL, 
    [Relationship] VARCHAR(8) NULL, 
    PRIMARY KEY ([Dependent_name], [Essn]), 
    CONSTRAINT [PK_DEPENDENT_EMPLOYEE] FOREIGN KEY ([Essn]) REFERENCES [EMPLOYEE]([Ssn])
)
