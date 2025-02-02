USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetModelsInfo]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetModelsInfo](@ManufacturerId int)
AS 
BEGIN

  IF(@ManufacturerId <> 0) 
    BEGIN
SELECT
  Id
 ,ModelName
 ,ManufacturerName
 ,TypeName
FROM dbo.DeviceModelCard
WHERE ManufacturerId = @ManufacturerId;
END
ELSE
BEGIN
SELECT
  Id
 ,ModelName
 ,ManufacturerName
 ,TypeName
FROM dbo.DeviceModelCard;
END

END
GO
