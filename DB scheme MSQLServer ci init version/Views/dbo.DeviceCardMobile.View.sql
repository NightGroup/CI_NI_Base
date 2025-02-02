USE [ci]
GO
/****** Object:  View [dbo].[DeviceCardMobile]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeviceCardMobile] 
AS SELECT
  Device.Id AS _id
 ,Device.ModelId
 ,DeviceModelCard.ModelName
 ,DeviceModelCard.ManufacturerId
 ,DeviceModelCard.TypeId
 ,Device.InventoryNumber
 ,Device.SerialNumber
 ,CONVERT(NVARCHAR(10), Device.DateOfCommissioning, 104) AS DateOfCommissioning
 ,Device.MateriallyResponsiblePerson
 ,Device.RoomId
 ,dbo.GetDepartmentId(Device.RoomId) AS DepartmentId
 ,dbo.FormatAddress(Device.RoomId) AS RoomName
 ,Device.IncludedIn
 ,Device.StatusId
 ,DeviceStatus.Name AS StatusName
 ,CAST(N'' AS XML).value(
  'xs:base64Binary(xs:hexBinary(sql:column("DeviceModelCard.Picture")))'
  , 'VARCHAR(MAX)'
  ) AS Picture
  --,DeviceModelCard.Picture
 ,DeviceType.Name AS DeviceTypeName
 ,DeviceType.TechnicalСardId
 ,Device.Description
 ,Device.Employee
 ,TechnicalСard2.Name AS TechnicalCardName
FROM dbo.DeviceModelCard
INNER JOIN dbo.Device
  ON DeviceModelCard.Id = Device.ModelId
INNER JOIN dbo.DeviceStatus
  ON Device.StatusId = DeviceStatus.Id
INNER JOIN dbo.DeviceType
  ON DeviceType.Id = DeviceModelCard.TypeId
INNER JOIN dbo.TechnicalСard2
  ON DeviceType.TechnicalСardId = TechnicalСard2.Id
GO
