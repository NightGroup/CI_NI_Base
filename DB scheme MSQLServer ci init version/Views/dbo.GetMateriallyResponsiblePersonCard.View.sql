USE [ci]
GO
/****** Object:  View [dbo].[GetMateriallyResponsiblePersonCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GetMateriallyResponsiblePersonCard]
AS
SELECT DISTINCT
  Device.MateriallyResponsiblePerson
FROM dbo.Device
WHERE Device.MateriallyResponsiblePerson IS NOT NULL
GO
