USE [ci]
GO
/****** Object:  View [dbo].[MaintenanceScheduleCard2]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaintenanceScheduleCard2] 
AS SELECT DISTINCT
  d.HouseId
 ,d.MaintenanceScheduleYearId
 ,STUFF((SELECT
      ',' + CAST(c.month AS NVARCHAR) + ' (' + c.Name + ')'
    FROM MaintenanceScheduleCard c
    WHERE c.HouseId = d.HouseId
    ORDER BY c.month
    FOR XML PATH (''))
  ,
  1, 1, '') lst
FROM (SELECT DISTINCT
    HouseId
   ,month
   ,name
   ,MaintenanceScheduleYearId
  FROM MaintenanceScheduleCard) d
GO
