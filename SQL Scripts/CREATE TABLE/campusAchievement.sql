USE [COMP3851B]
GO

/****** Object:  Table [dbo].[campusAchievment]    Script Date: 18/10/2022 12:48:22 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[campusAchievment](
	[achievID] [int] IDENTITY(1,1) NOT NULL,
	[acheivName] [nvarchar](255) NOT NULL,
	[acheivImage] [varbinary](max) NULL,
	[achievType] [nvarchar](255) NULL,
	[timeEarned] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[achievID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

