USE [master];
GO

-- Create Database if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Baseball')
BEGIN
    CREATE DATABASE Baseball;
END
GO

USE Baseball;
GO

-- Drop Table if it Exists to avoid conflict
IF OBJECT_ID('dbo.BaseballGame', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.BaseballGame;
END
GO

-- Create Table with Constraints
CREATE TABLE dbo.BaseballGame
(
    GameID INT NOT NULL,  -- Primary Key Constraint
    TeamName NVARCHAR(15) NOT NULL,  -- Not Null Constraint
    GameDate DATE NOT NULL,  -- Not Null Constraint

    CONSTRAINT PK_BaseballGame_GameID PRIMARY KEY CLUSTERED (GameID)  -- Primary Key Constraint
)
-- Create a unique non-clustered index on the TeamName field
CREATE UNIQUE NONCLUSTERED INDEX UX_TeamName ON dbo.BaseballGame ([TeamName] ASC)
GO

SELECT Column_Name, Data_Type 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE Table_Name = 'BaseballGame'; 
GO

---- Insert records into the BaseballGame table
BEGIN
    INSERT INTO dbo.BaseballGame (GameID, TeamName, GameDate)
    VALUES
        (1, 'SCC', '2024-10-21'),  -- Use integers for GameID
        (2, 'NDMC', '2024-10-21'),
        (3, 'USM', '2024-10-21');
END
GO

-- Select all records from the BaseballGame table
SELECT * FROM dbo.BaseballGame;
GO

-- Update the GameDate for a specific record
UPDATE dbo.BaseballGame
SET GameDate = '2024-11-25'
WHERE GameID = 1;  -- Only update GameID '1' (use integer value)
GO
SELECT * FROM dbo.BaseballGame;

-- Delete the record from the BaseballGame table where GameID is '3'
DELETE FROM dbo.BaseballGame
WHERE GameID = 3;-- Use integer value
UPDATE dbo.BaseballGame
SET GameDate = '2024-11-25'
WHERE GameID = 2;
GO
SELECT * FROM dbo.BaseballGame;


-- Truncate Table and show empty results
TRUNCATE TABLE dbo.BaseballGame;
SELECT * FROM dbo.BaseballGame;
GO
