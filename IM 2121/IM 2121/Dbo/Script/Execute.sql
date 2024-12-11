Truncate table BaseballGame 

-- Create a new BaseballGame record
EXEC dbo.CreateBaseballGame @GameID = 1, @TeamName = 'NewTeam', @GameDate = '2024-12-01';

-- Read all BaseballGame records
EXEC dbo.ReadBaseballGames @GameID = 1;

GO

-- Update a BaseballGame record
EXEC dbo.UpdateBaseballGame @GameID = 1, @TeamName = 'UpdatedTeam', @GameDate = '2024-12-02';
EXEC dbo.ReadBaseballGames @GameID = 1;
GO

-- Delete a BaseballGame record
EXEC dbo.DeleteBaseballGame @GameID = 1;
EXEC dbo.ReadBaseballGames @GameID = 1;
GO
