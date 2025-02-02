USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetReplaceMaterialValueForDevice]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetReplaceMaterialValueForDevice] (@DeviceId INT)
AS 
BEGIN
SET NOCOUNT ON;

SELECT
  ReplaceMaterialValueForDeviceCard.Id
 ,ReplaceMaterialValueForDeviceCard.ActionDate
 ,ReplaceMaterialValueForDeviceCard.MaterialValueName
 ,ReplaceMaterialValueForDeviceCard.ManufacturerCode
 ,ReplaceMaterialValueForDeviceCard.Employee
 ,ReplaceMaterialValueForDeviceCard.Warehouse
 ,ReplaceMaterialValueForDeviceCard.PrintPageCount
 ,ReplaceMaterialValueForDeviceCard.ItemNumber
 ,ReplaceMaterialValueForDeviceCard.PID
 ,ReplaceMaterialValueForDeviceCard.Year
FROM dbo.ReplaceMaterialValueForDeviceCard
WHERE ReplaceMaterialValueForDeviceCard.DeviceId = @DeviceId
ORDER BY ReplaceMaterialValueForDeviceCard.ActionDate DESC
END
GO
