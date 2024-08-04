USE [ci]
GO
/****** Object:  View [dbo].[SearchQueryCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SearchQueryCard]
AS
SELECT
  Query
 ,ModeId
FROM dbo.SearchQuery
WHERE SearchQuery.Employee = SUSER_SNAME()
GO
