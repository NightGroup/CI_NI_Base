USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceForHouse]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetDeviceForHouse] (@HouseId INT)
AS 
BEGIN
SET NOCOUNT ON;
--SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
SELECT
  dc.*
FROM DeviceCard dc
WHERE dc.RoomId = @HouseId
OR dc.RoomId IN (SELECT
    Id
  FROM dbo.getRooms(@HouseId))
OPTION (MAXRECURSION 32767)

END

GO
