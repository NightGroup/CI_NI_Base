USE [ci]
GO
/****** Object:  View [dbo].[Report_ForREN]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Report_ForREN] 
AS SELECT
  Report_DeviceTypeList2.ModelName
 ,MaterialValueForDeviceModelCard.Name
 ,MaterialValueForDeviceModelCard.ManufacturerCode
 ,DeviceInstalledCount.ModelCount
FROM dbo.MaterialValueForDeviceModelCard
RIGHT OUTER JOIN dbo.Report_DeviceTypeList2
  ON MaterialValueForDeviceModelCard.ModelId = Report_DeviceTypeList2.ModelId
LEFT OUTER JOIN dbo.DeviceInstalledCount
  ON DeviceInstalledCount.ModelId = Report_DeviceTypeList2.ModelId
GO
