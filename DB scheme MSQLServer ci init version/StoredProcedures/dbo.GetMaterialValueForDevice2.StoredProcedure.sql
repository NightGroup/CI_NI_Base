USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMaterialValueForDevice2]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMaterialValueForDevice2] (@ModelId INT, @WarehouseId INT)
AS
BEGIN
SET NOCOUNT ON;
SELECT
  MaterialValueByPID.Id AS MaterialValueId
 ,MaterialValue.Name
 ,MaterialValue.ManufacturerCode
 ,MaterialValueByPID.ItemNumber
 ,MaterialValueInStock.MaterialValueCount
 ,MaterialValue.Description
  --   ,MaterialValueForDeviceModel.Id
 ,MaterialValueByPID.PID
 ,MaterialValueByPID.Year
FROM dbo.MaterialValue
INNER JOIN dbo.MaterialValueForDeviceModel
  ON MaterialValue.Id = MaterialValueForDeviceModel.MaterialValueId
INNER JOIN dbo.MaterialValueByPID
  ON MaterialValueByPID.MaterialValueId = MaterialValue.Id
INNER JOIN dbo.MaterialValueInStock
  ON MaterialValueInStock.MaterialValueId = MaterialValueByPID.Id
WHERE MaterialValueForDeviceModel.ModelId = @ModelId
--AND MaterialValueInStock.MaterialValueCount > 0
AND MaterialValueInStock.WarehouseId = @WarehouseId
END
GO
