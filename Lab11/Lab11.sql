create table STU_INFO(
	Rno int NOT null,
	Name varchar(20),
	Branch varchar(20)
)
insert into STU_INFO values
(101,'Raju','CE'),
(102,'Amit','CE'),
(103,'Sanjay','ME'),
(104,'Neha','EC'),
(105,'Meera','EE'),
(106,'Mahesh','ME')

--____________________________________________
create table RESULT(
	Rno int NOT null,
	SPI decimal(3,1)
)

insert into RESULT values
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)
--______________________________________________
create table EMPLOYEE_MASTER(
	EmployeeNo varchar(4) NOT null,
	Name varchar(20),
	ManagerNo varchar(4)
)

insert into EMPLOYEE_MASTER values
('E01','Tarun',null),
('E02','Rohan','E02'),
('E03','Priya','E01'),
('E04','Milan','E03'),
('E05','Jay','E01'),
('E06','Anjana','E04')

-----------------Part – A:------------------------

--1. Combine information from student and result table using cross join or Cartesian product.
select s.Rno,s.Name,s.Branch,r.SPI 
from STU_INFO s cross join RESULT r

--2. Perform inner join on Student and Result tables.
select STU_INFO.*,RESULT.SPI 
from STU_INFO inner join RESULT 
on STU_INFO.Rno = RESULT.Rno

--3. Perform the left outer join on Student and Result tables.
select STU_INFO.*,RESULT.SPI 
from STU_INFO left outer join RESULT 
on STU_INFO.Rno = RESULT.Rno

--4. Perform the right outer join on Student and Result tables.
select STU_INFO.*,RESULT.SPI 
from STU_INFO right outer join RESULT 
on STU_INFO.Rno = RESULT.Rno

--5. Perform the full outer join on Student and Result tables.
select STU_INFO.*,RESULT.SPI 
from STU_INFO full outer join RESULT 
on STU_INFO.Rno = RESULT.Rno

--6. Display Rno, Name, Branch and SPI of all students.
select STU_INFO.*, RESULT.SPI
from STU_INFO full outer join RESULT 
on STU_INFO.Rno = RESULT.Rno

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
select STU_INFO.*,RESULT.SPI 
from STU_INFO full outer join RESULT 
on STU_INFO.Rno = RESULT.Rno
where STU_INFO.Branch = 'CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select STU_INFO.*,RESULT.SPI 
from STU_INFO full outer join RESULT 
on STU_INFO.Rno = RESULT.Rno
where STU_INFO.Branch != 'EC'

--9. Display average result of each branch.
select STU_INFO.Branch,avg(RESULT.SPI) as Average 
from STU_INFO full outer join RESULT 
on STU_INFO.Rno = RESULT.Rno
group by STU_INFO.Branch

--10. Display average result of CE and ME branch.
select STU_INFO.Branch,avg(RESULT.SPI) as Average 
from STU_INFO full outer join RESULT 
on STU_INFO.Rno = RESULT.Rno
where Branch in ('CE','ME')
group by STU_INFO.Branch

-------------------Part – B:----------------------------
--1. Display average result of each branch and sort them in ascending order by SPI.
select STU_INFO.Branch,avg(RESULT.SPI) as Average 
from STU_INFO full outer join RESULT 
on STU_INFO.Rno = RESULT.Rno
group by STU_INFO.Branch
order by avg(RESULT.SPI)

--2. Display highest SPI from each branch and sort them in descending order.
select STU_INFO.Branch,max(RESULT.SPI) as MAX 
from STU_INFO full outer join RESULT 
on STU_INFO.Rno = RESULT.Rno
group by STU_INFO.Branch
order by avg(RESULT.SPI) DESC


--------------------Part – C:----------------------------
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
select e.Name as employee,m.Name as manager 
from EMPLOYEE_MASTER e 
join EMPLOYEE_MASTER m 
on e.EmployeeNo = m.ManagerNo