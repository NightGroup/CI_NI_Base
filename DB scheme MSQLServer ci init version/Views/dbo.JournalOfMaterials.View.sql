USE [ci]
GO
/****** Object:  View [dbo].[JournalOfMaterials]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[JournalOfMaterials] 
AS SELECT
  ReplaceMaterialValueForDeviceCard.ActionDate
 ,ReplaceMaterialValueForDeviceCard.ModelName
 ,ReplaceMaterialValueForDeviceCard.RoomName
 ,ReplaceMaterialValueForDeviceCard.SerialNumber
 ,ReplaceMaterialValueForDeviceCard.MaterialValueName
 ,ISNULL(ReplaceMaterialValueForDeviceCard.PrintPageCount, 0) AS TotalPrintedPage
 ,ReplaceMaterialValueForDeviceCard.Employee
 ,ReplaceMaterialValueForDeviceCard.DepartmentId
 ,ReplaceMaterialValueForDeviceCard.ItemNumber
 ,ReplaceMaterialValueForDeviceCard.PID
 ,ReplaceMaterialValueForDeviceCard.Year
FROM dbo.ReplaceMaterialValueForDeviceCard
GO
