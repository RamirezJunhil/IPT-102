CREATE PROCEDURE [dbo].[Employee_Delete]
	@Ssn INT
AS
BEGIN
Delete from EMPLOYEE
Where Ssn = @Ssn
END

