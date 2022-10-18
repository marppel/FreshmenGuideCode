USE [COMP3851B]
GO

/****** Object:  Table [dbo].[club]    Script Date: 18/10/2022 12:48:52 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[club](
	[clbID] [int] IDENTITY(1,1) NOT NULL,
	[clbTitle] [nvarchar](255) NULL,
	[clbImage] [nvarchar](255) NULL,
	[clbCat] [nvarchar](255) NULL,
	[clbSlogan] [nvarchar](255) NULL,
	[clbFacebook] [nvarchar](255) NULL,
	[clbInstagram] [nvarchar](255) NULL,
	[clbAddress] [nvarchar](255) NULL,
	[clbEmail] [nvarchar](255) NULL,
	[clbMission] [nvarchar](255) NULL,
	[clbVision] [nvarchar](255) NULL,
	[clbPurpose] [nvarchar](255) NULL,
 CONSTRAINT [PK__club__71A87D5074017499] PRIMARY KEY CLUSTERED 
(
	[clbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

