USE [COMP3851B]
GO

/****** Object:  Table [dbo].[adminData]    Script Date: 18/10/2022 12:47:28 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[adminData](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[adminEmail] [nvarchar](255) NULL,
	[adminPassword] [nvarchar](255) NULL,
	[adminName] [nvarchar](255) NULL,
	[adminAge] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

