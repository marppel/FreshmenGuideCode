USE [COMP3851B]
GO

/****** Object:  Table [dbo].[course]    Script Date: 18/10/2022 12:49:33 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[course](
	[courseID] [int] IDENTITY(1,1) NOT NULL,
	[courseName] [nvarchar](255) NULL,
	[courseDesc] [varchar](255) NULL,
	[coursePict] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

