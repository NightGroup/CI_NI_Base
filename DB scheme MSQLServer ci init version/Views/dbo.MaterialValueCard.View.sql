USE [ci]
GO
/****** Object:  View [dbo].[MaterialValueCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaterialValueCard]
AS
SELECT
  MaterialValue.Id
 ,MaterialValue.Name
 ,MaterialValue.ManufacturerCode
 ,MaterialValue.Name + ' ' + MaterialValue.ManufacturerCode AS NameWithCode
 ,MaterialValue.Description
 ,MaterialValue.Parts
FROM dbo.MaterialValue
GO
