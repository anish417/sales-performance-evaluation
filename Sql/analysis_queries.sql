CREATE DATABASE IF NOT EXISTS sales_analysis;
USE sales_analysis;


CREATE TABLE sales (
    Category VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100),
    Customer_ID VARCHAR(30),
    Customer_Name VARCHAR(150),
    Discount DECIMAL(5,2),
    Market VARCHAR(50),
    Record_Count INT,
    Order_Date DATE,
    Order_ID VARCHAR(30),
    Order_Priority VARCHAR(30),
    Product_ID VARCHAR(50),
    Product_Name VARCHAR(255),
    Profit DECIMAL(10,2),
    Quantity INT,
    Region VARCHAR(50),
    Row_ID INT,
    Sales DECIMAL(12,2),
    Segment VARCHAR(50),
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Shipping_Cost DECIMAL(10,2),
    State VARCHAR(100),
    Sub_Category VARCHAR(100),
    Year INT,
    Market2 VARCHAR(50),
    weeknum INT
);

INSERT INTO sales (
Category, City, Country, Customer_ID, Customer_Name,
Discount, Market, Record_Count, Order_Date, Order_ID,
Order_Priority, Product_ID, Product_Name, Profit,
Quantity, Region, Row_ID, Sales, Segment,
Ship_Date, Ship_Mode, Shipping_Cost, State,
Sub_Category, Year, Market2, weeknum
)
VALUES
('Furniture','New York City','United States','CG-12520','Claire Gute',
0.00,'US',1,'2023-11-08','CA-2023-152156',
'High','FUR-BO-10001798','Bush Somerset Collection Bookcase',41.91,
2,'East',1,261.96,'Consumer',
'2023-11-11','Second Class',35.00,'New York',
'Bookcases',2023,'US',45),

('Furniture','New York City','United States','CG-12520','Claire Gute',
0.00,'US',1,'2023-11-08','CA-2023-152156',
'High','FUR-CH-10000454','Hon Deluxe Chair',219.58,
3,'East',2,731.94,'Consumer',
'2023-11-11','Second Class',48.00,'New York',
'Chairs',2023,'US',45),

('Office Supplies','Los Angeles','United States','DV-13045','Darrin Van Huff',
0.20,'US',1,'2023-10-15','CA-2023-138688',
'Medium','OFF-LA-10000240','Self-Adhesive Address Labels',6.87,
2,'West',3,14.62,'Corporate',
'2023-10-18','Standard Class',4.50,'California',
'Labels',2023,'US',42),

('Technology','Seattle','United States','SO-20335','Sean O''Donnell',
0.00,'US',1,'2023-09-22','CA-2023-108966',
'Critical','TEC-PH-10002275','iPhone 13',350.00,
2,'West',4,1399.99,'Consumer',
'2023-09-24','First Class',18.00,'Washington',
'Phones',2023,'US',38),

('Office Supplies','Chicago','United States','AB-10015','Aaron Bergman',
0.10,'US',1,'2023-08-12','CA-2023-115812',
'Low','OFF-BI-10001758','Avery Binder',15.20,
5,'Central',5,95.50,'Home Office',
'2023-08-16','Standard Class',8.20,'Illinois',
'Binders',2023,'US',33),

('Technology','Houston','United States','TS-21340','Teresa Smith',
0.15,'US',1,'2023-07-18','CA-2023-129847',
'Medium','TEC-AC-10002345','Wireless Mouse',22.80,
4,'Central',6,120.00,'Corporate',
'2023-07-20','Second Class',10.00,'Texas',
'Accessories',2023,'US',29),

('Furniture','Miami','United States','RB-19465','Rick Bensley',
0.25,'US',1,'2023-06-11','CA-2023-117590',
'High','FUR-TA-10004567','Office Table',85.50,
1,'South',7,450.00,'Consumer',
'2023-06-15','Standard Class',22.00,'Florida',
'Tables',2023,'US',24),

('Office Supplies','Phoenix','United States','JK-15205','John Kennedy',
0.00,'US',1,'2023-05-08','CA-2023-102345',
'Critical','OFF-ST-10005678','Storage Box',18.75,
6,'West',8,150.00,'Corporate',
'2023-05-11','First Class',15.00,'Arizona',
'Storage',2023,'US',19),

('Technology','Boston','United States','LM-17020','Linda Martinez',
0.05,'US',1,'2023-04-17','CA-2023-143210',
'Medium','TEC-MA-10007890','27-inch Monitor',120.00,
2,'East',9,620.00,'Home Office',
'2023-04-20','Second Class',16.50,'Massachusetts',
'Machines',2023,'US',16),

('Furniture','Dallas','United States','NP-18700','Nina Patel',
0.10,'US',1,'2023-03-05','CA-2023-187654',
'Low','FUR-FU-10003456','Office Cabinet',65.00,
1,'Central',10,325.00,'Consumer',
'2023-03-08','Standard Class',20.00,'Texas',
'Furnishings',2023,'US',10);

select * from sales;

SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM sales;

select round(sum(profit),2) as total_profit 
from sales;

select
month(order_date) as month,
round(sum(sales),2) as revenue
from sales
group by month(order_date) 
order by month;

select
product_name,
round(sum(sales),2) as revenue 
from sales
group by product_name
order by revenue desc
limit 10;

select
state,
round(sum(sales),2) as revenue
from sales
group by state
order by revenue desc;

select
category,
round(sum(profit),2) as profit
from sales
group by category;

select
region,
round(sum(sales),2) as revenue
from sales
group by region;

select
round(avg(sales),2) as average_order
from sales;

select
customer_name,
round(sum(sales),2) as revenue 
from sales
group by customer_name
order by revenue desc
limit 10;

select 
product_name,
round(sum(profit),2) as profit
from sales
group by product_name
order by profit desc
limit 10;