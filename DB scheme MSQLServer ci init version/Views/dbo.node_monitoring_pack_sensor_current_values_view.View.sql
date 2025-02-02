USE [ci]
GO
/****** Object:  View [dbo].[node_monitoring_pack_sensor_current_values_view]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[node_monitoring_pack_sensor_current_values_view] 
AS SELECT
  node_dns_name
 ,node_monitoring_pack_sensor_name_def
 ,Value
 ,node_computer_db_id
 ,action_dt
 ,node_id
FROM OPENQUERY(NIDB161, 'SELECT * FROM nidb.node_monitoring_pack_sensor_current_values_view') AS derivedtbl_1


GO
