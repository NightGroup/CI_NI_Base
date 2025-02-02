USE [ci]
GO
/****** Object:  Table [dbo].[MaterialValueInStock]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialValueInStock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[MaterialValueId] [int] NOT NULL,
	[MaterialValueCount] [int] NOT NULL,
 CONSTRAINT [PK_MaterialValueInStock_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MaterialValueInStock] ADD  DEFAULT ((0)) FOR [MaterialValueCount]
GO
ALTER TABLE [dbo].[MaterialValueInStock]  WITH CHECK ADD  CONSTRAINT [FK_MaterialValueInStock_House_Id] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialValueInStock] CHECK CONSTRAINT [FK_MaterialValueInStock_House_Id]
GO
ALTER TABLE [dbo].[MaterialValueInStock]  WITH CHECK ADD  CONSTRAINT [FK_MaterialValueInStock_MaterialValueByPID_Id] FOREIGN KEY([MaterialValueId])
REFERENCES [dbo].[MaterialValueByPID] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialValueInStock] CHECK CONSTRAINT [FK_MaterialValueInStock_MaterialValueByPID_Id]
GO
