USE [ci]
GO
/****** Object:  View [dbo].[MaterialValueForDeviceModelCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaterialValueForDeviceModelCard]
AS
SELECT
  dbo.MaterialValueForDeviceModel.Id
 ,dbo.MaterialValueForDeviceModel.ModelId
 ,dbo.MaterialValue.Name
 ,dbo.MaterialValue.ManufacturerCode
 ,dbo.MaterialValue.Description
 ,dbo.MaterialValueForDeviceModel.MaterialValueId
 ,dbo.MaterialValueForDeviceModel.Description AS MaterialValueForDeviceModelDescription
 ,dbo.MaterialValue.Parts
FROM dbo.MaterialValueForDeviceModel
INNER JOIN dbo.MaterialValue
  ON dbo.MaterialValueForDeviceModel.MaterialValueId = dbo.MaterialValue.Id
 