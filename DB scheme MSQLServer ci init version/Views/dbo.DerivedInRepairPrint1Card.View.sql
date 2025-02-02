USE [ci]
GO
/****** Object:  View [dbo].[DerivedInRepairPrint1Card]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DerivedInRepairPrint1Card] 
AS SELECT
  DerivedInRepairPrintCard.Id
 ,DerivedInRepairPrintCard.ModelName
 ,DerivedInRepairPrintCard.InventoryNumber
 ,DerivedInRepairPrintCard.SerialNumber
 ,DerivedInRepairPrintCard.RoomName
 ,DerivedInRepairPrintCard.DateInForRepair
 ,DerivedInRepairPrintCard.Defect
 ,DerivedInRepairPrintCard.Employee
FROM dbo.DerivedInRepairPrintCard
WHERE DerivedInRepairPrintCard.WhereRepairId IS NULL
OR DerivedInRepairPrintCard.WhereRepairId = 1
GO
