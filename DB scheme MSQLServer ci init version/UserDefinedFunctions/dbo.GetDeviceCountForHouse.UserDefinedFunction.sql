USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDeviceCountForHouse]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetDeviceCountForHouse] (@HouseId INT)
RETURNS int
BEGIN
DECLARE @Ret INT;
SELECT
  @Ret = COUNT(dc.Id)
FROM DeviceCard dc
WHERE dc.RoomId = @HouseId
OR dc.RoomId IN (SELECT
    Id
  FROM dbo.getRooms(@HouseId))
OPTION (MAXRECURSION 32767)

RETURN ISNULL(@Ret, 0);
END
GO
