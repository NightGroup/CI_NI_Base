USE [ci]
GO
/****** Object:  View [dbo].[Report_DeviceTypeList2]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Report_DeviceTypeList2] 
AS SELECT DISTINCT TOP (100) PERCENT
  ModelId
 ,DeviceTypeName
 ,ModelName
FROM dbo.DeviceCard
WHERE (TypeId IN (4, 5, 6, 18, 10))
ORDER BY DeviceTypeName
GO
