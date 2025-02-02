USE [ci]
GO
/****** Object:  View [dbo].[ReportUseMaterialValue]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReportUseMaterialValue] 
AS SELECT
  ReplaceMaterialValueForDevice.DeviceId
 ,DeviceCard.ModelName
 ,MaterialValue.Name AS MaterialValueName
 ,ReplaceMaterialValueForDevice.ActionDate
 ,DeviceCard.ModelId
 ,DeviceCard.DepartmentId
FROM dbo.ReplaceMaterialValueForDevice
INNER JOIN dbo.DeviceCard
  ON DeviceCard.Id = ReplaceMaterialValueForDevice.DeviceId
INNER JOIN dbo.DeviceType
  ON DeviceType.Id = DeviceCard.TypeId
CROSS JOIN dbo.MaterialValue
INNER JOIN dbo.MaterialValueByPID
  ON MaterialValueByPID.MaterialValueId = MaterialValue.Id
    AND MaterialValueByPID.Id = ReplaceMaterialValueForDevice.MaterialValueId
GO
