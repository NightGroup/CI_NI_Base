USE [ci]
GO
/****** Object:  View [dbo].[TechnicalСard2]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TechnicalСard2] 
AS SELECT
  TechnicalСard.Id
 ,'№ ' + TechnicalСard.Number + ' от ' + dbo.FormatDate3(TechnicalСard.CreateDate) AS Name
FROM dbo.TechnicalСard

GO
