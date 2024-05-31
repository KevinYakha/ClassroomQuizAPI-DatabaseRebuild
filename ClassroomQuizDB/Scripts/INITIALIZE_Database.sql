/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

-- Insert quizzes
INSERT INTO [dbo].[Quizzes] (Id, Title, Description, TimeLimit) VALUES
    (NEWID(), 'Math Quiz', 'A basic math quiz.', 300),
    (NEWID(), 'Science Quiz', 'A basic science quiz.', 300);

-- Insert questions for Math Quiz
DECLARE @MathQuizId UNIQUEIDENTIFIER;
SET @MathQuizId = (SELECT Id FROM [dbo].[Quizzes] WHERE Title = 'Math Quiz');

INSERT INTO [dbo].[Questions] (Id, TimeLimit, A1, A2, A3, A4, Answer, Question, QuizId) VALUES
    (NEWID(), 60, '2', '3', '4', '5', 3, 'What is 2 + 2?', @MathQuizId),
    (NEWID(), 60, '6', '8', '10', '12', 2, 'What is 4 * 2?', @MathQuizId),
    (NEWID(), 60, '2', '3', '1', '0', 4, 'What is 3 - 3?', @MathQuizId);

-- Insert questions for Science Quiz
DECLARE @ScienceQuizId UNIQUEIDENTIFIER;
SET @ScienceQuizId = (SELECT Id FROM [dbo].[Quizzes] WHERE Title = 'Science Quiz');

INSERT INTO [dbo].[Questions] (Id, TimeLimit, A1, A2, A3, A4, Answer, Question, QuizId) VALUES
    (NEWID(), 60, 'H2O', 'CO2', 'O2', 'NaCl', 1, 'What is the chemical formula for water?', @ScienceQuizId),
    (NEWID(), 60, 'Earth', 'Mars', 'Jupiter', 'Saturn', 3, 'Which is the largest planet in the solar system?', @ScienceQuizId),
    (NEWID(), 60, 'Helium', 'Hydrogen', 'Oxygen', 'Carbon', 2, 'What is the most abundant element in the universe?', @ScienceQuizId);
