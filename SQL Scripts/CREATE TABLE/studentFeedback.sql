USE [COMP3851B]
GO

/****** Object:  Table [dbo].[studentFeedback]    Script Date: 18/10/2022 12:50:18 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[studentFeedback](
	[feedbackID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [nvarchar](255) NULL,
	[studentName] [nvarchar](255) NULL,
	[studentFeedback] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

