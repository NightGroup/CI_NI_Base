USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetReportUseMaterialValueByDepId]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetReportUseMaterialValueByDepId] (@DepartmentId INT, @ActionDateStart DATE, @ActionDateEnd DATE)
AS
BEGIN
SET NOCOUNT ON;

SELECT
  *
FROM (SELECT DISTINCT
    ModelName
   ,STUFF
    ((SELECT
        '; ' + ReportUseMaterialValue.MaterialValueName + ' (' + CAST(COUNT(ReportUseMaterialValue.MaterialValueName) AS NVARCHAR) + ' шт.)'
      FROM dbo.ReportUseMaterialValue
      WHERE ReportUseMaterialValue.ModelId = t.Id
      AND DepartmentId = @DepartmentId
      AND ReportUseMaterialValue.ActionDate BETWEEN @ActionDateStart AND @ActionDateEnd
      GROUP BY ReportUseMaterialValue.ModelId
              ,ReportUseMaterialValue.MaterialValueName

      ORDER BY ModelId
      FOR XML PATH (''))
    , 1, 1, '') MaterialValueCount
  FROM DeviceModelCard t) AS Responsible


END
GO
