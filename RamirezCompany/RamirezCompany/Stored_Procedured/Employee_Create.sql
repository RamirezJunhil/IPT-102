CREATE PROCEDURE [dbo].[Employee_Create]

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
Insert into EMPLOYEE (Fname,Minit,Lname, Ssn, Bdate, Address, Sex, Salary,Super_ssn,Dno)
Values
(@Fname,@Minit,@Lname,@Ssn,@Bdate,@Address,@Sex,@Salary,@Super_ssn,@Dno)				 
END