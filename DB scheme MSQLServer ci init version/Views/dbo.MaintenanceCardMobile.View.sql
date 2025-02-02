USE [ci]
GO
/****** Object:  View [dbo].[MaintenanceCardMobile]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaintenanceCardMobile] 
AS SELECT
  Maintenance.Id AS _id
 ,TechnicalСard2.Name
 ,Maintenance.DeviceId
 ,CONVERT(NVARCHAR(10), Maintenance.ActionDate, 104) AS ActionDate
 ,TechnicalCardTypeOfWork.Name AS TechnicalCardTypeOfWork
 ,Maintenance.Employee
FROM dbo.Maintenance
INNER JOIN dbo.Device
  ON Maintenance.DeviceId = Device.Id
INNER JOIN dbo.DeviceModel
  ON Device.ModelId = DeviceModel.Id
INNER JOIN dbo.DeviceType
  ON DeviceModel.TypeId = DeviceType.Id
INNER JOIN dbo.TechnicalСard2
  ON TechnicalСard2.Id = DeviceType.TechnicalСardId
INNER JOIN dbo.TechnicalCardTypeOfWork
  ON Maintenance.TechnicalCardTypeOfWorkId = TechnicalCardTypeOfWork.Id
GO
