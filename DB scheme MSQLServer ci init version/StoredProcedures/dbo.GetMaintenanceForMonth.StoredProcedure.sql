USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMaintenanceForMonth]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMaintenanceForMonth](@HouseId INT,@Month SMALLINT, @Year int)
AS
BEGIN

SELECT
  MaintenanceCard2.ModelName
 ,MaintenanceCard2.SerialNumber
 ,MaintenanceCard2.DeviceTypeName
 ,MaintenanceCard2.Number
 ,MaintenanceCard2.CreateDate
 ,MaintenanceCard2.ShortName
 ,MaintenanceCard2.ActionDate
FROM dbo.MaintenanceCard2
WHERE MONTH(MaintenanceCard2.ActionDate) = @Month
AND YEAR(MaintenanceCard2.ActionDate) = @Year
AND MaintenanceCard2.RoomId IN (SELECT
    Id
  FROM dbo.GetRooms(@HouseId))
OPTION (MAXRECURSION 32767)

END
GO
