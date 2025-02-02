USE [ci]
GO
/****** Object:  View [dbo].[MaintenanceScheduleCard4]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaintenanceScheduleCard4] 
AS SELECT
  MaintenanceSchedule.HouseId
 ,MaintenanceSchedule.MaintenanceScheduleYearId
 ,MaintenanceSchedule.Month
 ,TechnicalCardTypeOfWork.ShortName
FROM dbo.TechnicalCardTypeOfWork
INNER JOIN dbo.MaintenanceSchedule
  ON TechnicalCardTypeOfWork.Id = MaintenanceSchedule.TechnicalCardTypeOfWorkId

GO
