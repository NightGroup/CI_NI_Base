USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceInfo]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDeviceInfo] (@DeviceId INT)
AS 
BEGIN
SET NOCOUNT ON;
--SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
SELECT
  dc.*
FROM DeviceCard dc
WHERE dc.Id = @DeviceId;

END

GO
