select *from Customer

Select * from Customer
where country='Srilanka';


Select * from Customer 
where FirstName Like '_w%';

create table Employees
(
empno int Primary key,
FirstName nvarchar(40),
LastName nvarchar(40),
CompanyName nvarchar(50),
ManagerName nvarchar(40),
JoiningDate date Not Null,
DepartmentName nvarchar(40),
Rate decimal(12,2),
)



Insert into Employees(empno,FirstName,LastName,CompanyName,ManagerName,JoiningDate,DepartmentName,Rate)
values(101,'Ishita','Das',' Grifio','Simran','2019-03-24','IT',89),
(102,'Arnab','Mazumdar','Sunknowledge','Dipa','2015-10-12','Accounting and Finance',92),
(103,'Puja','Samadder','Capgemini','Jasspreet','2021-02-02','IT',89),
(104,'Soumyajit','Chakraborty','Infosys','Dipayan','2022-05-15','Customer service',85),
(105,'Sakhawat','Ansari','Wipro','Samim','2017-07-19','Marketing and sales',88);


Select FirstName+''+LastName as FullName from Employees



Select o.* from Orders o
join 
OrderItem oi on o.Id=oi.OrderId
where oi.UnitPrice>2500 and UnitPrice<20000
order by oi.UnitPrice;

Select * from OrderItem


Select * from Orders
order by OrderDate desc;



Alter table Orders 
add 
ShippingDate datetime 


Alter table Orders
add
ShippingName nvarchar(50)


Update Orders
Set ShippingDate='2022-06-29 10:20:15 '
where Id=103;

Update Orders
Set ShippingName='Cafeshipping' 
where Id=103;

Update Orders
Set ShippingDate='2022-06-10 10:15:30'
where Id=102;

Update Orders
Set ShippingName='La Corne D"abundance'
where Id=102;

Update Orders
Set ShippingDate='2022-06-20 11:35:20'
where Id=104;

Update Orders
Set ShippingName='La Corne D"abundance'
where Id=104;

Update Orders
Set ShippingDate='2022-06-15 12:35:20'
where Id=101;

Update Orders
Set ShippingName='Vins at alcools chevalier'
where Id=101;

Update Orders
Set ShippingDate='2022-06-05 12:45:30'
where Id=105;

Update Orders
Set ShippingName='Vins at alcools chevalier'
where Id=105;

select *from Orders

SELECT * FROM Orders
WHERE ShippingDate BETWEEN '2022-06-09' AND '2022-06-22'
AND ShippingName='La Corne D"abundance';


Alter table Product
add
SupplierName nvarchar(50)

Update Product
set SupplierName='Exoticliquid'
where Id=1004;

Update Product
set SupplierName='Exoticliquid'
where Id=1002;

Update Product
set SupplierName='Exoticliquid'
where Id=1000;

Update Product
set SupplierName='Bannari Amman'
where Id=1001;

Update Product
set SupplierName='Bannari Amman'
where Id=1003;

select *from Product

Select ProductName from Product 
where SupplierName='ExoticLiquid'


Select p.Id,Avg(oi.Quantity) as Avg_Quantity from OrderItem oi
join 
Product p on oi.ProductId=p.Id
group by p.Id


Select o.ShippingName ,p.SupplierName 
from Orders o
join OrderItem oi on o.Id=oi.OrderId
join Product p on oi.ProductId=p.id
where p.IsDiscontinued=1;


SELECT DISTINCT FirstName, ManagerName
FROM Employees;


Select p.ProductName, p.SupplierName ,o.TotalAmount
from Orders o
join OrderItem oi on o.Id=oi.OrderId
join Product p on oi.ProductId=p.id
where p.SupplierName='ExoticLiquid' and o.TotalAmount>2400;
