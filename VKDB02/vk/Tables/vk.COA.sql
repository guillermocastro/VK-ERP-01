CREATE TABLE [vk].[COA] (
    [CoaId]        NVARCHAR (20)  NOT NULL,
    [CoaName]      NVARCHAR (256) NOT NULL,
    [ParentId]     NVARCHAR (20)  NULL,
    [DebitList]    NVARCHAR (MAX) NULL,
    [CreditList]   NVARCHAR (MAX) NULL,
    [IsAuxiliar]   BIT            DEFAULT ('FALSE') NULL,
    [IsSuppressed] BIT            DEFAULT ('FALSE') NULL,
    PRIMARY KEY CLUSTERED ([CoaId] ASC)
);

