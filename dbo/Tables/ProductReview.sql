CREATE TABLE [dbo].[ProductReview] (
    [ReviewID]     INT            NOT NULL,
    [ProductID]    INT            NOT NULL,
    [Rating]       TINYINT        NOT NULL,
    [ReviewTitle]  NVARCHAR (200) NOT NULL,
    [ReviewText]   NVARCHAR (MAX) NOT NULL,
    [ReviewDate]   DATE           DEFAULT (getdate()) NOT NULL,
    [ReviewVector] VECTOR(1536)   NULL,
    CONSTRAINT [PK_ProductReview] PRIMARY KEY CLUSTERED ([ReviewID] ASC),
    CHECK ([Rating]>=(1) AND [Rating]<=(5))
);


GO

CREATE VECTOR INDEX [IX_Review_ReviewVector]
    ON [dbo].[ProductReview] ([ReviewVector]) WITH (METRIC = 'COSINE');


GO

CREATE FULLTEXT INDEX ON [dbo].[ProductReview]
    ([ReviewTitle] LANGUAGE 1033, [ReviewText] LANGUAGE 1033)
    KEY INDEX [PK_ProductReview]
    ON [ProductReviewCatalog];


GO

