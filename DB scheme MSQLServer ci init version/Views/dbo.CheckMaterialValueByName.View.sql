USE [ci]
GO
/****** Object:  View [dbo].[CheckMaterialValueByName]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CheckMaterialValueByName]
AS
SELECT
  MaterialValue.Name
 ,COUNT(MaterialValue.Name) AS sncount
FROM dbo.MaterialValue
GROUP BY MaterialValue.Name
HAVING COUNT(MaterialValue.Name) > 1
GO
