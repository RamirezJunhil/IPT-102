CREATE PROCEDURE [dbo].[Employee_Read]
	@Find  VARCHAR(15)
AS
BEGIN
Select * from EMPLOYEE
Where Minit like @Find or Lname like @Find or Ssn like @Find or Bdate like @Find or Address like @Find or Sex like @Find or Salary like @Find
or Super_ssn like @Find or Dno like @Find
END

