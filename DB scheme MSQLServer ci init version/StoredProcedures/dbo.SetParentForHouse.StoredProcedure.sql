USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SetParentForHouse]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetParentForHouse](@nHouseId INT, @nNewParentId INT)
AS 
BEGIN

UPDATE dbo.House
SET ParentId = @nNewParentId
WHERE Id = @nHouseId

END
GO
