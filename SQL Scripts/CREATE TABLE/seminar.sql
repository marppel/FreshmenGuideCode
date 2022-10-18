USE [COMP3851B]
GO

/****** Object:  Table [dbo].[seminar]    Script Date: 18/10/2022 12:50:04 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[seminar](
	[seminarID] [int] IDENTITY(1,1) NOT NULL,
	[seminarImage] [varbinary](max) NULL,
	[seminarDate] [date] NULL,
	[seminarName] [nvarchar](255) NULL,
	[seminarDesc] [nvarchar](255) NULL,
	[seminarLoc] [nvarchar](255) NULL,
	[seminarStartTime] [time](7) NULL,
	[seminarEndTime] [time](7) NULL,
	[seminarOpenTo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[seminarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

