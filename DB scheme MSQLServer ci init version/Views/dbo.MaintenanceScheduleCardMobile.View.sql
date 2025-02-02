USE [ci]
GO
/****** Object:  View [dbo].[MaintenanceScheduleCardMobile]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaintenanceScheduleCardMobile] 
AS SELECT
  Device.Id AS DeviceId
 ,MaintenanceScheduleCard.TechnicalCardTypeOfWorkId
 ,MaintenanceScheduleCard.Name AS TechnicalCardTypeOfWorkName
 ,MaintenanceScheduleCard.Month
 ,MaintenanceScheduleCard.MaintenanceScheduleYearName
FROM dbo.MaintenanceScheduleCard
INNER JOIN dbo.Device
  ON MaintenanceScheduleCard.HouseId = Device.RoomId
GO
