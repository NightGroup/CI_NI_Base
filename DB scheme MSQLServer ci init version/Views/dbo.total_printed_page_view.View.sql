USE [ci]
GO
/****** Object:  View [dbo].[total_printed_page_view]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[total_printed_page_view] 
AS SELECT
  Value
 ,node_computer_db_id
FROM OPENQUERY(NIDB161, 'SELECT * FROM nidb.total_printed_page_current_view') AS derivedtbl_1

--


--
-- Изменить представление "[dbo].[node_view2]"
--
GO
