USE [ci]
GO
/****** Object:  View [dbo].[MaterialTemplateCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaterialTemplateCard] 
AS
SELECT
  MaterialValue.Id
 ,MaterialValue.Name
 ,MaterialValue.ManufacturerCode
 ,MaterialValue.Description
 ,MaterialValueByPID.PID
 ,MaterialValueByPID.Price
 ,MaterialValueByPID.Year
 ,MaterialValueByPID.ItemNumber
FROM dbo.MaterialValueByPID
RIGHT OUTER JOIN dbo.MaterialValue
  ON MaterialValueByPID.MaterialValueId = MaterialValue.Id

GO
