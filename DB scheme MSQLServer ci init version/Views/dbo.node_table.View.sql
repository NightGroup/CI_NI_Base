USE [ci]
GO
/****** Object:  View [dbo].[node_table]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[node_table] 
AS SELECT
  id
 ,node_dns_name
 ,node_ip_address
 ,node_mac_address
 ,device_type_id
 ,node_computer_db_id
 ,atlas_id
 ,node_monitoring_enable
 ,description
 ,user_id
FROM OPENQUERY(nidb161, 'SELECT * FROM nidb.node') AS derivedtbl_1
GO
