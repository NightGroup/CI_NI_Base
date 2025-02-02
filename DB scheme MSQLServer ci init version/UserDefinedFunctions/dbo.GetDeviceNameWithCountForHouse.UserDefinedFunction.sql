USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDeviceNameWithCountForHouse]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetDeviceNameWithCountForHouse] (@HouseId INT)
RETURNS NVARCHAR(250)
BEGIN
DECLARE @Ret  NVARCHAR(250);
DECLARE @HouseName NVARCHAR(150);

SELECT
  @HouseName = h.Name
FROM House h
WHERE h.Id = @HouseId;
SELECT
  @Ret = @HouseName + ' (' + CAST(COUNT(dc.Id) AS NVARCHAR) + ')'
FROM DeviceCard dc
WHERE dc.RoomId = @HouseId
OR dc.RoomId IN (SELECT
    Id
  FROM dbo.getRooms(@HouseId))
OPTION (MAXRECURSION 32767)

RETURN @Ret;

END
GO
