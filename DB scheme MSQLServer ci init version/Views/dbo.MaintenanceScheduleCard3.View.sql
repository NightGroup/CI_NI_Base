USE [ci]
GO
/****** Object:  View [dbo].[MaintenanceScheduleCard3]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaintenanceScheduleCard3] 
AS SELECT
  MaintenanceScheduleCard2.HouseId
 ,MaintenanceScheduleCard2.MaintenanceScheduleYearId
 ,CAST(MaintenanceScheduleYear.Name AS NVARCHAR) + ': ' +
  MaintenanceScheduleCard2.lst AS lst2
FROM dbo.MaintenanceScheduleYear
INNER JOIN dbo.MaintenanceScheduleCard2
  ON MaintenanceScheduleYear.Id = MaintenanceScheduleCard2.MaintenanceScheduleYearId
GO
