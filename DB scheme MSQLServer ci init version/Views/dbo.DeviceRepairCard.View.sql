USE [ci]
GO
/****** Object:  View [dbo].[DeviceRepairCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeviceRepairCard] 
AS SELECT
  DeviceRepair.Id
 ,DeviceRepair.DeviceId
 ,DeviceRepair.ReturnDateOfRepair
 ,DeviceRepair.DateInForRepair
 ,DeviceRepair.WhereRepairId
 ,WhereRepair.Name AS WhereRepairName
 ,DeviceRepair.Defect
 ,DeviceRepair.Result
FROM dbo.WhereRepair
INNER JOIN dbo.DeviceRepair
  ON WhereRepair.Id = DeviceRepair.WhereRepairId
GO
