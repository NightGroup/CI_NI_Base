USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[AddToMonitoring]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddToMonitoring] (@dnsname NVARCHAR(200), @ipaddress NVARCHAR(15), @macaddress NVARCHAR(25), @typeid INT, @dbid INT, @atlasid INT, @monitoringenable TINYINT, @description NVARCHAR(255))
AS
BEGIN

  IF NOT EXISTS (SELECT
    id
  FROM node_table
  WHERE node_computer_db_id = @dbid)
BEGIN
INSERT INTO node_table (node_dns_name, node_ip_address, node_mac_address, device_type_id, node_computer_db_id, atlas_id, node_monitoring_enable, description)
  VALUES (@dnsname, @ipaddress, @macaddress, @typeid, @dbid, @atlasid, @monitoringenable, @description)

END
ELSE
BEGIN
UPDATE node_table
SET node_monitoring_enable = @monitoringenable
   ,node_dns_name = @dnsname
   ,node_ip_address = @ipaddress
   ,node_mac_address = @macaddress
   ,atlas_id = @atlasid
   ,description = @description
WHERE node_computer_db_id = @dbid;

END

-- Execute ('AddToMonitoring') at nidb161

END
GO
