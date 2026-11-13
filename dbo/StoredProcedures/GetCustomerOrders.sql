CREATE   PROCEDURE dbo.GetCustomerOrders
     @CustomerID INT
AS
BEGIN
     SELECT
         oh.OrderID,
         oh.OrderDate,
         p.Name AS ProductName,
         oh.Quantity,
         oh.UnitPrice,
         oh.TotalAmount,
         oh.Status
     FROM dbo.OrderHistory AS oh
     INNER JOIN SalesLT.Product AS p
         ON oh.ProductID = p.ProductID
     WHERE oh.CustomerID = @CustomerID
     ORDER BY oh.OrderDate DESC;
END;

GO

