USE [COMP3851B]
GO

/****** Object:  Table [dbo].[eSport]    Script Date: 18/10/2022 12:49:41 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[eSport](
	[eSportID] [int] IDENTITY(1,1) NOT NULL,
	[gameName] [nvarchar](255) NULL,
	[gameDescription] [nvarchar](255) NULL,
	[gameType] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[eSportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

