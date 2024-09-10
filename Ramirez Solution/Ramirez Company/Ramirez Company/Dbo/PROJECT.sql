CREATE TABLE [dbo].[PROJECT]
(
	[Pname] VARCHAR(15) NULL , 
    [Pnumber] INT NOT NULL, 
    [Plocation] NCHAR(10) NOT NULL, 
    [Dnum] INT NULL, 
    PRIMARY KEY ([Pnumber]),
    UNIQUE ([Pname]), 
    CONSTRAINT [PK_PROJECT_DEPARTMENT] FOREIGN KEY ([Dnum]) REFERENCES [DEPARTMENT]([Dnumber])
)
