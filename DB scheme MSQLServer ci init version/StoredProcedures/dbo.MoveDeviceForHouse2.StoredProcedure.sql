USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[MoveDeviceForHouse2]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MoveDeviceForHouse2] (@HouseId INT, @deviceId INT)
AS
BEGIN
SET NOCOUNT ON;

UPDATE Device
SET RoomId = @HouseId
   ,IncludedIn = 0
WHERE Id = @deviceId

UPDATE Device
SET IncludedIn = 0
WHERE IncludedIn = @deviceId


--SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
--SELECT dc.* FROM DeviceCard dc WHERE dc.RoomId = @HouseId OR dc.RoomId IN (SELECT Id FROM dbo.getRooms(@HouseId) ) OPTION(MAXRECURSION 32767)

END
GO
