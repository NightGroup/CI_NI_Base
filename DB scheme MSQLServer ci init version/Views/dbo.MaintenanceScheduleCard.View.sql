USE [ci]
GO
/****** Object:  View [dbo].[MaintenanceScheduleCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaintenanceScheduleCard] 
AS SELECT TOP (100) PERCENT
  MaintenanceSchedule.Id
 ,MaintenanceSchedule.HouseId
 ,MaintenanceSchedule.MaintenanceScheduleYearId
 ,MaintenanceSchedule.Month
 ,MaintenanceSchedule.TechnicalCardTypeOfWorkId
 ,TechnicalCardTypeOfWork.Name
 ,MaintenanceScheduleYear.Name AS MaintenanceScheduleYearName
FROM dbo.TechnicalCardTypeOfWork
INNER JOIN dbo.MaintenanceSchedule
  ON TechnicalCardTypeOfWork.Id = MaintenanceSchedule.TechnicalCardTypeOfWorkId
INNER JOIN dbo.MaintenanceScheduleYear
  ON MaintenanceScheduleYear.Id = MaintenanceSchedule.MaintenanceScheduleYearId
ORDER BY MaintenanceSchedule.Month
GO
