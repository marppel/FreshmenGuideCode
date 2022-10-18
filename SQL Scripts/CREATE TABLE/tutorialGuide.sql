USE [COMP3851B]
GO

/****** Object:  Table [dbo].[tutorialGuide]    Script Date: 18/10/2022 12:55:46 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tutorialGuide](
	[gdeID] [int] IDENTITY(1,1) NOT NULL,
	[gdeCatId] [int] NOT NULL,
	[GdeTitle] [nvarchar](255) NULL,
	[GdeDesc] [varbinary](max) NULL,
 CONSTRAINT [PK__courseGu__8DAA4F7AFBD74078] PRIMARY KEY CLUSTERED 
(
	[gdeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[tutorialGuide]  WITH CHECK ADD  CONSTRAINT [FK__courseGui__cseCa__47DBAE45] FOREIGN KEY([gdeCatId])
REFERENCES [dbo].[tutorialGuideCategory] ([gdeCatID])
GO

ALTER TABLE [dbo].[tutorialGuide] CHECK CONSTRAINT [FK__courseGui__cseCa__47DBAE45]
GO

