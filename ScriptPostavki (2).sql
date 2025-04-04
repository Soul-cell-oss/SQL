CREATE DATABASE [PostavkiTovar]
GO
USE [PostavkiTovar]
GO
/****** Object:  Table [dbo].[D]    Script Date: 31.01.2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D](
	[Dnum] [nvarchar](4) NOT NULL,
	[Dname] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK__D__7A775085748223DB] PRIMARY KEY CLUSTERED 
(
	[Dnum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S]    Script Date: 31.01.2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S](
	[Snum] [nvarchar](4) NOT NULL,
	[Sname] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK__S__BFB87987799EA993] PRIMARY KEY CLUSTERED 
(
	[Snum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STD]    Script Date: 31.01.2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STD](
	[Snum] [nvarchar](4) NOT NULL,
	[Tnum] [nvarchar](4) NOT NULL,
	[Dnum] [nvarchar](4) NOT NULL,
	[Kolvo] [int] NULL,
	[DatePost] [nvarchar](10) NULL,
 CONSTRAINT [PK__STD__E4357715940AB854] PRIMARY KEY CLUSTERED 
(
	[Snum] ASC,
	[Tnum] ASC,
	[Dnum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T]    Script Date: 31.01.2023 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T](
	[Tnum] [nvarchar](4) NOT NULL,
	[Tname] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[EdIzm] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK__T__FF779C2CB9F93EFB] PRIMARY KEY CLUSTERED 
(
	[Tnum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D1', N'Иванов и К', N'Москва')
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D2', N'Магнит', N'Москва')
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D3', N'Magic', N'London')
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D4', N'SuperOK ', N'London')
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D5', N'Магазин1', N'Майкоп')
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D6', N'Магазин2', N'Майкоп')
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D7', N'Fix Price', N'Москва')
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D8', N'fff', N'zzzz')
INSERT [dbo].[D] ([Dnum], [Dname], [City]) VALUES (N'D9', N'New Shop', N'Москва')
GO
INSERT [dbo].[S] ([Snum], [Sname], [Status], [City]) VALUES (N'S1', N'Поставщик1', 45, N'Москва')
INSERT [dbo].[S] ([Snum], [Sname], [Status], [City]) VALUES (N'S2', N'ПоставщикМ', 70, N'Майкоп')
INSERT [dbo].[S] ([Snum], [Sname], [Status], [City]) VALUES (N'S3', N'SuperP', 90, N'London')
INSERT [dbo].[S] ([Snum], [Sname], [Status], [City]) VALUES (N'S4', N'ПоставщикНТ', 80, N'Нижний Тагил')
INSERT [dbo].[S] ([Snum], [Sname], [Status], [City]) VALUES (N'S5', N'GoodMan', 40, N'Майкоп')
GO
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S1', N'T1', N'D1', 300, N'23.12.2019')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S1', N'T1', N'D2', 45, N'02.04.2020')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S1', N'T2', N'D3', 30, N'03.05.2019')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S1', N'T5', N'D1', 10, N'09.04.2020')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S2', N'T1', N'D1', 470, N'12.12.2019')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S2', N'T2', N'D2', 20, N'08.09.2019')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S3', N'T3', N'D5', 60, N'01.01.2020')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S3', N'T4', N'D4', 90, N'05.03.2020')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S3', N'T5', N'D1', 98, N'01.03.2020')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S3', N'T5', N'D5', 28, N'28.01.2020')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S4', N'T4', N'D4', 50, N'12.03.2022')
INSERT [dbo].[STD] ([Snum], [Tnum], [Dnum], [Kolvo], [DatePost]) VALUES (N'S4', N'T5', N'D3', 100, N'03.03.2019')
GO
INSERT [dbo].[T] ([Tnum], [Tname], [Price], [EdIzm], [City]) VALUES (N'T1', N'печенье', CAST(55.00 AS Decimal(18, 2)), N'пачка', N'Майкоп')
INSERT [dbo].[T] ([Tnum], [Tname], [Price], [EdIzm], [City]) VALUES (N'T2', N'молоко', CAST(30.00 AS Decimal(18, 2)), N'литр', N'Майкоп')
INSERT [dbo].[T] ([Tnum], [Tname], [Price], [EdIzm], [City]) VALUES (N'T3', N'мука', CAST(300.00 AS Decimal(18, 2)), N'пачка, 10 кг', N'Москва')
INSERT [dbo].[T] ([Tnum], [Tname], [Price], [EdIzm], [City]) VALUES (N'T4', N'sweets "Moon"', CAST(80.00 AS Decimal(18, 2)), N'пачка', N'London')
INSERT [dbo].[T] ([Tnum], [Tname], [Price], [EdIzm], [City]) VALUES (N'T5', N'milk', CAST(60.00 AS Decimal(18, 2)), N'литр', N'London')
INSERT [dbo].[T] ([Tnum], [Tname], [Price], [EdIzm], [City]) VALUES (N'T6', N'ForDelete', CAST(2000.00 AS Decimal(18, 2)), N'пачка', N'Неизвестен')
GO
ALTER TABLE [dbo].[STD]  WITH CHECK ADD  CONSTRAINT [FK__STD__Dnum__5165187F] FOREIGN KEY([Dnum])
REFERENCES [dbo].[D] ([Dnum])
GO
ALTER TABLE [dbo].[STD] CHECK CONSTRAINT [FK__STD__Dnum__5165187F]
GO
ALTER TABLE [dbo].[STD]  WITH CHECK ADD  CONSTRAINT [FK__STD__Snum__4F7CD00D] FOREIGN KEY([Snum])
REFERENCES [dbo].[S] ([Snum])
GO
ALTER TABLE [dbo].[STD] CHECK CONSTRAINT [FK__STD__Snum__4F7CD00D]
GO
ALTER TABLE [dbo].[STD]  WITH CHECK ADD  CONSTRAINT [FK__STD__Tnum__5070F446] FOREIGN KEY([Tnum])
REFERENCES [dbo].[T] ([Tnum])
GO
ALTER TABLE [dbo].[STD] CHECK CONSTRAINT [FK__STD__Tnum__5070F446]
GO
