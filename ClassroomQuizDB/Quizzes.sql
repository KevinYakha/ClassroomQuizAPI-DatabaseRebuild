﻿CREATE TABLE [dbo].[Quizzes]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(250) NOT NULL, 
    [TimeLimit] INT NOT NULL
)
