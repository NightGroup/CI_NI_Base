USE [ci]
GO
/****** Object:  View [dbo].[MaintenanceCard2]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaintenanceCard2] 
AS SELECT
  Maintenance.Id
 ,Maintenance.DeviceId
 ,Maintenance.ActionDate
 ,Maintenance.TechnicalCardTypeOfWorkId
 ,DeviceCard.ModelId
 ,DeviceCard.ModelName
 ,DeviceCard.ManufacturerId
 ,DeviceCard.TypeId
 ,DeviceCard.SerialNumber
 ,DeviceCard.RoomId
 ,DeviceCard.DepartmentId
 ,DeviceCard.DeviceTypeName
 ,DeviceCard.TechnicalСardId
 ,DeviceCard.Number
 ,DeviceCard.CreateDate
 ,TechnicalCardTypeOfWork.ShortName
FROM dbo.Maintenance
INNER JOIN dbo.DeviceCard
  ON Maintenance.DeviceId = DeviceCard.Id
INNER JOIN dbo.TechnicalCardTypeOfWork
  ON TechnicalCardTypeOfWork.Id = Maintenance.TechnicalCardTypeOfWorkId
GO
