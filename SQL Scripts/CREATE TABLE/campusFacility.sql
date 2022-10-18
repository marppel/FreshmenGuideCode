USE [COMP3851B]
GO

/****** Object:  Table [dbo].[campusFacility]    Script Date: 18/10/2022 12:48:44 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[campusFacility](
	[facilityID] [int] IDENTITY(1,1) NOT NULL,
	[facilityName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[facilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
