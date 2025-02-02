USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SearchMaterialValueMoving]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchMaterialValueMoving] (@QueryString NVARCHAR(150))
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
  id
 ,Name
 ,ManufacturerCode
 ,Description
 ,ActionDate
 ,TheWarehouseSender
 ,WarehouseReceiver
 ,MaterialValueCount
 ,ItemNumber
 ,PID
 ,Price
 ,Sum
 ,Year
FROM dbo.MaterialValueMovingCard
WHERE MaterialValueMovingCard.Name LIKE '%' + @QueryString + '%'
OR MaterialValueMovingCard.ManufacturerCode LIKE '%' + @QueryString + '%'
OR MaterialValueMovingCard.TheWarehouseSender LIKE '%' + @QueryString + '%'
OR MaterialValueMovingCard.WarehouseReceiver LIKE '%' + @QueryString + '%'
OR MaterialValueMovingCard.Description LIKE '%' + @QueryString + '%'
OR MaterialValueMovingCard.ItemNumber LIKE '%' + @QueryString + '%'
OR MaterialValueMovingCard.PID LIKE '%' + @QueryString + '%'
OR MaterialValueMovingCard.Year LIKE '%' + @QueryString + '%'

END
GO
