USE [ci]
GO
/****** Object:  View [dbo].[DeviceFavoriteCardMobile]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeviceFavoriteCardMobile] 
AS SELECT
  DeviceCardMobile._id
 ,DeviceCardMobile.ModelId
 ,DeviceCardMobile.ModelName
 ,DeviceCardMobile.ManufacturerId
 ,DeviceCardMobile.TypeId
 ,DeviceCardMobile.InventoryNumber
 ,DeviceCardMobile.SerialNumber
 ,DeviceCardMobile.DateOfCommissioning
 ,DeviceCardMobile.MateriallyResponsiblePerson
 ,DeviceCardMobile.RoomId
 ,DeviceCardMobile.DepartmentId
 ,DeviceCardMobile.RoomName
 ,DeviceCardMobile.IncludedIn
 ,DeviceCardMobile.StatusId
 ,DeviceCardMobile.StatusName
 ,DeviceCardMobile.Picture
 ,DeviceCardMobile.DeviceTypeName
 ,DeviceCardMobile.TechnicalСardId
 ,DeviceCardMobile.Description
 ,DeviceCardMobile.Employee
 ,DeviceCardMobile.TechnicalCardName
 ,Favorite._id AS IsFavorite
FROM dbo.DeviceCardMobile
LEFT OUTER JOIN dbo.Favorite
  ON DeviceCardMobile._id = Favorite.DeviceId
GO
