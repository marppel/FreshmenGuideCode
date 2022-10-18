USE [COMP3851B]
GO

/****** Object:  Table [dbo].[localFood]    Script Date: 18/10/2022 12:49:58 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[localFood](
	[foodID] [int] IDENTITY(1,1) NOT NULL,
	[foodName] [nvarchar](255) NULL,
	[foodImage] [varbinary](max) NULL,
	[foodLoc] [nvarchar](255) NULL,
	[foodRecLvl] [nvarchar](255) NULL,
	[foodPrice] [nvarchar](255) NULL,
	[foodDesc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[foodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

