USE [COMP3851B]
GO

/****** Object:  Table [dbo].[tutorialGuideCategory]    Script Date: 18/10/2022 12:50:33 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tutorialGuideCategory](
	[gdeCatId] [int] IDENTITY(1,1) NOT NULL,
	[gdeCatName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[gdeCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

