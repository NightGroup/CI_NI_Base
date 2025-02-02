USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetWorkForMonth]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetWorkForMonth] (@HouseId INT, @Month SMALLINT, @YearId TINYINT)
RETURNS NVARCHAR(10)
BEGIN
DECLARE @Ret NVARCHAR(10);

SELECT TOP 1
  @ret = MaintenanceScheduleCard4.Shortname
FROM MaintenanceScheduleCard4
WHERE MaintenanceScheduleCard4.MaintenanceScheduleYearId = @YearId
AND MaintenanceScheduleCard4.HouseId = @HouseId
AND MaintenanceScheduleCard4.Month = @Month

RETURN @Ret;
END
GO
