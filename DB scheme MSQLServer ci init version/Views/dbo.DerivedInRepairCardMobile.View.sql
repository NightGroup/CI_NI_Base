USE [ci]
GO
/****** Object:  View [dbo].[DerivedInRepairCardMobile]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DerivedInRepairCardMobile] 
AS SELECT
  DeviceRepair.Id AS _id
 ,DeviceRepair.DeviceId
 ,CONVERT(NVARCHAR(10), DeviceRepair.ReturnDateOfRepair, 104) AS ReturnDateOfRepair
 ,CONVERT(NVARCHAR(10), DeviceRepair.DateInForRepair, 104) AS DateInForRepair
 ,WhereRepair.Name AS WhereRepairName
 ,DeviceRepair.Defect
 ,DeviceRepair.Result
FROM dbo.DeviceRepair
INNER JOIN dbo.WhereRepair
  ON DeviceRepair.WhereRepairId = WhereRepair.Id
GO
