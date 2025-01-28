SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [Customers].[Customer]'
GO
ALTER TABLE [Customers].[Customer] ADD
[Twitter] [varchar] (16) NULL
GO
PRINT N'Refreshing [Customers].[CustomerFeedbackSummary]'
GO
EXEC sp_refreshview N'[Customers].[CustomerFeedbackSummary]'
GO
PRINT N'Refreshing [Sales].[CustomerOrdersView]'
GO
EXEC sp_refreshview N'[Sales].[CustomerOrdersView]'
GO
PRINT N'Creating [dbo].[AddressBook]'
GO
CREATE TABLE [dbo].[AddressBook]
(
[FirstName] [varchar] (100) NULL,
[LastName] [varchar] (100) NULL
)
GO
PRINT N'Done'

