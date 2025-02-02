USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetMonitoringValue3]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMonitoringValue3] (@node_computer_db_id INT)
RETURNS @ControlTypeTable TABLE (control_type_id INT )  AS
  BEGIN
  	
    DECLARE @sqlCommand VARCHAR(300)
--   set @sqlCommand = 'INSERT INTO @yy SELECT control_type_id FROM OPENQUERY (nidb161, ''CALL GetMonitoringValue('+ CAST( @node_computer_db_id AS VARCHAR)+')'')';
--   set @sqlCommand = 'INSERT INTO @yy SELECT control_type_id FROM OPENQUERY (nidb161, ''CALL GetMonitoringValue(@node_computer_db_id)'')';
--  EXECUTE sp_executesql @sqlCommand, N'@node_computer_db_id int', @node_computer_db_id = @node_computer_db_id;

-- INSERT INTO @yy SELECT control_type_id FROM OPENQUERY (nidb161, @sqlCommand)
--  exec sp_executesql @sqlCommand

INSERT INTO @ControlTypeTable
  SELECT
    control_type_id
  FROM OPENQUERY(nidb161, 'CALL GetMonitoringValue(2653)')

-- INSERT INTO @yy EXEC ('CALL GetMonitoringValue(?)', @node_computer_db_id ) AT NIDB161;


-- SET @sqlCommand = 'CALL GetMonitoringValue('+CAST(@node_computer_db_id AS VARCHAR)+')'

-- SET @sqlCommand = 'SELECT * FROM OPENQUERY(NIDB161,'''+@sqlCommand+''')'

-- EXEC (@sqlCommand)

RETURN
END

GO
