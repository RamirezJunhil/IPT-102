CREATE PROCEDURE dbo.[UpdateBaseballGame]
	@GameID INT,
	@TeamName NVARCHAR(15),
	@GameDate DATE
AS
BEGIN
	UPDATE dbo.BaseballGame
	SET TeamName = @TeamName,GameDate = @GameDate
	WHERE GameID = @GameID; 
END;
GO