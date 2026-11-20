create database  SQL_Practice;
use SQL_Practice;
create table orders(
orderid int primary key not null,
customerid int;
productname varchar(15),
category varchar(20),
country varchar(20),
orderdate date ,
shipdate date,
quantity int,
unitprice decimal(20,2),
sales decimal(20,2),
discount decimal(20,2),
profit decimal(20,2)
);
insert into orders values 
(1,101,'office chair','furniture','usa','2023-01-15','2023-01-18',2,250.00,500.00,0.10,80.00);
insert into orders values
(2,102,'gaming chair','furniture','usa','2023-03-10','2023-03-12',1,700.00,700.00,0.20,120.00),
(3,103,'laptop','technology','germany','2023-05-05','2023-05-08',3,400.00,1200.00,0.15,250.00), 
 (4,104,'desk lamp','office supplies','uk','2022-11-20','2022-11-25',5,40.00,200.00,0.05,30.00);
 insert into orders values
 (5,105,'tablet','technology','usa','2023-07-01',null,1,350.00,350.00,null,-20.00),
 (6,106,'bookshelf','furniture','canada','2024-01-12','2024-01-15',4,150.00,600.00,0.25,90.00),
 (7,107,'monitor','technology','usa','2023-09-09','2023-09-14',2,275.00,550.00,0.00,60.00),
 (8,108,'printer','technology','france','2023-04-18',null,1,180.00,180.00,0.10,-15.00), 
 (9,109,'wooden chair','furniture','uk','2023-12-05','2023-12-09',6,120.00,720.00,0.30,140.00),
 (10,110,'mouse','technology','germany','2023-06-22','2023-06-24',10,25.00,250.00,0.05,40.00),
 (11,111,'conference chair','furniture','usa','2022-08-14','2022-08-19',3,320.00,960.00,0.10,-50.00),
(12,112,'phone','technology','india','2023-02-11','2023-02-15',2,500.00,1000.00,0.20,200.00), 
(13,113,'binder','office supplies','usa','2023-10-01','2023-10-03',1,15.00,15.00,0.00,5.00), 
 (14,114,'standingdesk','furniture','germany','2023-11-19','2023-11-22',2,650.00,1300.00,0.10,300.00),
 (15,115,'headphones','technology','usa','2024-02-05','2024-02-07',4,80.00,320.00,0.05,45.00), 
 (16,116,'study chair','furniture','usa','2023-08-08',null,5,210.00,1050.00,0.40,180.00),
  (17,117,'router','technology','uk','2023-03-30','2023-04-02',2,150.00,300.00,null,-10.00),
 (18,118,'filingcabinet','furniture','canada','2023-05-21','2023-05-25',1,450.00,450.00,0.20,70.00),
 (19,119,'desk chair pro','furniture','usa','2023-06-01','2023-06-05',2,480.00,960.00,0.10,150.00), 
 (20,120,'serverrack','technology','germany','2023-07-17','2023-07-20',1,1100.00,1100.00,0.05,220.00);

 select * from orders;
---2
select orderid,customerid,sales from orders;
---3
select orderid from orders where Sales > 500;
---4
select orderid from orders where Quantity = 1;
---5
select orderid from orders where Country = 'USA'
---6
select distinct country from orders;
---7
select orderid from orders where  Profit < 0;
---8
select orderid from orders where Discount >= 0.2;
---9
select orderid from orders where ShipDate IS NULL;
---10
select orderid from orders where Sales = Quantity * UnitPrice ;

  Intermediates Questions 
---1
select orderid from orders where   Country = 'USA' AND Sales > 300;
---2
select orderid from orders where  Category = 'Furniture' OR Category = 'Technology';
---3
select orderid from orders where   country like 'c%';
---4
select orderid from orders where   OrderDate  BETWEEN '2023-01-01' AND '2023-12- 31';
---5
select orderid,sales from orders where   Country like 'USA' or Country like 'UK' or Country like 'Germany' order by Sales DESC; 

   Advancced Questions 
---1
select orderid from orders where  Sales > 500 AND Profit > 0 order by Profit DESC;
---2
select orderid from orders where   Discount is NOT NULL AND Discount > 0 order by Discount ASC;
---3
select orderid from orders where (Quantity * UnitPrice) - Discount > 1000.;
---4
select orderid from orders where  Productname like '%Chair%' and Sales BETWEEN 200 AND 1000;
select * from  orders;
---5
select distinct customerid FROM orders where country = 'USA'and Profit < 0 order by customerid ASC;








