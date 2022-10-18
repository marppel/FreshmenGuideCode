USE [COMP3851B]
GO

/****** Object:  Table [dbo].[campusEvent]    Script Date: 18/10/2022 12:48:31 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[campusEvent](
	[eventID] [int] IDENTITY(1,1) NOT NULL,
	[eventName] [nvarchar](255) NOT NULL,
	[eventImage] [varbinary](max) NULL,
	[eventDesc] [nvarchar](255) NULL,
	[eventType] [nvarchar](255) NULL,
	[eventDate] [date] NULL,
	[eventBeginTime] [time](7) NULL,
	[eventEndTime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

