-----------Lab:7---------------
--Part:A-------------------

create table EMP(
	EID int,
	EName varchar(20),
	Department varchar(15),
	Salary decimal(10,2),
	JoiningDate datetime,
	City varchar(20)
)

 insert into EMP values
 (101,'Rahul','Admin',56000,'1990-01-01','Rajkot'),
 (102,'Hardik','IT',18000,'1990-09-25','Ahmedabad'),
 (103,'Bhavin','HR',25000,'1991-05-14','Baroda'),
 (104,'Bhoomi','Admin',39000,'1991-02-08','Rajkot'),
 (105,'Rohit','IT',17000,'1990-07-23','Jamnagar'),
 (106,'Priya','IT',9000,'1990-10-18','Ahmedabad'),
 (107,'Bhoomi','HR',34000,'1991-12-25','Rajkot')
 
--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
Select max(Salary) as Maximum, min(Salary) as Minimum from EMP;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
select sum(Salary) as Total_Sal, AVG(Salary) as Average_Sal from EMP;

--3. Find total number of employees of EMPLOYEE table.
select count(EID) as Total_emp from EMP;

--4. Find highest salary from Rajkot city.
select max(Salary) as highest from EMP
where City = 'Rajkot'

--5. Give maximum salary from IT department.
select max(Salary) as highest from EMP
where Department = 'IT'

--6. Count employee whose joining date is after 8-feb-91.
select count(EID) as no_of_Emp from EMP
where JoiningDate > '1991-02-08'

--7. Display average salary of Admin department.
select avg(Salary) from EMP
where Department = 'Admin'

--8. Display total salary of HR department.
select sum(Salary) from EMP
where Department = 'HR'

--9. Count total number of cities of employee without duplication.
select count(distinct City) as no_of_City from EMP

--10. Count unique departments.
select count(distinct Department) as no_of_Dpt from EMP

--11. Give minimum salary of employee who belongs to Ahmedabad.
select min(Salary) from EMP
where City = 'Ahmedabad'

--12. Find city wise highest salary.
select City,max(Salary) from EMP
group by City

--13. Find department wise lowest salary.
select Department, min(Salary) as Min_Salary from EMP
group by Department

--14. Display city with the total number of employees belonging to each city.
select City, count(EID) as no_of_Emp from EMP
group by City

--15. Give total salary of each department of EMP table.
select Department,sum(salary) as total_Salary from EMP
group by Department

--16. Give average salary of each department of EMP table without displaying the respective department name.
select Department,avg(salary) as average_Salary from EMP
group by Department



---------------------------------------------------------------------------------------------------------------------------------------------
---------------------part:b--------------------------
--1. Count the number of employees living in Rajkot.
select count(EID) as no_of_Emp from EMP
where City = 'Rajkot'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(Salary)-min(Salary) as DIFFERENCE from EMP


--3. Display the total number of employees hired before 1st January, 1991.
select count(EID) as no_of_Emp from EMP
where JoiningDate < '1991-01-01'



---------------------------------------------------------------------------------------------------------------------------------------------
---------------------part:c--------------------------
--1. Count the number of employees living in Rajkot or Baroda.
select count(EID) as no_of_Emp from EMP
where City = 'Rajkot' or City='Baroda'

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
select count(EID) as no_of_Emp from EMP
where JoiningDate < '1991-01-01' and Department = 'IT'

--3. Find the Joining Date wise Total Salaries.
select sum(Salary) as Total_Salarie from EMP
group by JoiningDate

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
select Department as dept,City as city, max(Salary) as maxSalary from EMP
where City like 'R%'
group by department,city


---------------------------------------------------------------------------------------------------------------------------------------------
---------------------Extra--------------------------

--1
select avg(Salary) as Average_Salary_After_1991 from EMP
where JoiningDate > '1991-01-01'

--2
select Department,count(EID) as NoOfEmployee from EMP
group by Department

--3
select City,sum(Salary) from EMP
group by City
order by City

--4
select City,count(EID) as NoOfEmployee from EMP
group by City

--5
select max(Salary) as Max_Salary from EMP

--6
select max(Salary) as Max_Salary from EMP
where Department = 'IT'

--7
Select count(distinct City) as No_Of_Cities from EMP 

--8
select Department,sum(Salary) as total_salary from EMP
group by Department

--9
select min(Salary) as Salary from EMP
where City ='Ahmedabad'