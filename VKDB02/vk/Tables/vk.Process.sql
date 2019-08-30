CREATE TABLE [vk].[Process]
(
	[ProcessId] NVARCHAR(8) NOT NULL PRIMARY KEY CLUSTERED ([ProcessId]),
	[ProcessName] NVARCHAR(126) NOT NULL,
	[ProcessStateId] NVARCHAR(16) NULL, -- Inicial state
	[ItemType] NVARCHAR(16) NULL,
)
