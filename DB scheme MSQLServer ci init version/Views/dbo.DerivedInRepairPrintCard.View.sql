USE [ci]
GO
/****** Object:  View [dbo].[DerivedInRepairPrintCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DerivedInRepairPrintCard] 
AS SELECT
  DeviceCard.Id
 ,DeviceCard.ModelName
 ,DeviceCard.InventoryNumber
 ,DeviceCard.SerialNumber
 ,DeviceCard.RoomName
 ,DeviceRepairCard.DateInForRepair
 ,DeviceRepairCard.Defect
 ,DeviceCard.Employee
 ,DeviceRepairCard.WhereRepairId
FROM dbo.DeviceCard
LEFT OUTER JOIN dbo.DeviceRepairCard
  ON DeviceCard.Id = DeviceRepairCard.DeviceId
WHERE DeviceCard.StatusId = 2
AND DeviceRepairCard.ReturnDateOfRepair IS NULL
GO
