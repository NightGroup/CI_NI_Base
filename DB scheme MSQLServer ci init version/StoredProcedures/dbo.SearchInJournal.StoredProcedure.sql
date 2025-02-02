USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SearchInJournal]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchInJournal] (@QueryString NVARCHAR(150), @TypeId tinyint )
AS
BEGIN
SET NOCOUNT ON;
 
if @TypeId = 0
EXEC SearchMaterialValueInStock @QueryString
ELSE
IF @TypeId = 2
EXEC SearchMaterialValueMoving @QueryString
ELSE
EXEC SearchJournalOfMaterials @QueryString

END
GO
