USE [master];
GO

-- Drop the existing database if it exists to avoid conflicts
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'BaseballGameDb')
BEGIN
    DROP DATABASE BaseballGameDb;
END
GO

-- Create Database using default file locations
CREATE DATABASE BaseballGame;
GO

USE BaseballGame;
GO

-- Drop Table if it Exists
IF OBJECT_ID(N'dbo.BaseballGame', N'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.BaseballGame;
END
GO

-- Create Table with Constraints
CREATE TABLE dbo.BaseballGame
(
    GameID NVARCHAR(10) NOT NULL,  -- Primary Key Constraint
    TeamName NVARCHAR(15) NOT NULL,  -- Not Null Constraint
    GameDate DATE NOT NULL,  -- Not Null Constraint

    CONSTRAINT PK_BaseballGame_GameID PRIMARY KEY CLUSTERED (GameID)  -- Primary Key Constraint
);
-- Create a unique non-clustered index on the TeamName field
CREATE UNIQUE NONCLUSTERED INDEX UX_TeamName ON dbo.BaseballGame ([TeamName]Asc)
WHERE TeamNAme is not null;
GO

SELECT Column_Name, Data_Type 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE Table_Name = 'BaseballGame'; 
GO


-- Insert records into the BaseballGame table
BEGIN
    INSERT INTO dbo.BaseballGame (GameID, TeamName, GameDate)
    VALUES
        ('1', 'CCIS', '2024-11-21'),
        ('2', 'CBA', '2024-11-21'),
        ('3', 'CTE', '2024-11-21')
END
GO

-- Select all records from the BaseballGame table
SELECT * FROM dbo.BaseballGame;
GO

UPDATE Dbo.BaseballGame
SET GameDate = '2024-11-22'
GO

SELECT * FROM Dbo.BaseballGame
WHERE GameID = '1'
GO

-- Delete the record from the BaseballGame table where GameID is '3'
DELETE FROM dbo.BaseballGame
WHERE GameID = '3'
GO
SELECT * FROM dbo.BaseballGame

TRUNCATE TABLE dbo.BaseballGame
SELECT * FROM dbo.BaseballGame

