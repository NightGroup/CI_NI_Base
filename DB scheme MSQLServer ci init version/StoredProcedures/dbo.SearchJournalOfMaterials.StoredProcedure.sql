USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SearchJournalOfMaterials]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchJournalOfMaterials] (@QueryString NVARCHAR(150))
AS
BEGIN
SET NOCOUNT ON;
  --SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
 
  IF(NOT EXISTS (SELECT
    Query
  FROM SearchQuery
  WHERE Query = @QueryString
  AND ModeId = 2
  AND Employee = SUSER_SNAME())
)
BEGIN
INSERT INTO SearchQuery (Query, ModeId)
  VALUES (@QueryString, 2)
END

SELECT
  ActionDate
 ,ModelName
 ,RoomName
 ,SerialNumber
 ,MaterialValueName
 ,TotalPrintedPage
 ,Employee
 ,ItemNumber
 ,PID
 ,Year
FROM dbo.JournalOfMaterials
WHERE JournalOfMaterials.ModelName LIKE '%' + @QueryString + '%'
OR JournalOfMaterials.RoomName LIKE '%' + @QueryString + '%'
OR JournalOfMaterials.SerialNumber LIKE '%' + @QueryString + '%'
OR JournalOfMaterials.MaterialValueName LIKE '%' + @QueryString + '%'
OR JournalOfMaterials.Employee LIKE '%' + @QueryString + '%'
OR JournalOfMaterials.ItemNumber LIKE '%' + @QueryString + '%'
OR JournalOfMaterials.PID LIKE '%' + @QueryString + '%'
OR JournalOfMaterials.Year LIKE '%' + @QueryString + '%'

END
GO
