
CREATE TABLE [dbo].[adminData](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[adminEmail] [nvarchar](255) NULL,
	[adminPassword] [nvarchar](255) NULL,
	[adminName] [nvarchar](255) NULL,
	[adminAge] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campus]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus](
	[campusID] [int] IDENTITY(1,1) NOT NULL,
	[campusLoc] [nvarchar](255) NULL,
	[campusImg] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[campusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campusAchievment]    Script Date: 04/10/2022 10:15:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campusEvent]    Script Date: 04/10/2022 10:15:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campusFacility]    Script Date: 04/10/2022 10:15:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[club]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[club](
	[clbID] [int] IDENTITY(1,1) NOT NULL,
	[clbTitle] [nvarchar](255) NOT NULL,
	[clbImage] [varbinary](max) NULL,
	[clbCat] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[clbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clubAbout]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clubAbout](
	[clbAbtID] [int] IDENTITY(1,1) NOT NULL,
	[clbID] [int] NULL,
	[clbFacebook] [nvarchar](255) NULL,
	[clbInstagram] [nvarchar](255) NULL,
	[clbAddress] [nvarchar](255) NULL,
	[clbEmail] [nvarchar](255) NULL,
	[clbMission] [nvarchar](255) NULL,
	[clbVission] [nvarchar](255) NULL,
	[clbPurpose] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[clbAbtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clubEvent]    Script Date: 04/10/2022 10:15:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[contactID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[lastName] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phoneNumber] [nvarchar](255) NULL,
	[major] [nvarchar](255) NULL,
	[studentNumber] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[contactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 04/10/2022 10:15:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseGuide]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseGuide](
	[cseGdeID] [int] IDENTITY(1,1) NOT NULL,
	[cseCatID] [int] NULL,
	[cseGdeTitle] [nvarchar](255) NULL,
	[cseGdeImg] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[cseGdeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseGuideCategory]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseGuideCategory](
	[cseCatID] [int] IDENTITY(1,1) NOT NULL,
	[cseCatName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cseCatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseGuideDetail]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseGuideDetail](
	[cseDtlID] [int] IDENTITY(1,1) NOT NULL,
	[cseGdeID] [int] NULL,
	[cseDtlStep] [nvarchar](255) NULL,
	[cseDtlTitle] [nvarchar](255) NULL,
	[cseDtlDesc] [nvarchar](255) NULL,
	[cseDtlImg] [varbinary](max) NULL,
	[cseDtlVideo] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[cseDtlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eSport]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eSport](
	[eSportID] [int] IDENTITY(1,1) NOT NULL,
	[gameName] [nvarchar](255) NULL,
	[gameDescription] [nvarchar](255) NULL,
	[gameType] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[eSportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eSportSchedule]    Script Date: 04/10/2022 10:15:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[localFood]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localFood](
	[foodID] [int] IDENTITY(1,1) NOT NULL,
	[foodName] [nvarchar](255) NULL,
	[foodImage] [varbinary](max) NULL,
	[foodLoc] [nvarchar](255) NULL,
	[foodRecLvl] [nvarchar](255) NULL,
	[foodPrice] [nvarchar](255) NULL,
	[foodDesc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[foodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seminar]    Script Date: 04/10/2022 10:15:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sport]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sport](
	[sportID] [int] IDENTITY(1,1) NOT NULL,
	[sportName] [nvarchar](255) NOT NULL,
	[gameDate] [date] NULL,
	[gameDescription] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[sportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentFeedback]    Script Date: 04/10/2022 10:15:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clubAbout]  WITH CHECK ADD FOREIGN KEY([clbID])
REFERENCES [dbo].[club] ([clbID])
GO
ALTER TABLE [dbo].[clubEvent]  WITH CHECK ADD FOREIGN KEY([clbID])
REFERENCES [dbo].[club] ([clbID])
GO
ALTER TABLE [dbo].[courseGuide]  WITH CHECK ADD FOREIGN KEY([cseCatID])
REFERENCES [dbo].[courseGuideCategory] ([cseCatID])
GO
ALTER TABLE [dbo].[courseGuideDetail]  WITH CHECK ADD FOREIGN KEY([cseGdeID])
REFERENCES [dbo].[courseGuide] ([cseGdeID])
GO
ALTER TABLE [dbo].[eSportSchedule]  WITH CHECK ADD FOREIGN KEY([eSportID])
REFERENCES [dbo].[eSport] ([eSportID])
GO

