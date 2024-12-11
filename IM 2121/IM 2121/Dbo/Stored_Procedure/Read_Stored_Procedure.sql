CREATE PROCEDURE dbo.[ReadBaseballGames]
 @GameID INT
AS
BEGIN
	SELECT * FROM dbo.BaseballGame Where TeamName Like @GameID Or GameDate Like @GameID	Or GameID Like @GameID;
END;
GO