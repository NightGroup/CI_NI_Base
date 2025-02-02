USE [ci]
GO
/****** Object:  View [dbo].[MaterualValueInStockCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaterualValueInStockCard] 
AS SELECT
  MaterialValueInStock.Id
 ,MaterialValueInStock.WarehouseId
 ,WarehouseCard.Warehouse
 ,MaterialValueInStock.MaterialValueId
 ,MaterialValue.Name
 ,MaterialValue.ManufacturerCode
 ,MaterialValue.Description
 ,MaterialValueInStock.MaterialValueCount
 ,MaterialValueByPID.ItemNumber
 ,MaterialValueByPID.PID
 ,ISNULL(MaterialValueByPID.Price, 0) AS Price
  --  ,MaterialValueByPID.Price
 ,MaterialValueByPID.Year
 ,ISNULL(MaterialValueByPID.Price, 0) * MaterialValueInStock.MaterialValueCount AS Sum
FROM dbo.WarehouseCard
INNER JOIN dbo.MaterialValueInStock
  ON WarehouseCard.Id = MaterialValueInStock.WarehouseId
INNER JOIN dbo.MaterialValueByPID
  ON MaterialValueInStock.MaterialValueId = MaterialValueByPID.Id
INNER JOIN dbo.MaterialValue
  ON MaterialValueByPID.MaterialValueId = MaterialValue.Id
WHERE MaterialValueInStock.MaterialValueCount > 0
GO
