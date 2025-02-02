USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[MoveDeviceForHouse]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MoveDeviceForHouse] (@HouseId INT, @deviceId INT)
AS
BEGIN
SET NOCOUNT ON;

UPDATE Device
SET RoomId = @HouseId
WHERE Id = @deviceId
OR Id IN (SELECT
    d.Id
  FROM dbo.getChildDevices(@deviceId) d)
OPTION (MAXRECURSION 32767)

UPDATE Device
SET IncludedIn = 0
WHERE Id = @deviceId

--SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
--SELECT dc.* FROM DeviceCard dc WHERE dc.RoomId = @HouseId OR dc.RoomId IN (SELECT Id FROM dbo.getRooms(@HouseId) ) OPTION(MAXRECURSION 32767)

END
GO
