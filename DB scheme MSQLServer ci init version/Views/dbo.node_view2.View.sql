USE [ci]
GO
/****** Object:  View [dbo].[node_view2]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[node_view2] 
AS SELECT
  *
FROM OPENQUERY(NIDB161, 'SELECT * FROM nidb.node_view2')
GO
