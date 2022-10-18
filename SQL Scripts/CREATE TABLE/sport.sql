USE [COMP3851B]
GO

/****** Object:  Table [dbo].[sport]    Script Date: 18/10/2022 12:50:10 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sport](
	[sportID] [int] IDENTITY(1,1) NOT NULL,
	[sportName] [nvarchar](255) NOT NULL,
	[gameDate] [date] NULL,
	[gameDescription] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[sportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

