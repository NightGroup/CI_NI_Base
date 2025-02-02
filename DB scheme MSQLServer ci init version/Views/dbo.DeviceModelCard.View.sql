USE [ci]
GO
/****** Object:  View [dbo].[DeviceModelCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeviceModelCard] 
AS SELECT
  DeviceModel.Id
 ,DeviceManufacturer.Name + ' ' + DeviceModel.Name AS ModelName
 ,DeviceModel.ManufacturerId
 ,DeviceModel.TypeId
 ,DeviceModel.Picture
 ,DeviceManufacturer.Name AS ManufacturerName
 ,DeviceType.Name AS TypeName
 ,DeviceModel.Name
 ,DeviceModel.Description AS ModelOptions
FROM dbo.DeviceModel
INNER JOIN dbo.DeviceManufacturer
  ON DeviceModel.ManufacturerId = DeviceManufacturer.Id
INNER JOIN dbo.DeviceType
  ON DeviceModel.TypeId = DeviceType.Id
GO
