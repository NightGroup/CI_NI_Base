USE [ci]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModelId] [int] NOT NULL,
	[InventoryNumber] [nvarchar](50) NOT NULL,
	[SerialNumber] [nvarchar](50) NOT NULL,
	[DateOfCommissioning] [datetime] NULL,
	[MateriallyResponsiblePerson] [nvarchar](150) NULL,
	[RoomId] [int] NOT NULL,
	[IncludedIn] [int] NULL,
	[StatusId] [tinyint] NOT NULL,
	[Description] [nvarchar](300) NULL,
	[Employee] [nvarchar](50) NULL,
 CONSTRAINT [PK_Device_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Device] ADD  DEFAULT ((4)) FOR [StatusId]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_DeviceModel_Id] FOREIGN KEY([ModelId])
REFERENCES [dbo].[DeviceModel] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_DeviceModel_Id]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_DeviceStatus_Id] FOREIGN KEY([StatusId])
REFERENCES [dbo].[DeviceStatus] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_DeviceStatus_Id]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_House_Id] FOREIGN KEY([RoomId])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_House_Id]
GO
