Select * FROM customers;
SELECT * FROM Orders;
SELECT*
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;