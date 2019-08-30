CREATE TABLE [vk].[ProcessState]
(
	[ProcessStateId] NVARCHAR(16) NOT NULL PRIMARY KEY CLUSTERED ([ProcessStateId]),
	[ProcessStateName] NVARCHAR(32) NOT NULL,
	[ProcessId] NVARCHAR(8) NOT NULL REFERENCES [vk].[Process] ([ProcessId]) ON UPDATE CASCADE ON DELETE CASCADE,
	[DebitAcc] NVARCHAR(20) NULL,
	[CreditAcc] NVARCHAR(20) NULL,
)
