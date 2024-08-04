USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetHouse]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHouse](@nID int)
AS 
BEGIN

SELECT
  h.Name
 ,h.ParentId
 ,h.Description
 ,h.RoomTypeId
FROM House h
WHERE h.Id = @nID;


END
GO
