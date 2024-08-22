-------------Lab:8-------------------------
--PART : A
CREATE TABLE SALES_DATA(
	Region varchar(20),
	Product varchar(20),
	Sales_Amount int,
	Year int
);

insert into SALES_DATA values
('North America','Watch',1500,2023),
('Europe','Mobile',1200,2023),
('Asia','Watch',1800,2023),
('North America','TV',900,2024),
('Europe','Watch',2000,2024),
('Asia','Mobile',1000,2024),
('North America','Mobile',1600,2023),
('Europe','TV',1500,2023),
('Asia','TV',1100,2024),
('North America','Watch',1700,2024);


--1. Display Total Sales Amount by Region.
Select Region, sum(Sales_Amount) as Total from SALES_DATA
Group by Region;

--2. Display Average Sales Amount by Product
Select Product, avg(Sales_Amount) as Average from SALES_DATA
Group by Product;

--3. Display Maximum Sales Amount by Year
Select Year, min(Sales_Amount) as minimum from SALES_DATA
Group by Year;

--4. Display Minimum Sales Amount by Region and Year
Select Region,Year, min(Sales_Amount) as minimum from SALES_DATA
Group by Region,Year;

--5. Count of Products Sold by Region
Select Region, count(Product) as Products_Sold from SALES_DATA
Group by Region;

--6. Display Sales Amount by Year and Product
Select Year,Product,sum(Sales_Amount) as Sales_Amount from SALES_DATA
Group by Year,Product;

--7. Display Regions with Total Sales Greater Than 5000
Select Region,sum(Sales_Amount) as Sales_Amount from SALES_DATA
Group by Region
Having sum(Sales_Amount) > 5000;

--8. Display Products with Average Sales Less Than 10000
Select Product,avg(Sales_Amount) as Sales_Amount from SALES_DATA
Group by Product
Having avg(Sales_Amount) < 10000;

--9. Display Years with Maximum Sales Exceeding 500
Select Year,max(Sales_Amount) as Sales_Amount from SALES_DATA
Group by Year
Having max(Sales_Amount) > 500;

--10. Display Regions with at Least 3 Distinct Products Sold.
Select Region,count(Distinct Product) as Unique_Products from SALES_DATA
Group by Region
Having count(Distinct Product) >= 3

--11. Display Years with Minimum Sales Less Than 1000
Select Year,min(Sales_Amount) as Sales_Amount from SALES_DATA
Group by Year
Having min(Sales_Amount) < 1000

--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
Select Region,sum(Sales_Amount) as Sales_Amount from SALES_DATA
where Year = 2023
Group by Region



--__________________________________________________________________________________________________
--Part – B:


--1. Display Count of Orders by Year and Region, Sorted by Year and Region
Select Year,Region, COUNT(product) as total from SALES_DATA
Group by Year,Region
order by Year,Region;

--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
Select Region,max(Sales_Amount) as Sales_Amount from SALES_DATA
Group by Region
Having max(Sales_Amount) > 1000 
order by Region;

--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
Select Year,sum(Sales_Amount) as Sales_Amount from SALES_DATA
Group by Year
Having sum(Sales_Amount) < 1000 
order by year Desc;

--4. Display Top 3 Regions by Total Sales Amount in Year 2024
Select top 3 Region,sum(Sales_Amount) as Sales_Amount from SALES_DATA
where Year = 2024
Group by  Region

--__________________________________________________________________________________________________
--Part – C:

--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
Select Product,avg(Sales_Amount) from SALES_DATA
Group by Product
having avg(Sales_Amount)  Between 1000 and 2000

--2. Display Years with More Than 5 Orders from Each Region
Select Year,Region,Count(Product) from SALES_DATA
Group by Year,Region
Having Count(Product) >5

--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
Select Region,avg(Sales_Amount) as Sales_Amount from SALES_DATA
where year = 2023
Group by Region
Having avg(Sales_Amount) > 1500
Order by avg(Sales_Amount) desc

--4. Find out region wise duplicate product.
Select Region,product,count(Product) as ducplicate_Product from SALES_DATA
Group by Region,product
HAVING count(Product)>1

--5. Find out region wise highest sales amount
Select Region,max(Sales_Amount) as Sales_Amount from SALES_DATA
Group by Region





