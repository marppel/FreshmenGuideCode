USE [COMP3851B]
GO

/****** Object:  Table [dbo].[eSportSchedule]    Script Date: 18/10/2022 12:49:50 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[eSportSchedule](
	[scheduleID] [int] IDENTITY(1,1) NOT NULL,
	[eSportID] [int] NULL,
	[gameDate] [date] NULL,
	[gameStartTime] [time](7) NULL,
	[shedInfo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[scheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[eSportSchedule]  WITH CHECK ADD FOREIGN KEY([eSportID])
REFERENCES [dbo].[eSport] ([eSportID])
GO

