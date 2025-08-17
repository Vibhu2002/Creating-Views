CREATE VIEW Indian_Customers AS
SELECT CustomerID, Name
FROM Customers
WHERE Country = 'India';

SELECT * FROM Indian_Customers;


CREATE VIEW Customer_Order_Summary AS
SELECT c.Name, c.Country, SUM(o.Amount) AS TotalAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name, c.Country;

SELECT * FROM Customer_Order_Summary
WHERE TotalAmount > 500;


UPDATE Indian_Customers
SET Name = 'Raja'
WHERE CustomerID = 1;
