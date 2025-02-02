USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDeviceCountForHouse]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateDeviceCountForHouse] (@HouseId INT)
AS 
BEGIN

-- UPDATE House SET DeviceCount = (SELECT dbo.GetDeviceCountForHouse(@HouseId)) WHERE Id = @HouseId;

UPDATE dbo.House
SET DeviceCount = dbo.GetDeviceCountForHouse(Id)
WHERE Id = @HouseId
OR Id IN (SELECT
    j.Id
  FROM dbo.getRootHouse(@HouseId) AS j)
OPTION (MAXRECURSION 32767)

--SELECT
--    dc.Id, dbo.GetDeviceCountForHouse(@HouseId) AS c
--  FROM DeviceCard dc
-- WHERE dc.RoomId = @HouseId
--  OR dc.RoomId IN (SELECT
--     Id
--   FROM dbo.getRooms(@HouseId))
-- OPTION (MAXRECURSION 32767)

END
GO
