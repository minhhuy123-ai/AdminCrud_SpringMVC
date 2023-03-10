create database ShoppingDB
Go
USE [ShoppingDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/04/2019 15:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[user_mail] [varchar](100) NOT NULL,
	[password] [varchar](64) NOT NULL,
	[account_role] [int] NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_address] [nvarchar](255) NULL,
	[user_phone] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_mail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

--account table
INSERT [dbo].[Account] ([user_mail], [password], [account_role], [user_name], [user_address], [user_phone]) 
VALUES (N'huynm90@fpt.com.vn', N'123', 1, N'Nguyen Minh Huy', N'Đại học FPT', N'0765870407')
--customer
INSERT [dbo].[Account] ([user_mail], [password], [account_role], [user_name], [user_address], [user_phone]) 
VALUES (N'duydt@fpt.com.vn', N'123', 0, N'Dao Trong Duy', N'Đại học FPT', N'1234567')