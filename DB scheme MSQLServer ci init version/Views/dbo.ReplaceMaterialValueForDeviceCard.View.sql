USE [ci]
GO
/****** Object:  View [dbo].[ReplaceMaterialValueForDeviceCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReplaceMaterialValueForDeviceCard] 
AS SELECT
  ReplaceMaterialValueForDevice.Id
 ,ReplaceMaterialValueForDevice.DeviceId
 ,DeviceCard.ModelName
 ,DeviceCard.SerialNumber
 ,DeviceCard.InventoryNumber
 ,DeviceType.Name AS TypeName
 ,DeviceCard.RoomId
 ,DeviceCard.RoomName
 ,ReplaceMaterialValueForDevice.ActionDate
 ,ReplaceMaterialValueForDevice.MaterialValueId
 ,MaterialValue.Name AS MaterialValueName
 ,MaterialValue.ManufacturerCode
 ,ReplaceMaterialValueForDevice.Employee
 ,ReplaceMaterialValueForDevice.WarehouseId
 ,dbo.FormatAddress(ReplaceMaterialValueForDevice.WarehouseId) AS Warehouse
 ,ReplaceMaterialValueForDevice.PrintPageCount
 ,DeviceCard.DepartmentId
 ,MaterialValueByPID.ItemNumber
 ,MaterialValueByPID.PID
 ,MaterialValueByPID.Year
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
