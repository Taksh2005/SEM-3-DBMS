--Lab 10 Implement SQL View
--Part – A:
--Views (First create a view then display all views)
create table STUDENT_INFO(
	RNo int,
	Name varchar(20),
	Branch varchar(20),
	SPI decimal(4,2),
	Bklog int
)
insert into STUDENT_INFO values
(101,'Raju','CE',8.80,0),
(102,'Amit','CE',2.20,3),
(103,'Sanjay','ME',1.50,6),
(104,'Neha','EC',7.65,1),
(105,'Meera','EE',5.52,2),
(106,'Mahesh','EC',4.50,3)
select * from STUDENT_INFO

--1. Create a view Personal with all columns.
create view VW_Personal as
select * from STUDENT_INFO

select * from VW_Personal
--2. Create a view Student_Details having columns Name, Branch & SPI.
create view VW_Student_Details as
select Name,Branch, SPI from STUDENT_INFO

select * from VW_Student_Details
--3. Create a view AcademicData having columns RNo, Name, Branch.
create view VW_AcademicData as
select Rno,Name,Branch from STUDENT_INFO

select * from VW_AcademicData
--4. Create a view Student_bklog having all columns but students whose bklog more than 2.
create view VW_Student_bklog as
select * from STUDENT_INFO
where Bklog > 2

select * from VW_Student_bklog
--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
create view VW_Student_Pattern as
select RNo, Name, Branch from STUDENT_INFO
where Name like '____'

select * from VW_Student_Pattern
--6. Insert a new record to AcademicData view. (107, Meet, ME)
insert into VW_AcademicData values (107, 'Meet', 'ME')

select * from VW_AcademicData
--7. Update the branch of Amit from CE to ME in Student_Details view.
Update VW_Student_Details 
set Branch = 'ME'
where Name = 'Amit'

select * from VW_Student_Details
--8. Delete a student whose roll number is 104 from AcademicData view.
Delete VW_AcademicData
where RNo = 104

select * from VW_AcademicData
--____________________________________________________________________________________
--Part – B:


--1. Create a view that displays information of all students whose SPI is above 8.5
create view VW_Display_Info as
select * from STUDENT_INFO
where SPI > 8.5

select * from VW_Display_Info
--2. Create a view that displays 0 backlog students.
create view VW_Display_NoBklog as
select * from STUDENT_INFO
where Bklog = 0

select * from VW_Display_NoBklog
--3. Create a view Computerview that displays CE branch data only.
create view VW_CE_Info as
select * from STUDENT_INFO
where Branch = 'CE'

select * from VW_CE_Info

--__________________________________________________________________________________________________
--Part – C:


--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
create view VW_Result_EC as
select Name,SPI from STUDENT_INFO
where SPI < 5 and Branch =  'EC'

select * from VW_Result_EC
--2. Update the result of student MAHESH to 4.90 in Result_EC view.
Update VW_Result_EC
set SPI = 4.90
where Name = 'Mahesh'

select * from VW_Result_EC
--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.
create view VW_Stu_Bklog as
select RNo, Name , Bklog from STUDENT_INFO
where Name like 'M%' and Bklog > 5

select * from VW_Stu_Bklog
--4. Drop Computerview form the database.
Drop  view VW_CE_Info