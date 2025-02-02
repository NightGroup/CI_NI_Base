USE [ci]
GO
/****** Object:  Table [dbo].[MaterialValueMoving]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialValueMoving](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialValueId] [int] NOT NULL,
	[ActionDate] [datetime] NOT NULL,
	[TheWarehouseSenderId] [int] NOT NULL,
	[WarehouseReceiverId] [int] NOT NULL,
	[MaterialValueCount] [int] NOT NULL,
 CONSTRAINT [PK_MaterialValueMoving_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MaterialValueMoving] ADD  DEFAULT ((0)) FOR [MaterialValueCount]
GO
ALTER TABLE [dbo].[MaterialValueMoving]  WITH CHECK ADD  CONSTRAINT [FK_MaterialValueMoving_House_Id] FOREIGN KEY([WarehouseReceiverId])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[MaterialValueMoving] CHECK CONSTRAINT [FK_MaterialValueMoving_House_Id]
GO
ALTER TABLE [dbo].[MaterialValueMoving]  WITH CHECK ADD  CONSTRAINT [FK_MaterialValueMoving_House_Id2] FOREIGN KEY([TheWarehouseSenderId])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[MaterialValueMoving] CHECK CONSTRAINT [FK_MaterialValueMoving_House_Id2]
GO
ALTER TABLE [dbo].[MaterialValueMoving]  WITH CHECK ADD  CONSTRAINT [FK_MaterialValueMoving_MaterialValueByPID_Id] FOREIGN KEY([MaterialValueId])
REFERENCES [dbo].[MaterialValueByPID] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialValueMoving] CHECK CONSTRAINT [FK_MaterialValueMoving_MaterialValueByPID_Id]
GO
