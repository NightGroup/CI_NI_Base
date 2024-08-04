USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[InsertMaintenanceScheduleMonth]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertMaintenanceScheduleMonth](@MaintenanceScheduleId BIGINT, @MaintenanceScheduleMonth SMALLINT, @m SMALLINT)
AS 
BEGIN
 IF @m = 1
INSERT INTO MaintenanceScheduleMonth (MaintenanceScheduleId, Month)
  VALUES (@MaintenanceScheduleId, @MaintenanceScheduleMonth)

END

GO
