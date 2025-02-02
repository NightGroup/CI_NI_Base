USE [ci]
GO
/****** Object:  Table [dbo].[MaterialValueForDeviceModel]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialValueForDeviceModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModelId] [int] NOT NULL,
	[MaterialValueId] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_MaterialValueForDeviceModel_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MaterialValueForDeviceModel]  WITH CHECK ADD  CONSTRAINT [FK_MaterialValueForDeviceModel_DeviceModel_Id] FOREIGN KEY([ModelId])
REFERENCES [dbo].[DeviceModel] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialValueForDeviceModel] CHECK CONSTRAINT [FK_MaterialValueForDeviceModel_DeviceModel_Id]
GO
ALTER TABLE [dbo].[MaterialValueForDeviceModel]  WITH CHECK ADD  CONSTRAINT [FK_MaterialValueForDeviceModel_MaterialValue_Id] FOREIGN KEY([MaterialValueId])
REFERENCES [dbo].[MaterialValue] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialValueForDeviceModel] CHECK CONSTRAINT [FK_MaterialValueForDeviceModel_MaterialValue_Id]
GO
