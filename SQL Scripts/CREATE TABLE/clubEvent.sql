USE [COMP3851B]
GO

/****** Object:  Table [dbo].[clubEvent]    Script Date: 18/10/2022 12:48:59 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[clubEvent](
	[clbEvntID] [int] IDENTITY(1,1) NOT NULL,
	[clbID] [int] NULL,
	[clbEvntName] [nvarchar](255) NULL,
	[clbEvntDate] [date] NULL,
	[clbEvntStartTIme] [time](7) NULL,
	[clbEvntEndTime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[clbEvntID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[clubEvent]  WITH CHECK ADD  CONSTRAINT [FK__clubEvent__clbID__46E78A0C] FOREIGN KEY([clbID])
REFERENCES [dbo].[club] ([clbID])
GO

ALTER TABLE [dbo].[clubEvent] CHECK CONSTRAINT [FK__clubEvent__clbID__46E78A0C]
GO

