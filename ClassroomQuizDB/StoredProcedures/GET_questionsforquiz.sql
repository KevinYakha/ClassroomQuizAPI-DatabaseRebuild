CREATE PROCEDURE [dbo].[GET_questionsforquiz]
	@QuizId UNIQUEIDENTIFIER
AS
	SELECT Id, TimeLimit, A1, A2, A3, A4, Answer, Question
	FROM Questions WHERE QuizId = @QuizId;
