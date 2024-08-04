USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[procedure1]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedure1]
AS 
BEGIN

DECLARE @ControlTypeTable Table (control_type_id BIGINT, value VARCHAR(2000), max_action_dt DATETIME2, header VARCHAR(2260) );
INSERT @ControlTypeTable EXEC ('CALL GetMonitoringValue(' + '1555' + ')') AT nidb161;

SELECT
  *
FROM @T;
END

GO
