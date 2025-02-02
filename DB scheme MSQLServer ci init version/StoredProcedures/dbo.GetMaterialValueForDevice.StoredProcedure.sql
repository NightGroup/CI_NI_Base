USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMaterialValueForDevice]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMaterialValueForDevice] (@ModelId INT)
AS
BEGIN
SET NOCOUNT ON;

SELECT
  MaterialValueForDeviceModel.MaterialValueId
 ,MaterialValue.Name
 ,MaterialValue.ManufacturerCode

 ,MaterialValue.Description
 ,MaterialValueForDeviceModel.Id
 ,MaterialValue.Parts
FROM dbo.MaterialValue
INNER JOIN dbo.MaterialValueForDeviceModel
  ON MaterialValue.Id = MaterialValueForDeviceModel.MaterialValueId
WHERE MaterialValueForDeviceModel.ModelId = @ModelId
END
GO
