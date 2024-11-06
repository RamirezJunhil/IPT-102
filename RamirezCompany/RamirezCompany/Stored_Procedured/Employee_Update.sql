﻿CREATE PROCEDURE [dbo].[Employee_Update]
@Fname  VARCHAR(15),
@Minit CHAR,
@Lname VARCHAR(15),
@Ssn  CHAR(9),
@Bdate VARCHAR(15),
@Address  VARCHAR(30),
@Sex CHAR,
@Salary DECIMAL(10,2),
@Super_ssn  CHAR(9),
@Dno INT

AS
BEGIN
Update EMPLOYEE
Set  Fname = @Fname ,
	Minit = @Minit,
	Lname = @Lname,
	Ssn = @Ssn,
	Bdate = @Bdate,
	Address = @Address,
	Sex = @Sex,
	Salary = @Salary,
	Super_ssn = @Super_ssn,
	Dno = @Dno
END