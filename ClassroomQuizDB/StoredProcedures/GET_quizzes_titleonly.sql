CREATE PROCEDURE [dbo].[GET_quizzes_titleonly]
AS
	SELECT Id, Title FROM Quizzes
