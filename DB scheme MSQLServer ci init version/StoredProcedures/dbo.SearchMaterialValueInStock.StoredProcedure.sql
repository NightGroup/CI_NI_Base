USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SearchMaterialValueInStock]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SearchMaterialValueInStock] (@QueryString NVARCHAR(150))
AS
BEGIN
SET NOCOUNT ON;
  --SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
 
  DECLARE @did INT = 0;

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
  MaterialValueInStock.Id
 ,MaterialValueInStock.MaterialValueId
 ,MaterialValue.Name
 ,MaterialValueByPID.ItemNumber
 ,MaterialValueByPID.PID
 ,MaterialValue.ManufacturerCode
 ,MaterialValue.Description
 ,MaterialValueInStock.MaterialValueCount
  -- ,0 AS MaterialValueCount2
 ,MaterialValueByPID.Year
 ,ISNULL(MaterialValueByPID.Price, 0) AS Price
 ,ISNULL(MaterialValueByPID.Price, 0) * MaterialValueInStock.MaterialValueCount AS Sum
FROM dbo.MaterialValueInStock
INNER JOIN dbo.MaterialValueByPID
  ON MaterialValueInStock.MaterialValueId = MaterialValueByPID.Id
INNER JOIN dbo.MaterialValue
  ON MaterialValueByPID.MaterialValueId = MaterialValue.Id
WHERE MaterialValue.Name LIKE '%' + @QueryString + '%'
OR MaterialValueByPID.ItemNumber LIKE '%' + @QueryString + '%'
OR MaterialValueByPID.PID LIKE '%' + @QueryString + '%'
OR MaterialValue.ManufacturerCode LIKE '%' + @QueryString + '%'
OR MaterialValue.Description LIKE '%' + @QueryString + '%'

END
GO
