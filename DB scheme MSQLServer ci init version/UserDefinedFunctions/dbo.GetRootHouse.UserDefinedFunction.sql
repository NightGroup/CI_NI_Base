USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRootHouse]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[GetRootHouse] (@HouseId INT)
RETURNS TABLE
AS
  RETURN (
WITH tblParent
AS
(SELECT
    ParentId
   ,Id
  FROM House
  WHERE Id = @HouseId
  UNION ALL
  SELECT
    House.ParentId
   ,House.Id
  FROM House
  JOIN tblParent
    ON House.Id = tblParent.ParentId)

SELECT
  Id
FROM tblParent  -- WHERE Id <> @HouseId --OPTION(MAXRECURSION 32767)
)

GO
