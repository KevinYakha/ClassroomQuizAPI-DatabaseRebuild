CREATE PROCEDURE [dbo].[GET_quizdetails]
	@Id UNIQUEIDENTIFIER
AS
	SELECT Description, TimeLimit FROM Quizzes WHERE Id = @Id;
