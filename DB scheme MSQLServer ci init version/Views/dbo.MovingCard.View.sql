USE [ci]
GO
/****** Object:  View [dbo].[MovingCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MovingCard] as
SELECT
  Moving.Id
 ,Moving.DeviceId
 ,Moving.DateOfMove
 ,Moving.Empolyee
 ,Moving.OldRoomId
 ,Moving.NewRoomId
 ,dbo.FormatAddress(Moving.OldRoomId) AS OldRoomName
 ,dbo.FormatAddress(Moving.NewRoomId) AS NewRoomName
FROM dbo.Moving
GO
