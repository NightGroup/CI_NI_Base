USE [ci]
GO
/****** Object:  View [dbo].[node_device_type_view]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[node_device_type_view]
AS
SELECT
  id
 ,device_manufacturer_id
 ,device_subcategory_id
 ,device_category_id
 ,device_class_id
 ,image_db_id
 ,image_db_16
 ,image_db_24
 ,image_db_64
 ,image_db_name
 ,device_subcategory_name
FROM OPENQUERY(NIDB161, 'SELECT * FROM nidb.device_type_view') AS derivedtbl_1


GO
