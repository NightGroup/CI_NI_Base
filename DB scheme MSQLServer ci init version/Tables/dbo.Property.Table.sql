USE [ci]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PropertyNameId] [int] NOT NULL,
	[PropertyValue] [nvarchar](500) NOT NULL,
	[DeviceModelId] [int] NOT NULL,
 CONSTRAINT [PK_Property1_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_DeviceModel_Id] FOREIGN KEY([DeviceModelId])
REFERENCES [dbo].[DeviceModel] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_DeviceModel_Id]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_PropertyName_Id] FOREIGN KEY([PropertyNameId])
REFERENCES [dbo].[PropertyName] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_PropertyName_Id]
GO
