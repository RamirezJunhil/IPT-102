CREATE PROCEDURE dbo.[CreateBaseballGame]
	@GameID INT,
	@TeamName NVARCHAR(15),
	@GameDate DATE
AS
BEGIN
	INSERT INTO dbo.BaseballGame (TeamName, GameDate, GameID)
	VALUES (@TeamName, @GameDate, @GameID);
END;
GO
