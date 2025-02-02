USE [ci]
GO
/****** Object:  Table [dbo].[Moving]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moving](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DeviceId] [int] NOT NULL,
	[DateOfMove] [datetime] NOT NULL,
	[Empolyee] [nvarchar](50) NULL,
	[OldRoomId] [int] NOT NULL,
	[NewRoomId] [int] NOT NULL,
 CONSTRAINT [PK_Moving_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Moving]  WITH CHECK ADD  CONSTRAINT [FK_Moving_Device_Id] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moving] CHECK CONSTRAINT [FK_Moving_Device_Id]
GO
ALTER TABLE [dbo].[Moving]  WITH CHECK ADD  CONSTRAINT [FK_Moving_House_Id] FOREIGN KEY([OldRoomId])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[Moving] CHECK CONSTRAINT [FK_Moving_House_Id]
GO
ALTER TABLE [dbo].[Moving]  WITH CHECK ADD  CONSTRAINT [FK_Moving_House_Id2] FOREIGN KEY([NewRoomId])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[Moving] CHECK CONSTRAINT [FK_Moving_House_Id2]
GO
