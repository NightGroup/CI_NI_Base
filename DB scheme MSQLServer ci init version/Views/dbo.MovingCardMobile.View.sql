USE [ci]
GO
/****** Object:  View [dbo].[MovingCardMobile]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MovingCardMobile] 
AS SELECT
  MovingCard.Id AS _id
 ,MovingCard.DeviceId
 ,CONVERT(NVARCHAR(10), MovingCard.DateOfMove, 104) AS DateOfMove
 ,MovingCard.Empolyee
 ,MovingCard.OldRoomName
 ,MovingCard.NewRoomName
FROM dbo.MovingCard
GO
