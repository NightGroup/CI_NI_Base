USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SetMaintenanceInfoForDevice]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetMaintenanceInfoForDevice] (@DeviceId INT, @ActionDate DATETIME, @TechnicalCardTypeOfWorkId TINYINT)
AS
BEGIN

INSERT INTO Maintenance (DeviceId, ActionDate, TechnicalCardTypeOfWorkId)
  VALUES (@DeviceId, @ActionDate, @TechnicalCardTypeOfWorkId)

END
GO
