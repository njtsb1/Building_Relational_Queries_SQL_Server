CREATE DATABASE [Movies]
GO
USE [Movies]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[Gender] [varchar](1) NULL,
 CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmCast](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdActor] [int] NOT NULL,
	[IdMovie] [int] NULL,
	[Role] [varchar](50) NULL, -- Expandido ligeiramente para comportar nomes longos de papéis
 CONSTRAINT [PK_FilmCast] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL, -- Expandido para comportar títulos longos
	[Year] [int] NULL,
	[Duration] [int] NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoviesGender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGender] [int] NULL,
	[IdMovie] [int] NULL,
 CONSTRAINT [PK_MoviesGender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [varchar](20) NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (1, N'Action')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (2, N'Adventure')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (3, N'Animation')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (4, N'Biography')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (5, N'Comedy')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (6, N'Crime')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (7, N'Drama')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (8, N'Horror')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (9, N'Musical')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (10, N'Mystery')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (11, N'Romance')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (12, N'Suspense')
GO
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (13, N'War')
GO
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Actors] ON 
GO
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Gender]) VALUES (1, N'Bruce', N'Lee', N'M')
GO
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Gender]) VALUES (2, N'Jean-Claude', N'Van Damme', N'M')
GO
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [Gender]) VALUES (3, N'Jason', N'Statham', N'M')
GO
SET IDENTITY_INSERT [dbo].[Actors] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (1, N'The Green Hornet', 1967, 87)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (2, N'Longstreet', 1971, 60)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (3, N'The Big Boss', 1971, 100)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (4, N'Fist of Fury', 1972, 102)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (5, N'The Way of the Dragon', 1972, 99)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (6, N'Enter the Dragon', 1973, 102)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (7, N'Game of Death', 1978, 100)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (8, N'Bloodsport', 1988, 92)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (9, N'Kickboxer', 1989, 97)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (10, N'Lionheart', 1990, 108)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (11, N'Hard Target', 1993, 97)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (12, N'Street Fighter', 1994, 102)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (13, N'Double Team', 1997, 93)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (14, N'The Transporter', 2002, 92)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (15, N'The Italian Job', 2003, 111)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (16, N'Chaos', 2005, 106)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (17, N'Transporter 2', 2005, 87)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (18, N'Revolver', 2005, 111)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (19, N'Crank', 2006, 88)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (20, N'In the Name of the King: A Dungeon Siege Tale', 2007, 127)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (21, N'Transporter 3', 2008, 104)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (22, N'The Bank Job', 2008, 111)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (23, N'Crank: High Voltage', 2009, 96)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (24, N'13', 2010, 91)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (25, N'The Mechanic', 2011, 93)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (26, N'Killer Elite', 2011, 116)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (27, N'6 Bullets', 2012, 115)
GO
INSERT [dbo].[Movies] ([Id], [Name], [Year], [Duration]) VALUES (28, N'We Die Young', 2019, 92)
GO
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmCast] ON 
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (1, 1, 1, N'Kato')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (2, 1, 2, N'Li Tsung')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (3, 1, 3, N'Cheng Chao-an')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (4, 1, 4, N'Chen Zhen')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (5, 1, 5, N'Tang Lung')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (6, 1, 6, N'Lee')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (7, 1, 7, N'Billy Lo')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (8, 2, 8, N'Frank Dux')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (9, 2, 9, N'Kurt Sloane')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (10, 2, 10, N'Lyon Gaultier')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (11, 2, 11, N'Chance Boudreaux')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (12, 2, 12, N'Colonel Guile')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (13, 2, 13, N'Jack Quinn')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (14, 3, 14, N'Frank Martin')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (15, 3, 15, N'Handsome Rob')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (16, 3, 16, N'Quentin Conners')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (17, 3, 17, N'Frank Martin')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (18, 3, 18, N'Jake Green')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (19, 3, 19, N'Chev Chelios')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (20, 3, 20, N'Farmer')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (21, 3, 21, N'Frank Martin')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (22, 3, 22, N'Terry Leather')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (23, 3, 23, N'Chev Chelios')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (24, 3, 24, N'Jasper Bagges')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (25, 3, 25, N'Arthur Bishop')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (26, 3, 26, N'Danny Bryce')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (27, 2, 27, N'Samson Gaul')
GO
INSERT [dbo].[FilmCast] ([Id], [IdActor], [IdMovie], [Role]) VALUES (28, 2, 28, N'Daniel')
GO
SET IDENTITY_INSERT [dbo].[FilmCast] OFF
GO
SET IDENTITY_INSERT [dbo].[MoviesGender] ON
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (1, 1, 1)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (2, 1, 2)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (3, 1, 3)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (4, 1, 4)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (5, 1, 5)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (6, 1, 6)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (7, 1, 7)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (8, 1, 8)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (9, 1, 9)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (10, 1, 10)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (11, 1, 11)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (12, 1, 12)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (13, 1, 13)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (14, 1, 14)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (15, 1, 15)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (16, 1, 16)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (17, 1, 17)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (18, 1, 18)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (19, 1, 19)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (20, 1, 20)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (21, 1, 21)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (22, 1, 22)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (23, 1, 23)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (24, 1, 24)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (25, 1, 25)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (26, 1, 26)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (27, 1, 27)
GO
INSERT [dbo].[MoviesGender] ([Id], [IdGender], [IdMovie]) VALUES (28, 1, 28)
GO
SET IDENTITY_INSERT [dbo].[MoviesGender] OFF
GO
ALTER TABLE [dbo].[FilmCast]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0] FOREIGN KEY([IdActor])
REFERENCES [dbo].[Actors] ([Id])
GO
ALTER TABLE [dbo].[FilmCast] CHECK CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0]
GO
ALTER TABLE [dbo].[FilmCast]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdFil__2D27B809] FOREIGN KEY([IdMovie])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[FilmCast] CHECK CONSTRAINT [FK__ElencoFil__IdFil__2D27B809]
GO
ALTER TABLE [dbo].[MoviesGender]  WITH CHECK ADD  CONSTRAINT [FK__MoviesGen__IdFil__2F10007B] FOREIGN KEY([IdMovie])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[MoviesGender] CHECK CONSTRAINT [FK__MoviesGen__IdFil__2F10007B]
GO
ALTER TABLE [dbo].[MoviesGender]  WITH CHECK ADD  CONSTRAINT [FK__MoviesGen__IdGen__2E1BDC42] FOREIGN KEY([IdGender])
REFERENCES [dbo].[Genders] ([Id])
GO
ALTER TABLE [dbo].[MoviesGender] CHECK CONSTRAINT [FK__MoviesGen__IdGen__2E1BDC42]
GO
