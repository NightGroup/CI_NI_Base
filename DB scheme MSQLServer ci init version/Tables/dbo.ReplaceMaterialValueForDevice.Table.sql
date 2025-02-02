USE [ci]
GO
/****** Object:  Table [dbo].[ReplaceMaterialValueForDevice]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplaceMaterialValueForDevice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceId] [int] NOT NULL,
	[ActionDate] [datetime] NOT NULL,
	[MaterialValueId] [int] NOT NULL,
	[Employee] [nvarchar](50) NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[PrintPageCount] [int] NULL,
	[Description] [nvarchar](350) NULL,
 CONSTRAINT [PK_ReplaceMaterialValueForDevice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReplaceMaterialValueForDevice] ADD  DEFAULT (suser_sname()) FOR [Employee]
GO
ALTER TABLE [dbo].[ReplaceMaterialValueForDevice]  WITH CHECK ADD  CONSTRAINT [FK_ReplaceMaterialValueForDevice_Device_Id] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReplaceMaterialValueForDevice] CHECK CONSTRAINT [FK_ReplaceMaterialValueForDevice_Device_Id]
GO
ALTER TABLE [dbo].[ReplaceMaterialValueForDevice]  WITH CHECK ADD  CONSTRAINT [FK_ReplaceMaterialValueForDevice_MaterialValueByPID_Id] FOREIGN KEY([MaterialValueId])
REFERENCES [dbo].[MaterialValueByPID] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReplaceMaterialValueForDevice] CHECK CONSTRAINT [FK_ReplaceMaterialValueForDevice_MaterialValueByPID_Id]
GO
