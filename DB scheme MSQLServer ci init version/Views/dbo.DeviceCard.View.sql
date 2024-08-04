USE [ci]
GO
/****** Object:  View [dbo].[DeviceCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[DeviceCard] 
AS SELECT
  Device.Id
 ,Device.ModelId
 ,DeviceModelCard.ModelName
 ,DeviceModelCard.ManufacturerId
 ,DeviceModelCard.TypeId
 ,Device.InventoryNumber
 ,Device.SerialNumber
 ,Device.DateOfCommissioning
 ,Device.MateriallyResponsiblePerson
 ,Device.RoomId
 ,dbo.GetDepartmentId(Device.RoomId) AS DepartmentId
 ,dbo.FormatAddress(Device.RoomId) AS RoomName
 ,Device.IncludedIn
 ,Device.StatusId
 ,DeviceStatus.Name AS StatusName
 ,DeviceModelCard.Picture
 ,DeviceType.Name AS DeviceTypeName
 ,DeviceType.TechnicalСardId
 ,TechnicalСard.Number
 ,TechnicalСard.CreateDate
 ,Device.Description
 ,Device.Employee
 ,DeviceModelCard.ModelOptions
 ,'node_table.node_dns_name' AS node_dns_name
 ,'node_table.node_ip_address' AS node_ip_address
 ,CAST(0 AS BIT) AS node_monitoring_enable
 ,CAST(0 AS BIT) AS HasMonNode

FROM dbo.DeviceModelCard
INNER JOIN dbo.Device
  ON DeviceModelCard.Id = Device.ModelId
INNER JOIN dbo.DeviceStatus
  ON Device.StatusId = DeviceStatus.Id
INNER JOIN dbo.DeviceType
  ON DeviceType.Id = DeviceModelCard.TypeId
INNER JOIN dbo.TechnicalСard
  ON DeviceType.TechnicalСardId = TechnicalСard.Id


GO
