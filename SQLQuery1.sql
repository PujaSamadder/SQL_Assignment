create table Customer
(
Id int Primary key,
FirstName nvarchar(40) Not Null,
LastName nvarchar(40) Not Null,
City nvarchar(40),
Country varchar(40) Not Null,
Phone nvarchar(40)
)

create table Orders
(
Id int Primary key,
OrderDate datetime Not Null,
OrderNumber nvarchar(10),
CustomerId int Foreign key references Customer(Id) on delete cascade,
TotalAmount decimal(12,2)
)

create table Product
(
Id int Primary key,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit
)

create table OrderItem
(
Id int Primary key,
OrderId int Foreign key references Orders(Id) on delete cascade,
ProductId int Foreign key references Product(Id) on delete cascade,
UnitPrice decimal(12,2),
Quantity int
)


create index IndexCustomerName on Customer(FirstName,LastName)

Create index IndexOrdersCustomerId on Orders(Id)
Create index IndexOrdersOrderDate on Orders(OrderDate)

Create index IndexOrderItemOrderId on OrderItem(Id)
Create index IndexOrderItemProductId on OrderItem(ProductId)


Create index IndexProductSupplierId on Product(Id)
Create index IndexProductName on Product(ProductName)



Insert Into Customer(Id,FirstName,LastName,City,Country,Phone)
values(1,'Shreya','Saha','Kolkata','India','9876543210'),
(2,'Rahul','Sharma','Delhi','Australia','9483824633'),
(3,'Bibek','Saha','Mumbai','Srilanka','9253718364'),
(4,'Ritabrata','Biswas','Chennai','England','9672537180'),
(5,'Swarnava','Dhar','Bangalore','NewZealand','9673214562'),
(6,'Sangita','Mondal','Chandigarh','Canada','98321145632'),
(7,'Shikar','Goon','Jamsedhpur','Brazil','9838246273');

select *from Customer



Insert Into Orders
values(101,'2022-06-19 10:12:30','10',4,1000.50),
(102,'2022-06-20 10:13:31','11',2,5060.50),
(103,'2022-06-21 10:14:32','12',4,2300.50),
(104,'2022-06-22 10:15:33','13',3,2430.50),
(105,'2022-06-23 10:18:34','14',1,2700.50);

select *from Orders



 Insert into Product
 values(1000,'Laptop',90000.50,'medium','True'),
       (1001,'SmartWatch',3000.50,'medium','True'),
	   (1002,'SmartPhone',20000.50,'small','True'),
	   (1003,'SmartTV',150000.50,'medium','True'),
	   (1004,'TV',25000.50,'large','False');

select *from Product



Insert into OrderItem
values(10,103,1004,9500.50,3),
(11,102,1002,2500.50,2),
(12,104,1001,25000.50,1),
(13,105,1003,40500.50,4),
(14,101,1000,15500.50,2);

Select * from OrderItem



Select country from Customer 
where FirstName LIKE 'R%' Or FirstName LIKE 'S%';

Select FirstName,LastName from Customer
where FirstName LIKE '__i%'; 

update Customer 
set FirstName='Shikhar'
where Id=6