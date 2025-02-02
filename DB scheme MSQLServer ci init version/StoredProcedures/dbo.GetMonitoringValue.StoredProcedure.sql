USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMonitoringValue]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMonitoringValue] (@node_computer_db_id INT)
AS
BEGIN
  --  SET NOCOUNT ON;
  DECLARE @sqlCommand VARCHAR(300)
  DECLARE @ControlTypeTable TABLE (
    control_type_id BIGINT
   ,control_color_name NVARCHAR(6)
   ,value NVARCHAR(2000)
   ,max_action_dt DATETIME
   ,header NVARCHAR(2260)
  )

SET @sqlCommand = 'SELECT control_type_id, control_color_name, value, max_action_dt, header FROM OPENQUERY(NIDB161,''CALL GetMonitoringValue(' + CAST(@node_computer_db_id AS VARCHAR) + ')'')'


INSERT INTO @ControlTypeTable EXEC (@sqlCommand)
SELECT
  control_type_id
 ,control_color_name
 ,value
 ,max_action_dt
 ,header
FROM @ControlTypeTable


-- control_type_id BIGINT(1), control_color_name VARCHAR(6), value VARCHAR(2000), max_action_dt DATETIME, header VARCHAR(2260)

END
GO
