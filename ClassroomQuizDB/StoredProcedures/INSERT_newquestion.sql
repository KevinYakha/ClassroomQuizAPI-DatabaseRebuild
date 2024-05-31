CREATE PROCEDURE [dbo].[INSERT_newquestion]
	@TimeLimit INT,
	@A1 NVARCHAR(250),
	@A2 NVARCHAR(250),
	@A3 NVARCHAR(250),
	@A4 NVARCHAR(250),
	@Answer INT,
	@Question NVARCHAR(250),
	@QuizId UNIQUEIDENTIFIER
AS
	INSERT INTO Questions 
	(Id,	  TimeLimit,  A1,  A2,  A3,  A4,  Answer,  Question,  QuizId)
	VALUES 
	(NEWID(), @TimeLimit, @A1, @A2, @A3, @A4, @Answer, @Question, @QuizId);
