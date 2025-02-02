USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRooms]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetRooms] (@RoomId INT)
RETURNS TABLE  
AS
RETURN(
WITH tblChild
AS
(SELECT
    Id
  FROM House
  WHERE ParentId = @RoomId
  UNION ALL
  SELECT
    House.Id
  FROM House
  JOIN tblChild
    ON House.ParentId = tblChild.Id)
SELECT
  *
FROM tblChild --OPTION(MAXRECURSION 32767)
)

GO
