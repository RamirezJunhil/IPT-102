CREATE TABLE dbo.BaseballGame 
(
    GameID INT PRIMARY KEY,  -- Primary Key with auto-increment
    TeamName NVARCHAR(15) NOT NULL,        -- Not Null Constraint
    GameDate DATE NOT NULL                 -- Not Null Constraint
);
GO

-- Create a unique non-clustered index on the TeamName field
CREATE UNIQUE NONCLUSTERED INDEX UX_TeamName ON dbo.BaseballGame (TeamName ASC);
GO
