USE [ci]
GO
/****** Object:  View [dbo].[CheckMaterialValue]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CheckMaterialValue]
AS
SELECT
  MaterialValue.ManufacturerCode
 ,COUNT(MaterialValue.ManufacturerCode) AS sncount
FROM dbo.MaterialValue
GROUP BY MaterialValue.ManufacturerCode
HAVING COUNT(MaterialValue.ManufacturerCode) > 1
GO
