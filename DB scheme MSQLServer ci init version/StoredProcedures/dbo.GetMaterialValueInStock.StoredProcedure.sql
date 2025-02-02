USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMaterialValueInStock]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMaterialValueInStock] (@WarehouseId INT)
AS 
BEGIN
SET NOCOUNT ON;

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
WHERE MaterialValueInStock.WarehouseId = @WarehouseId
--AND MaterialValueInStock.MaterialValueCount > 0
END
GO
