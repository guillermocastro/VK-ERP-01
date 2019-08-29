CREATE TABLE [vk].[Ledger] (
    [LedgerId]        INT             IDENTITY (1, 1) NOT NULL,
    [TransactionId]   INT             NOT NULL,
    [TransactionDate] DATE            DEFAULT (CONVERT([date],getdate())) NOT NULL,
    [CoaId]           NVARCHAR (20)   NOT NULL,
    [Description]     NVARCHAR (50)   NOT NULL,
    [Debit]           DECIMAL (20, 2) DEFAULT ((0.0)) NOT NULL,
    [Credit]          DECIMAL (20, 2) DEFAULT ((0.0)) NOT NULL,
    [DocId]           INT             NULL,
    [PartnerId]       INT             NULL,
    [TransactionType] INT             NULL,
    PRIMARY KEY CLUSTERED ([LedgerId] ASC),
    FOREIGN KEY ([CoaId]) REFERENCES [vk].[COA] ([CoaId])
);

