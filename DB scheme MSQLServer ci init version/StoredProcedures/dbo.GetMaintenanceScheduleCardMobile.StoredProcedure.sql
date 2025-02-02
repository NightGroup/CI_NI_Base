USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMaintenanceScheduleCardMobile]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMaintenanceScheduleCardMobile](@month SMALLINT, @year INT)
AS

SET NOCOUNT ON;

SELECT
  MaintenanceScheduleCardMobile.DeviceId
 ,MaintenanceScheduleCardMobile.TechnicalCardTypeOfWorkId
 ,MaintenanceScheduleCardMobile.TechnicalCardTypeOfWorkName
FROM dbo.MaintenanceScheduleCardMobile
WHERE MaintenanceScheduleCardMobile.Month = @Month
AND MaintenanceScheduleCardMobile.MaintenanceScheduleYearName = @Year;
GO
