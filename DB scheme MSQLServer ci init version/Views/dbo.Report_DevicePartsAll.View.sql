USE [ci]
GO
/****** Object:  View [dbo].[Report_DevicePartsAll]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Report_DevicePartsAll] 
AS SELECT
  dbo.Report_DeviceTypeList.ModelName
 ,dbo.MaterialValueForDeviceModelCard.Name
 ,dbo.MaterialValueForDeviceModelCard.ManufacturerCode
FROM dbo.MaterialValueForDeviceModelCard
INNER JOIN dbo.Report_DeviceTypeList
  ON dbo.MaterialValueForDeviceModelCard.ModelId = dbo.Report_DeviceTypeList.ModelId
GO
