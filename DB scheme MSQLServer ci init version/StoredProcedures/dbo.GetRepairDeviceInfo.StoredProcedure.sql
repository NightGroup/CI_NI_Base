USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetRepairDeviceInfo]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRepairDeviceInfo] (@DeviceId INT)
AS 
BEGIN
SET NOCOUNT ON;

SELECT
  DeviceRepairCard.Id
 ,DeviceRepairCard.DateInForRepair
 ,DeviceRepairCard.ReturnDateOfRepair
 ,DeviceRepairCard.WhereRepairName
 ,DeviceRepairCard.Defect
 ,DeviceRepairCard.Result
FROM dbo.DeviceRepairCard
WHERE DeviceRepairCard.DeviceId = @DeviceId
END

GO
