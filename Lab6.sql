----------------LAB:6-------------------------
--PART:A----------------------



--1. Display the result of 5 multiply by 30.
Select 5*30 as 'muliplication';

--2. Find out the absolute value of -25, 25, -50 and 50.
select abs(-25),abs(25),abs(-50),abs(50)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
select ceiling(25.2),ceiling(25.7),ceiling(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select floor(25.2),floor(25.7),floor(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
select 5%2, 5%3

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select power(3,2),power(4,3)

--7. Find out the square root of 25, 30 and 50.
select sqrt(25),sqrt(30),sqrt(50)

--8. Find out the square of 5, 15, and 25.
select square(5),square(15),square(25)

--9. Find out the value of PI.
select PI() as PI_Value

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
select round(157.732,2),round(157.732,0),round(157.732,-2)

--11. Find out exponential value of 2 and 3.
select exp(2), exp(3)

--12. Find out logarithm having base e of 10 and 2.
select LOG(10),LOG(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.
select LOG(5,10),LOG(100,10)

--14. Find sine, cosine and tangent of 3.1415.
select sin(3.1415),cos(3.1415),tan(3.1415)

--15. Find sign of -25, 0 and 25.
select sign(-25),sign(0),sign(25)

--16. Generate random number using function.
select rand()


----------------Part:B--------------------------
create table EMP_MASTER(
	EmpNo int,
	EmpName varchar(50),
	JoingingDate Date,
	Salary Decimal(8,2),
	Commission int,
	City varchar(20),
	Dept_Code varchar(20)
)

insert into EMP_MASTER values
(101,'Keyur','2002-01-05',12000,4500,'Rajkot','3@g'),
(102,'Hardik','2004-02-15',14000,2500,'Ahmedabad','3@'),
(103,'Kajal','2006-03-14',15000,3000,'Baroda','3-GD'),
(104,'Bhoomi','2005-06-23',12500,1000,'Ahmedabad','1A3D'),
(105,'Harmit','2004-02-15',14000,2000,'Rajkot','312A')

select * from EMP_MASTER;


--1. Display the result of Salary plus Commission.
select (Salary+Commission) as Total from EMP_MASTER

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
select Ceiling(55.2),Ceiling(35.7),Ceiling(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
select Floor(55.2),Floor(35.7),Floor(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
select 55%2,55%3

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
select power(23,2),power(14,3)
-------------------Part – C:-------------------

--1. Find out the square root of 36, 49 and 81.
select sqrt(36),sqrt(49),sqrt(81)

--2. Find out the square of 3, 9, and 12.
select square(3),square(9),square(12)

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
select round(280.8952,2),round(280.8952,0),round(280.8952,-2)

--4. Find sine, cosine and tangent of 4.2014.
select sin(4.2014),cos(4.2014),tan(4.2014)

--5. Find sign of -55, 0 and 95.
select sign(-55),sign(0),sign(95)
--_______________________________________________________________________________________________________
--String functions

--Part – A:

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
select len(null),len('hello'),len('')

--2. Display your name in lower & upper case.
select LOWER('Taksh'),Upper('Taksh')

--3. Display first three characters of your name.
select left('Taksh',3)

--4. Display 3rd to 10th character of your name.
select SUBSTRING('Taksh Dalvadi',3,7)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
select REPLACE('abc123efg','123','XYZ'),REPLACE('abcabcabc','c','5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
select ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'), ASCII(0), ASCII(9)

--7. Write a query to display character based on number 97, 65,122,90,48,57.
select char(97),char(65),char(122),char(90),char(48),char(57)

--8. Write a query to remove spaces from left of a given string ‘ hello world ‘.
select LTRIM('hello world		')

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
select RTRIM('		Hello world		')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
select left('SQL Server',4), right('SQL Server',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
select  cast('1234.56' as decimal(6,2)), CONVERT(decimal(6,2),'1234.56')

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
select  cast(10.58 as int), CONVERT(int,10.58)

--13. Put 10 space before your name using function.
select Space(10)+'Taksh'

--14. Combine two strings using + sign as well as CONCAT ().
select 'string1'+'string2'
select CONCAT('string1','string2')

--15. Find reverse of “Darshan”.
select REVERSE('Darshan')

--16. Repeat your name 3 times.
select REPLICATE('Taksh',3)

-------------------------------------------Part – B: Perform following queries on Student table of practical no 5.

--1. Find the length of FirstName and LastName columns.
Select Len('Taksh'),Len('Dalvadi')

--2. Display FirstName and LastName columns in lower & upper case.
Select lower('Taksh'),lower('Dalvadi')
Select upper('Taksh'),upper('Dalvadi')

--3. Display first three characters of FirstName column.
select left('Taksh',3)

--4. Display 3rd to 10th character of Website column.
--5. Write a query to display first 4 & Last 5 characters of Website column.

--_______________________________________________________________________________________________________

--Date Functions

--Part – A:

--1. Write a query to display the current date & time. Label the column Today_Date.
select GETDATE() as Today_Date

--2. Write a query to find new date after 365 day with reference to today.
select GETDATE()+365

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
select CONVERT(varchar, getdate())

--4. Display the current date in a format that appears as 03 Jan 1995.
select CONVERT(varchar, GETDATE(),106)

--5. Display the current date in a format that appears as Jan 04, 96.
select CONVERT(varchar, GETDATE(),107)

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
select DATEDIFF(month,'31-Dec-08','31-Mar-09')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
select DATEDIFF(YEAR,'25-Jan-12','14-Sep-10')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
select DATEDIFF(hour,'25-Jan-12 7:00','26-Jan-12 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
select day('12-May-16'),MONTH('12-May-16'),year('12-May-16')

--10. Write a query that adds 5 years to current date.
select DATEADD(year,5,getdate())

--11. Write a query to subtract 2 months from current date.
select DATEADD(month,-2,getdate())

--12. Extract month from current date using datename () and datepart () function.
select DATENAME(month,getdate())
select DATEPART(month,getdate())

--13. Write a query to find out last date of current month.
select EOMONTH(GETDATE())

--14. Calculate your age in years and months.
select DATEDIFF(year,'2005-12-28',getdate())
select DATEDIFF(month,'2005-12-28',getdate())