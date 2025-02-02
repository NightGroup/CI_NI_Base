USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SetNewDeviceParentId]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetNewDeviceParentId](@nNewParentId INT, @nDeviceId INT)
AS
BEGIN

UPDATE dbo.Device
SET IncludedIn = @nNewParentId
WHERE Id = @nDeviceId

EXEC UpdateDeviceRoom @nNewParentId
                     ,@nDeviceId

END
GO
