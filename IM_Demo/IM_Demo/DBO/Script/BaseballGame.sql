USE [master];
GO

-- Create Database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'BaseballGameDB')
BEGIN
    CREATE DATABASE BaseballGameDB;
END
GO

USE BaseballGameDB;
GO

-- Create Table with Constraints
IF OBJECT_ID(N'dbo.BaseballGame', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.BaseballGame
    (
        GameID NVARCHAR(10) NOT NULL,  -- Primary Key Constraint
        TeamName NVARCHAR(250) NOT NULL,  -- Not Null Constraint
        GameDate DATE NOT NULL,  -- Not Null Constraint
        Stadium NVARCHAR(250) NOT NULL,  -- Not Null Constraint

        CONSTRAINT PK_BaseballGame_GameID PRIMARY KEY CLUSTERED (GameID)  -- Primary Key Constraint
    );

    -- Create a unique non-clustered index on the TeamName field
    CREATE UNIQUE NONCLUSTERED INDEX UX_TeamName ON dbo.BaseballGame (TeamName);
END
GO

-- Select column names and data types from the BaseballGame table
SELECT column_name, data_type
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'BaseballGame';
GO

-- Insert records into the BaseballGame table
BEGIN
    INSERT INTO dbo.BaseballGame (GameID, TeamName, GameDate, Stadium)
    VALUES 
        (N'001', N'Yankees', '2024-11-20', N'Yankee Stadium'),
        (N'002', N'Red Sox', '2024-11-21', N'Fenway Park'),
        (N'003', N'Dodgers', '2024-11-22', N'Dodger Stadium');
END
GO

-- Select all records from the BaseballGame table
SELECT * FROM dbo.BaseballGame;
GO

-- Update the Stadium for the record where GameID is '001'
UPDATE dbo.BaseballGame
SET Stadium = 'New Yankee Stadium'
WHERE GameID = '001';
GO

-- Select the updated record from the BaseballGame table where GameID is '001'
SELECT * FROM dbo.BaseballGame
WHERE GameID = '001';
GO

-- Delete the record from the BaseballGame table where GameID is '002'
DELETE FROM dbo.BaseballGame
WHERE GameID = '002';
GO 

-- Select the record from the BaseballGame table where GameID is '002' (should return an empty result set)
SELECT * FROM dbo.BaseballGame
WHERE GameID = '002';
GO

-- Truncate all data from the BaseballGame table
TRUNCATE TABLE dbo.BaseballGame;
GO