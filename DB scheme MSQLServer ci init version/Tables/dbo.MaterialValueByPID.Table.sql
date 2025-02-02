USE [ci]
GO
/****** Object:  Table [dbo].[MaterialValueByPID]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialValueByPID](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialValueId] [int] NOT NULL,
	[PID] [nvarchar](20) NOT NULL,
	[Price] [money] NOT NULL,
	[Year] [int] NOT NULL,
	[ItemNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MaterialValueByPID_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MaterialValueByPID] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[MaterialValueByPID]  WITH CHECK ADD  CONSTRAINT [FK_MaterialValueByPID_MaterialValue_Id] FOREIGN KEY([MaterialValueId])
REFERENCES [dbo].[MaterialValue] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialValueByPID] CHECK CONSTRAINT [FK_MaterialValueByPID_MaterialValue_Id]
GO
