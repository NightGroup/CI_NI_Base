USE [ci]
GO
/****** Object:  View [dbo].[DeviceInstalledCount]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeviceInstalledCount] 
AS SELECT
  Device.ModelId
 ,COUNT(Device.Id) AS ModelCount
FROM dbo.Device
WHERE Device.RoomId NOT IN (343, 345, 355, 356, 360, 378, 507, 392)
GROUP BY Device.ModelId
GO
