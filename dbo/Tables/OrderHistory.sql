CREATE TABLE [dbo].[OrderHistory] (
    [OrderID]     INT             IDENTITY (1, 1) NOT NULL,
    [CustomerID]  INT             NOT NULL,
    [ProductID]   INT             NOT NULL,
    [OrderDate]   DATETIME        NOT NULL,
    [Quantity]    INT             NOT NULL,
    [UnitPrice]   DECIMAL (10, 2) NOT NULL,
    [TotalAmount] AS              ([Quantity]*[UnitPrice]) PERSISTED,
    [Status]      NVARCHAR (20)   NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC)
);


GO

CREATE NONCLUSTERED INDEX [IX_OrderHistory_ProductID_Status_OrderDate]
    ON [dbo].[OrderHistory]([ProductID] ASC, [Status] ASC, [OrderDate] ASC)
    INCLUDE([Quantity], [TotalAmount]);


GO

CREATE NONCLUSTERED INDEX [IX_OrderHistory_CustomerID_OrderDate]
    ON [dbo].[OrderHistory]([CustomerID] ASC, [OrderDate] ASC)
    INCLUDE([ProductID], [Quantity], [UnitPrice], [TotalAmount], [Status]);


GO

CREATE NONCLUSTERED INDEX [IX_OrderHistory_CustomerDate]
    ON [dbo].[OrderHistory]([CustomerID] ASC, [OrderDate] DESC);


GO

