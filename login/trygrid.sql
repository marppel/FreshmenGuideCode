CREATE TABLE [dbo].[StudentFeedback]
(
	[StudentfeedbackID] INT identity (1,1) NOT NULL PRIMARY KEY, 
    [StudentNumber] NVARCHAR(50) NULL, 
    [Name] NVARCHAR(MAX) NULL, 
    [Email] NVARCHAR(MAX) NULL
)
Go