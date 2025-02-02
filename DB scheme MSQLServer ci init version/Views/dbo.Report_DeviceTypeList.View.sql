USE [ci]
GO
/****** Object:  View [dbo].[Report_DeviceTypeList]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Report_DeviceTypeList]
AS
SELECT DISTINCT TOP (100) PERCENT
  ModelId
 ,DeviceTypeName
 ,ModelName
FROM dbo.DeviceCard
WHERE (TypeId NOT IN (14, 1))
ORDER BY DeviceTypeName
GO
 
