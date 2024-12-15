﻿
-- Create a new BaseballGame record
EXEC dbo.CreateBaseballGame @GameID = 1, @TeamName = 'NDMC', @GameDate = '2024-10-21';

-- Read all BaseballGame records
EXEC dbo.ReadBaseballGames @GameID = 1;
GO

-- Update a BaseballGame record
EXEC dbo.UpdateBaseballGame @GameID = 1, @TeamName = 'SCC', @GameDate = '2024-10-22';
EXEC dbo.ReadBaseballGames @GameID = 1;
GO

-- Delete a BaseballGame record
EXEC dbo.DeleteBaseballGame @GameID = 1;
EXEC dbo.ReadBaseballGames @GameID = 1;
GO
