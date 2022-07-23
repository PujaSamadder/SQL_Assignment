select *from Customer
select *from Orders
Select * from OrderItem
select *from Product


SELECT Orders.OrderNumber,Customer.FirstName,Orders.OrderDate
FROM Customer
FULL OUTER JOIN Orders
ON Customer.Id=Orders.CustomerId
WHERE Phone=9253718364;



--fetching all the products which are available under Category ‘Seafood’.
Alter table Product
add
Category nvarchar(50)

Update Product
Set Category='TV'
where Id=1003;

Update Product
Set Category='TV'
where Id=1004;

Update Product
Set Category='Laptop'
where Id=1000;

Update Product
Set Category='Watch'
where Id=1001;

Update Product
Set Category='Phone'
where Id=1002;

select *from Product
where Category='TV';



SELECT Orders.OrderNumber,Customer.FirstName,Customer.LastName,Customer.Country,Orders.CustomerId, Orders.OrderDate
FROM Customer
FULL OUTER JOIN Orders
ON Customer.Id=Orders.CustomerId
WHERE NOT Country='England';


--selects all the order which are placed for the product Chai.
SELECT OrderItem.OrderId,Product.Id,Product.ProductName,Product.UnitPrice
FROM Product
FULL OUTER JOIN OrderItem
ON Product.Id=OrderItem.ProductId
WHERE Category='TV';

--Write a query to display the name , department name and rating  of any given employee
SELECT FirstName,LastName,DepartmentName,Rate
FROM Employees

SELECT FirstName,LastName,DepartmentName,Rate
FROM Employees
where FirstName='Puja';
