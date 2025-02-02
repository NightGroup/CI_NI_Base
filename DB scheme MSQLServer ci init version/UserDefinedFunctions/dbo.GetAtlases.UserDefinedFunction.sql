USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetAtlases]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[GetAtlases] (@AtlasId INT)
RETURNS TABLE
AS
  RETURN (
WITH tblChild
AS
(SELECT
    id
  FROM atlas_view
  WHERE atlas_parent_id = @AtlasId
  UNION ALL
  SELECT
    atlas_view.id
  FROM atlas_view
  JOIN tblChild
    ON atlas_view.atlas_parent_id = tblChild.id)

SELECT
  *
FROM tblChild --OPTION(MAXRECURSION 32767)
)

GO
