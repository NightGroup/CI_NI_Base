USE [ci]
GO
/****** Object:  View [dbo].[node_monitoring_history_last_view]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[node_monitoring_history_last_view]
AS
SELECT
  node_dns_name
 ,node_monitoring_pack_sensor_name_def
 ,Value
 ,node_computer_db_id
 ,max_action_dt
 ,node_id
FROM OPENQUERY(NIDB161, 'SELECT * FROM nidb.node_monitoring_history_last_view') AS derivedtbl_1


--
-- Изменить представление "[dbo].[node_device_type_view]"
--
GO
