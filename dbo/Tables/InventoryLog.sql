CREATE TABLE [dbo].[InventoryLog] (
    [LogID]          INT            IDENTITY (1, 1) NOT NULL,
    [ProductID]      INT            NOT NULL,
    [ChangeDate]     DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [QuantityChange] INT            NOT NULL,
    [ChangeType]     NVARCHAR (20)  NOT NULL,
    [Notes]          NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([LogID] ASC)
);


GO

