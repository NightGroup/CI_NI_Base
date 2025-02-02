USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceModelInfo]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDeviceModelInfo] (@ManufacturerId INT)
AS 
BEGIN
SET NOCOUNT ON;
--SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
SELECT
  dc.*
FROM DeviceModel dc
WHERE dc.ManufacturerId = @ManufacturerId;

END

GO
