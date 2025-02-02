USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMaintenanceScheduleForHouse]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMaintenanceScheduleForHouse] (@HouseId INT)
AS
BEGIN
SET NOCOUNT ON;

WITH ms
AS
(SELECT
    MaintenanceScheduleYear.Name AS Year
   ,MaintenanceScheduleCard4.Month
   ,MaintenanceScheduleCard4.ShortName
  FROM dbo.MaintenanceScheduleYear
  INNER JOIN dbo.MaintenanceScheduleCard4
    ON MaintenanceScheduleYear.Id = MaintenanceScheduleCard4.MaintenanceScheduleYearId
  WHERE MaintenanceScheduleCard4.HouseId = @HouseId)

SELECT DISTINCT
  d.YEAR
 ,STUFF((SELECT
      ',' + CAST(c.Month AS NVARCHAR) + ' (' + c.ShortName + ')'
    FROM ms c
    WHERE c.Year = d.Year
    ORDER BY c.Month
    FOR XML PATH (''))
  ,
  1, 1, '') lst

FROM ms d
ORDER BY year DESC;

END
GO
