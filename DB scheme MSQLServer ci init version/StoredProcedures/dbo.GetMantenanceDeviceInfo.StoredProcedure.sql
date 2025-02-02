USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMantenanceDeviceInfo]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMantenanceDeviceInfo] (@DeviceId INT)
AS
BEGIN
SET NOCOUNT ON;

SELECT
  MaintenanceCard.Id
 ,MaintenanceCard.Name
 ,MaintenanceCard.ActionDate
 ,MaintenanceCard.TechnicalCardTypeOfWork
 ,MaintenanceCard.Employee
FROM dbo.MaintenanceCard
WHERE MaintenanceCard.DeviceId = @DeviceId
END
GO
