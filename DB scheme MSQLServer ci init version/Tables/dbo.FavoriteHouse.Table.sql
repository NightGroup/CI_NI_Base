USE [ci]
GO
/****** Object:  Table [dbo].[FavoriteHouse]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteHouse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HouseId] [int] NOT NULL,
	[Employee] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FavoriteHouse_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FavoriteHouse] ADD  DEFAULT (suser_sname()) FOR [Employee]
GO
