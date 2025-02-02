USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SetMaintenanceInfoForHouse]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetMaintenanceInfoForHouse] (@HouseId int, @ActionDate DATETIME, @TechnicalCardTypeOfWorkId tinyint)
AS
BEGIN

INSERT INTO Maintenance (DeviceId, ActionDate, TechnicalCardTypeOfWorkId)
  SELECT
    dc.Id AS DeviceId
   ,@ActionDate AS ActionDate
   ,@TechnicalCardTypeOfWorkId AS TechnicalCardTypeOfWorkId
  FROM DeviceCard dc
  WHERE dc.RoomId = @HouseId
  OR dc.RoomId IN (SELECT
      Id
    FROM dbo.getRooms(@HouseId))
  OPTION (MAXRECURSION 32767)

END
GO
