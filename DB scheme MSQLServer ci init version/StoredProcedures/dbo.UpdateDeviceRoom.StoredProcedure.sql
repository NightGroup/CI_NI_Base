USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDeviceRoom]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateDeviceRoom](@parentId INT, @deviceId INT)
AS
BEGIN
SET NOCOUNT ON;
DECLARE @houseId INT

SELECT
  @houseId = d.RoomId
FROM Device d
WHERE d.Id = @parentId

UPDATE Device
SET RoomId = @houseId
WHERE Id = @deviceId
OR Id IN (SELECT
    d.Id
  FROM dbo.getChildDevices(@deviceId) d)
OPTION (MAXRECURSION 32767)

-- EXEC dbo.UpdateDeviceCountForHouse @houseId;

END
GO
