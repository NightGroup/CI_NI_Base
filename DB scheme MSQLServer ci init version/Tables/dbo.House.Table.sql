USE [ci]
GO
/****** Object:  Table [dbo].[House]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ParentId] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[RoomTypeId] [tinyint] NOT NULL,
	[DeviceCount] [int] NOT NULL,
 CONSTRAINT [PK_House_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[House] ADD  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[House] ADD  DEFAULT ((1)) FOR [RoomTypeId]
GO
ALTER TABLE [dbo].[House] ADD  DEFAULT ((0)) FOR [DeviceCount]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_RoomType_Id] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_RoomType_Id]
GO
