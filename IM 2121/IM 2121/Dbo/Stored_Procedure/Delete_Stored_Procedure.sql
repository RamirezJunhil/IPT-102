-- Stored Procedure for Deleting a BaseballGame record
CREATE PROCEDURE dbo.[DeleteBaseballGame]
	@GameID INT
AS
BEGIN
	DELETE FROM dbo.BaseballGame
	WHERE GameID = @GameID;
END;
GO