USE [ci]
GO
/****** Object:  Table [dbo].[DeviceModel]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ManufacturerId] [int] NOT NULL,
	[TypeId] [int] NULL,
	[Picture] [varbinary](max) NULL,
	[Description] [nvarchar](300) NULL,
 CONSTRAINT [PK_DeviceModel_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeviceModel]  WITH CHECK ADD  CONSTRAINT [FK_DeviceModel_DeviceManufacturer_Id] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[DeviceManufacturer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceModel] CHECK CONSTRAINT [FK_DeviceModel_DeviceManufacturer_Id]
GO
