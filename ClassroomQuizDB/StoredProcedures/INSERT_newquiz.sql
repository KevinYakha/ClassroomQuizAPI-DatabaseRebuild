CREATE PROCEDURE [dbo].[INSERT_newquiz]
	@Title NVARCHAR(50),
	@Description NVARCHAR(250),
	@TimeLimit INT
AS
	INSERT INTO Quizzes (Id,	  Title,  Description,  TimeLimit)
	OUTPUT Inserted.Id
	VALUES				(NEWID(), @Title, @Description, @TimeLimit);
