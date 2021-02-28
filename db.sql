USE [netflixdb]
GO
/****** Object:  Table [dbo].[audios]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[audios](
	[id_audio] [int] IDENTITY(1,1) NOT NULL,
	[url_ubicacion] [varchar](300) NULL,
	[id_idioma] [int] NULL,
 CONSTRAINT [PK_audios] PRIMARY KEY CLUSTERED 
(
	[id_audio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[capitulos]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[capitulos](
	[id_capitulo] [int] IDENTITY(1,1) NOT NULL,
	[nro_capitulo] [int] NULL,
	[id_temporada] [int] NULL,
	[id_video] [int] NULL,
 CONSTRAINT [PK_capitulos] PRIMARY KEY CLUSTERED 
(
	[id_capitulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contenido_multimedia_generos]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contenido_multimedia_generos](
	[id_cm_genero] [int] IDENTITY(1,1) NOT NULL,
	[id_genero] [int] NULL,
	[id_contenido_multimedia] [int] NULL,
 CONSTRAINT [PK_contenido_multimedia_generos] PRIMARY KEY CLUSTERED 
(
	[id_cm_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contenidos_multimedia]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contenidos_multimedia](
	[id_contenido_multimedia] [int] IDENTITY(1,1) NOT NULL,
	[edad_clasificacion] [int] NULL,
	[anho_publicacion] [int] NULL,
	[director] [varchar](250) NULL,
	[id_video] [int] NULL,
	[id_tcontenido_multimedia] [int] NULL,
 CONSTRAINT [PK_contenidos_multimedia] PRIMARY KEY CLUSTERED 
(
	[id_contenido_multimedia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuenta_perfiles]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuenta_perfiles](
	[id_cuentaperfil] [int] IDENTITY(1,1) NOT NULL,
	[id_cuenta] [int] NULL,
	[id_perfil] [int] NULL,
 CONSTRAINT [PK_cuenta_perfiles] PRIMARY KEY CLUSTERED 
(
	[id_cuentaperfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuentas]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentas](
	[id_cuenta] [int] IDENTITY(1,1) NOT NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_facturacion] [datetime] NULL,
	[activo] [bit] NULL,
	[id_propietario] [int] NOT NULL,
	[id_plan] [int] NOT NULL,
 CONSTRAINT [PK_cuentas] PRIMARY KEY CLUSTERED 
(
	[id_cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_actividades]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_actividades](
	[id_estado_actividad] [int] IDENTITY(1,1) NOT NULL,
	[volumen] [decimal](18, 2) NULL,
	[segundo_reproduccion] [decimal](18, 2) NULL,
	[velocidad] [decimal](18, 2) NULL,
	[id_perfil_actividad] [int] NULL,
	[id_audio] [int] NULL,
	[id_subtitulo] [int] NULL,
 CONSTRAINT [PK_estado_actividades] PRIMARY KEY CLUSTERED 
(
	[id_estado_actividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[generos]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[generos](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NULL,
	[descripcion] [text] NULL,
 CONSTRAINT [PK_generos] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idiomas]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idiomas](
	[id_idioma] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NULL,
 CONSTRAINT [PK_idiomas] PRIMARY KEY CLUSTERED 
(
	[id_idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paises]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paises](
	[id_pais] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NOT NULL,
	[siglas] [varchar](10) NULL,
 CONSTRAINT [PK_paises] PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfil_actividades]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil_actividades](
	[id_perfil_actividad] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[id_perfil] [int] NULL,
	[id_video] [int] NULL,
 CONSTRAINT [PK_perfil_actividades] PRIMARY KEY CLUSTERED 
(
	[id_perfil_actividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfil_favoritos]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil_favoritos](
	[id_perfilfavorito] [int] IDENTITY(1,1) NOT NULL,
	[id_perfil] [int] NULL,
	[id_contenido_multimedia] [int] NULL,
 CONSTRAINT [PK_perfil_lista] PRIMARY KEY CLUSTERED 
(
	[id_perfilfavorito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfiles]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfiles](
	[id_perfil] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[url_avatar] [varchar](300) NULL,
	[bloqueado] [bit] NULL,
	[edad_clasificacion] [int] NULL,
	[autorep_serie] [bit] NULL,
	[autorep_avances] [bit] NULL,
	[id_idioma] [int] NULL,
 CONSTRAINT [PK_perfiles] PRIMARY KEY CLUSTERED 
(
	[id_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[planes]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planes](
	[id_plan] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[costo_mensual] [decimal](18, 2) NULL,
	[cant_disp_simult] [int] NULL,
	[cant_disp_desc] [int] NULL,
	[contenido_ilimitado] [bit] NULL,
	[multi_plataforma] [bit] NULL,
	[hd_disponible] [bit] NULL,
	[uhd_disponible] [bit] NULL,
 CONSTRAINT [PK_planes] PRIMARY KEY CLUSTERED 
(
	[id_plan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[propietarios]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[propietarios](
	[id_propietario] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](250) NULL,
	[nro_telefono] [varchar](18) NULL,
	[email] [varchar](250) NULL,
	[contrasenha] [varchar](150) NULL,
	[id_pais] [int] NOT NULL,
 CONSTRAINT [PK_propietarios] PRIMARY KEY CLUSTERED 
(
	[id_propietario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subtitulos]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subtitulos](
	[id_subtitulo] [int] IDENTITY(1,1) NOT NULL,
	[url_ubicacion] [varchar](300) NULL,
	[id_idioma] [int] NULL,
 CONSTRAINT [PK_subtitulos] PRIMARY KEY CLUSTERED 
(
	[id_subtitulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temporadas]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temporadas](
	[id_temporada] [int] IDENTITY(1,1) NOT NULL,
	[nro_temporada] [int] NULL,
	[nombre] [varchar](150) NULL,
	[id_contenido_multimedia] [int] NULL,
 CONSTRAINT [PK_contenido_multimedia_temporadas] PRIMARY KEY CLUSTERED 
(
	[id_temporada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_contenido_multimedia]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_contenido_multimedia](
	[id_tcontenido_multimedia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NULL,
 CONSTRAINT [PK_tipos_contenido_multimedia] PRIMARY KEY CLUSTERED 
(
	[id_tcontenido_multimedia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[video_audios]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[video_audios](
	[id_video_audio] [int] IDENTITY(1,1) NOT NULL,
	[id_audio] [int] NULL,
	[id_video] [int] NULL,
 CONSTRAINT [PK_video_audios] PRIMARY KEY CLUSTERED 
(
	[id_video_audio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[video_subtitulos]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[video_subtitulos](
	[id_video_subtitulo] [int] IDENTITY(1,1) NOT NULL,
	[id_subtitulo] [int] NULL,
	[id_video] [int] NULL,
 CONSTRAINT [PK_video_subtitulos] PRIMARY KEY CLUSTERED 
(
	[id_video_subtitulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[videos]    Script Date: 27/02/2021 19:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[videos](
	[id_video] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](250) NULL,
	[descripcion] [text] NULL,
	[url_ubicacion] [varchar](300) NULL,
	[url_imagen] [varchar](300) NULL,
	[url_trailer] [varchar](300) NULL,
	[duracion_segundos] [decimal](18, 2) NULL,
 CONSTRAINT [PK_videos] PRIMARY KEY CLUSTERED 
(
	[id_video] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[capitulos] ON 

INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (1, 1, 1, 2)
INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (2, 2, 1, 3)
INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (3, 1, 2, 5)
INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (4, 2, 2, 6)
INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (5, 3, 2, 7)
INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (6, 1, 4, 9)
INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (7, 2, 4, 10)
INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (8, 3, 4, 11)
INSERT [dbo].[capitulos] ([id_capitulo], [nro_capitulo], [id_temporada], [id_video]) VALUES (9, 4, 4, 12)
SET IDENTITY_INSERT [dbo].[capitulos] OFF
GO
SET IDENTITY_INSERT [dbo].[contenido_multimedia_generos] ON 

INSERT [dbo].[contenido_multimedia_generos] ([id_cm_genero], [id_genero], [id_contenido_multimedia]) VALUES (1, 9, 3)
INSERT [dbo].[contenido_multimedia_generos] ([id_cm_genero], [id_genero], [id_contenido_multimedia]) VALUES (2, 1, 3)
INSERT [dbo].[contenido_multimedia_generos] ([id_cm_genero], [id_genero], [id_contenido_multimedia]) VALUES (3, 3, 1)
INSERT [dbo].[contenido_multimedia_generos] ([id_cm_genero], [id_genero], [id_contenido_multimedia]) VALUES (4, 17, 1)
INSERT [dbo].[contenido_multimedia_generos] ([id_cm_genero], [id_genero], [id_contenido_multimedia]) VALUES (5, 10, 1)
INSERT [dbo].[contenido_multimedia_generos] ([id_cm_genero], [id_genero], [id_contenido_multimedia]) VALUES (6, 3, 2)
SET IDENTITY_INSERT [dbo].[contenido_multimedia_generos] OFF
GO
SET IDENTITY_INSERT [dbo].[contenidos_multimedia] ON 

INSERT [dbo].[contenidos_multimedia] ([id_contenido_multimedia], [edad_clasificacion], [anho_publicacion], [director], [id_video], [id_tcontenido_multimedia]) VALUES (1, 17, 2019, N'Hermanos Duffer', 1, 2)
INSERT [dbo].[contenidos_multimedia] ([id_contenido_multimedia], [edad_clasificacion], [anho_publicacion], [director], [id_video], [id_tcontenido_multimedia]) VALUES (2, 15, 1998, N'Peter Weir', 4, 1)
INSERT [dbo].[contenidos_multimedia] ([id_contenido_multimedia], [edad_clasificacion], [anho_publicacion], [director], [id_video], [id_tcontenido_multimedia]) VALUES (3, 18, 2013, N'Vince Gilligan', 8, 2)
SET IDENTITY_INSERT [dbo].[contenidos_multimedia] OFF
GO
SET IDENTITY_INSERT [dbo].[generos] ON 

INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (1, N'Acción', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (2, N'Anime', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (3, N'Ciencia Ficción', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (4, N'Clásicas', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (5, N'Comedias', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (6, N'De Hollywood', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (7, N'Deportes', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (8, N'Documentales', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (9, N'Dramas', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (10, N'Fantasias', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (11, N'Fe y espiritualidad', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (12, N'Independientes', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (13, N'Infantiles y familiares', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (14, N'Lationoamericanas', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (15, N'Policiales', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (16, N'Romances', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (17, N'Terror', N'')
INSERT [dbo].[generos] ([id_genero], [nombre], [descripcion]) VALUES (18, N'Musica y musicales', N'')
SET IDENTITY_INSERT [dbo].[generos] OFF
GO
SET IDENTITY_INSERT [dbo].[idiomas] ON 

INSERT [dbo].[idiomas] ([id_idioma], [nombre]) VALUES (1, N'español')
INSERT [dbo].[idiomas] ([id_idioma], [nombre]) VALUES (2, N'ingles')
SET IDENTITY_INSERT [dbo].[idiomas] OFF
GO
SET IDENTITY_INSERT [dbo].[subtitulos] ON 

INSERT [dbo].[subtitulos] ([id_subtitulo], [url_ubicacion], [id_idioma]) VALUES (1, N'https://drive.google.com/uc?id=13XtjS7jHyp1NHHBdjz592mB5ldF6Vetb&export=download&authuser=0', 1)
INSERT [dbo].[subtitulos] ([id_subtitulo], [url_ubicacion], [id_idioma]) VALUES (2, N'https://drive.google.com/uc?id=12isKUCWV0ZktvFQ4_-2nNJV4bN9YJCDY&export=download&authuser=0', 2)
INSERT [dbo].[subtitulos] ([id_subtitulo], [url_ubicacion], [id_idioma]) VALUES (3, N'https://drive.google.com/uc?id=17Re7yWzwzjR9WwdlzFgzZNB-WPcBEob3&export=download&authuser=0', 1)
INSERT [dbo].[subtitulos] ([id_subtitulo], [url_ubicacion], [id_idioma]) VALUES (4, N'https://drive.google.com/uc?id=1QNGERteX_JGDc95WFCooHbv4udiJ3_3c&export=download&authuser=0', 2)
SET IDENTITY_INSERT [dbo].[subtitulos] OFF
GO
SET IDENTITY_INSERT [dbo].[temporadas] ON 

INSERT [dbo].[temporadas] ([id_temporada], [nro_temporada], [nombre], [id_contenido_multimedia]) VALUES (1, 1, N'Stranger Things', 1)
INSERT [dbo].[temporadas] ([id_temporada], [nro_temporada], [nombre], [id_contenido_multimedia]) VALUES (2, 2, N'Stranger Things 2', 1)
INSERT [dbo].[temporadas] ([id_temporada], [nro_temporada], [nombre], [id_contenido_multimedia]) VALUES (3, 3, N'Stranger Things 3', 1)
INSERT [dbo].[temporadas] ([id_temporada], [nro_temporada], [nombre], [id_contenido_multimedia]) VALUES (4, 1, N'Primera temporada', 3)
SET IDENTITY_INSERT [dbo].[temporadas] OFF
GO
SET IDENTITY_INSERT [dbo].[tipos_contenido_multimedia] ON 

INSERT [dbo].[tipos_contenido_multimedia] ([id_tcontenido_multimedia], [nombre]) VALUES (1, N'pelicula')
INSERT [dbo].[tipos_contenido_multimedia] ([id_tcontenido_multimedia], [nombre]) VALUES (2, N'serie')
SET IDENTITY_INSERT [dbo].[tipos_contenido_multimedia] OFF
GO
SET IDENTITY_INSERT [dbo].[video_subtitulos] ON 

INSERT [dbo].[video_subtitulos] ([id_video_subtitulo], [id_subtitulo], [id_video]) VALUES (1, 1, 2)
INSERT [dbo].[video_subtitulos] ([id_video_subtitulo], [id_subtitulo], [id_video]) VALUES (2, 2, 2)
INSERT [dbo].[video_subtitulos] ([id_video_subtitulo], [id_subtitulo], [id_video]) VALUES (3, 3, 3)
INSERT [dbo].[video_subtitulos] ([id_video_subtitulo], [id_subtitulo], [id_video]) VALUES (4, 4, 3)
SET IDENTITY_INSERT [dbo].[video_subtitulos] OFF
GO
SET IDENTITY_INSERT [dbo].[videos] ON 

INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (1, N'Stranger Things', N'Homenaje a los clásicos misterios sobrenaturales de los años 80, Stranger Things es la historia de un niño que desaparece del mapa. En su búsqueda desesperada, tanto sus amigos y familiares como la policía local se ven envueltos en un enigma extraordinario: experimentos estatales ultrasecretos, fuerzas paranormales terroríficas y una niña muy, muy rara.', N'https://www.youtube.com/watch?v=Wre1F5YyIlA&ab_channel=NetflixEspa%C3%B1a', N'https://upload.wikimedia.org/wikipedia/commons/3/38/Stranger_Things_logo.png', N'https://www.youtube.com/watch?v=Wre1F5YyIlA&ab_channel=NetflixEspa%C3%B1a', CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (2, N'Capítulo uno: La desaparición de Will Byers', N'Will es testigo de algo horroroso cuando regresa a casa. Cerca de ahí, un laboratorio gubernamental esconde un terrible secreto en sus profundidades.', N'https://www.youtube.com/watch?v=Lpd6A7W4fYE&ab_channel=NetflixEspa%C3%B1a', N'https://i.ytimg.com/vi/Lpd6A7W4fYE/maxresdefault.jpg', N'https://www.youtube.com/watch?v=Lpd6A7W4fYE&ab_channel=NetflixEspa%C3%B1a', CAST(520.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (3, N'Capítulo dos: La loca de la calle Maple', N'Lucas, Mike y Dustin intentan hablar con la niña que encontraron. Joyce, muy ansiosa, es interrogada por Hopper sobre una llamada telefónica.', N'https://www.youtube.com/watch?v=pxBGpirdOcw&ab_channel=SeriesymasTV', N'https://i.ytimg.com/vi/pxBGpirdOcw/maxresdefault.jpg', N'https://www.youtube.com/watch?v=pxBGpirdOcw&ab_channel=SeriesymasTV', CAST(107.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (4, N'The Truman Show', N'Truman Burbank, un feliz agente de seguros, cree llevar una vida normal, pero no tiene idea de que las cámaras lo graban las 24 horas y que todo lo que hace se ve en televisión.', N'https://www.youtube.com/watch?v=z43NYPcF0CM&ab_channel=Teloresumo', N'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQW3sYJ4YG44jEdWCtd_CQ8YJt0T44AToWY_7b417m7_Scl8k-Z', N'https://www.youtube.com/watch?v=z43NYPcF0CM&ab_channel=Teloresumo', CAST(6180.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (5, N'Capítulo uno: MADMAX', N'El 30 de octubre de 1984, casi un año después de lo ocurrido en Hawkins, Mike, Lucas y Dustin van a las máquinas Arcade del pueblo. Al llegar, Will es traído por Joyce, quien le dice que no vuelva a casa a pie ni en bicicleta. Pero al jugar, descubren que un tal MADMAX superó el puntaje de Dustin en dig dug. ', N'https://www.youtube.com/watch?v=pvA2s0X6-C0&ab_channel=MovieClipsLa', N'https://i.ytimg.com/vi/pvA2s0X6-C0/maxresdefault.jpg', N'https://www.youtube.com/watch?v=pvA2s0X6-C0&ab_channel=MovieClipsLa', CAST(207.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (6, N'Capítulo dos: Truco o trato, bicho raro', N'En un flashback, Once se despierta en la escuela secundaria del otro lado, justo luego de destruir al monstruo (al final de la primera temporada). Después de escapar del otro lado, va a la casa de Mike. Para evitar a los agentes del gobierno, se esconde en el bosque. De vuelta al presente, Once pide ir a pedir dulces, pero Hopper dice que es demasiado arriesgado.', N'https://www.youtube.com/watch?v=72Axkf02fIs&ab_channel=PeliculasySeriesEscenas', N'https://i.ytimg.com/vi/72Axkf02fIs/hqdefault.jpg', N'https://www.youtube.com/watch?v=72Axkf02fIs&ab_channel=PeliculasySeriesEscenas', CAST(153.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (7, N'Capítulo tres: El renacuajo', N'Dustin le da a la criatura una barra de chocolate "3 Mosqueteros" y la llama d"Artagnan ("Dart"). En un flashback, Hopper deja comida en el bosque para Once. Ella se acerca y se muda con él. En el presente, Hopper se niega a permitir que Once salga. Enojada, ella se escapa y busca a Mike.', N'https://www.youtube.com/watch?v=lK-_avuqzls&ab_channel=PeliculasySeriesEscenas', N'https://i.ytimg.com/vi/lK-_avuqzls/hqdefault.jpg', N'https://www.youtube.com/watch?v=lK-_avuqzls&ab_channel=PeliculasySeriesEscenas', CAST(101.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (8, N'Breaking Bad', N'Narra la historia de Walter White (Bryan Cranston), un profesor de química con problemas económicos a quien le diagnostican un cáncer de pulmón inoperable. Para pagar su tratamiento y asegurar el futuro económico de su familia comienza a cocinar y vender metanfetamina,4? junto con Jesse Pinkman (Aaron Paul), un antiguo alumno suyo', N'https://www.youtube.com/watch?v=HhesaQXLuRY&ab_channel=TrailerBlend', N'https://i.ytimg.com/vi/HhesaQXLuRY/maxresdefault.jpg', N'https://www.youtube.com/watch?v=HhesaQXLuRY&ab_channel=TrailerBlend', CAST(128.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (9, N'Pilot', N'Walter White es un profesor de química de secundaria que vive en Albuquerque, Nuevo México, con su esposa embarazada Skyler y su hijo adolescente Walter Jr., que tiene parálisis cerebral. Walt complementa su bajo salario de docente trabajando a tiempo parcial en un lavadero de autos local, donde termina siendo humillado por dos de sus estudiantes. En su cumpleaños 50, Walt regresa a casa a una fiesta sorpresa organizada por Skyler.', N'https://www.youtube.com/watch?v=rJnjxvgvkBM&ab_channel=AbrahamCortes', N'https://i.ytimg.com/vi/rJnjxvgvkBM/maxresdefault.jpg', N'https://www.youtube.com/watch?v=rJnjxvgvkBM&ab_channel=AbrahamCortes', CAST(540.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (10, N'El gato en la bolsa', N'Luego del fracaso de su primer negocio de drogas, Walt y Jesse deben deshacerse de dos cadáveres. Skyler sospecha que su marido no está involucrado en nada bueno.', N'https://www.youtube.com/watch?v=f6KP9OjDbx4&ab_channel=PELISE-CLIPS', N'https://i.ytimg.com/vi/f6KP9OjDbx4/maxresdefault.jpg', N'https://www.youtube.com/watch?v=f6KP9OjDbx4&ab_channel=PELISE-CLIPS', CAST(166.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (11, N'Y la bolsa en el rio', N'Mientras Walt limpia el desorden que quedó tras su primer negocio de drogas, piensa en decirle a Skyler la verdad sobre su enfermedad.', N'https://www.youtube.com/watch?v=6rXcrE2OL8w&ab_channel=BrBa', N'https://i.ytimg.com/vi/6rXcrE2OL8w/maxresdefault.jpg', N'https://www.youtube.com/watch?v=6rXcrE2OL8w&ab_channel=BrBa', CAST(141.00 AS Decimal(18, 2)))
INSERT [dbo].[videos] ([id_video], [titulo], [descripcion], [url_ubicacion], [url_imagen], [url_trailer], [duracion_segundos]) VALUES (12, N'Cáncer', N'Al ser forzado a contar la verdad acerca de su enfermedad, Walt enfrenta el problema de cómo pagar una serie de caros tratamientos contra el cáncer.', N'https://www.youtube.com/watch?v=8CnQgOcP8wQ&ab_channel=NetflixparaPOBRES%5BPel%C3%ADculasyseries%5D', N'https://i.ytimg.com/vi/8CnQgOcP8wQ/maxresdefault.jpg', N'https://www.youtube.com/watch?v=8CnQgOcP8wQ&ab_channel=NetflixparaPOBRES%5BPel%C3%ADculasyseries%5D', CAST(178.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[videos] OFF
GO
ALTER TABLE [dbo].[audios]  WITH CHECK ADD  CONSTRAINT [FK_audios_idiomas] FOREIGN KEY([id_idioma])
REFERENCES [dbo].[idiomas] ([id_idioma])
GO
ALTER TABLE [dbo].[audios] CHECK CONSTRAINT [FK_audios_idiomas]
GO
ALTER TABLE [dbo].[capitulos]  WITH CHECK ADD  CONSTRAINT [FK_capitulos_contenido_multimedia_temporadas] FOREIGN KEY([id_temporada])
REFERENCES [dbo].[temporadas] ([id_temporada])
GO
ALTER TABLE [dbo].[capitulos] CHECK CONSTRAINT [FK_capitulos_contenido_multimedia_temporadas]
GO
ALTER TABLE [dbo].[capitulos]  WITH CHECK ADD  CONSTRAINT [FK_capitulos_videos] FOREIGN KEY([id_video])
REFERENCES [dbo].[videos] ([id_video])
GO
ALTER TABLE [dbo].[capitulos] CHECK CONSTRAINT [FK_capitulos_videos]
GO
ALTER TABLE [dbo].[contenido_multimedia_generos]  WITH CHECK ADD  CONSTRAINT [FK_contenido_multimedia_generos_contenidos_multimedia] FOREIGN KEY([id_contenido_multimedia])
REFERENCES [dbo].[contenidos_multimedia] ([id_contenido_multimedia])
GO
ALTER TABLE [dbo].[contenido_multimedia_generos] CHECK CONSTRAINT [FK_contenido_multimedia_generos_contenidos_multimedia]
GO
ALTER TABLE [dbo].[contenido_multimedia_generos]  WITH CHECK ADD  CONSTRAINT [FK_contenido_multimedia_generos_generos] FOREIGN KEY([id_genero])
REFERENCES [dbo].[generos] ([id_genero])
GO
ALTER TABLE [dbo].[contenido_multimedia_generos] CHECK CONSTRAINT [FK_contenido_multimedia_generos_generos]
GO
ALTER TABLE [dbo].[contenidos_multimedia]  WITH CHECK ADD  CONSTRAINT [FK_contenidos_multimedia_tipos_contenido_multimedia] FOREIGN KEY([id_tcontenido_multimedia])
REFERENCES [dbo].[tipos_contenido_multimedia] ([id_tcontenido_multimedia])
GO
ALTER TABLE [dbo].[contenidos_multimedia] CHECK CONSTRAINT [FK_contenidos_multimedia_tipos_contenido_multimedia]
GO
ALTER TABLE [dbo].[contenidos_multimedia]  WITH CHECK ADD  CONSTRAINT [FK_contenidos_multimedia_videos] FOREIGN KEY([id_video])
REFERENCES [dbo].[videos] ([id_video])
GO
ALTER TABLE [dbo].[contenidos_multimedia] CHECK CONSTRAINT [FK_contenidos_multimedia_videos]
GO
ALTER TABLE [dbo].[cuenta_perfiles]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_perfiles_cuentas] FOREIGN KEY([id_cuenta])
REFERENCES [dbo].[cuentas] ([id_cuenta])
GO
ALTER TABLE [dbo].[cuenta_perfiles] CHECK CONSTRAINT [FK_cuenta_perfiles_cuentas]
GO
ALTER TABLE [dbo].[cuenta_perfiles]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_perfiles_perfiles] FOREIGN KEY([id_perfil])
REFERENCES [dbo].[perfiles] ([id_perfil])
GO
ALTER TABLE [dbo].[cuenta_perfiles] CHECK CONSTRAINT [FK_cuenta_perfiles_perfiles]
GO
ALTER TABLE [dbo].[cuentas]  WITH CHECK ADD  CONSTRAINT [FK_cuentas_planes] FOREIGN KEY([id_plan])
REFERENCES [dbo].[planes] ([id_plan])
GO
ALTER TABLE [dbo].[cuentas] CHECK CONSTRAINT [FK_cuentas_planes]
GO
ALTER TABLE [dbo].[cuentas]  WITH CHECK ADD  CONSTRAINT [FK_cuentas_propietarios] FOREIGN KEY([id_propietario])
REFERENCES [dbo].[propietarios] ([id_propietario])
GO
ALTER TABLE [dbo].[cuentas] CHECK CONSTRAINT [FK_cuentas_propietarios]
GO
ALTER TABLE [dbo].[estado_actividades]  WITH CHECK ADD  CONSTRAINT [FK_estado_actividades_audios] FOREIGN KEY([id_audio])
REFERENCES [dbo].[audios] ([id_audio])
GO
ALTER TABLE [dbo].[estado_actividades] CHECK CONSTRAINT [FK_estado_actividades_audios]
GO
ALTER TABLE [dbo].[estado_actividades]  WITH CHECK ADD  CONSTRAINT [FK_estado_actividades_perfil_actividades] FOREIGN KEY([id_perfil_actividad])
REFERENCES [dbo].[perfil_actividades] ([id_perfil_actividad])
GO
ALTER TABLE [dbo].[estado_actividades] CHECK CONSTRAINT [FK_estado_actividades_perfil_actividades]
GO
ALTER TABLE [dbo].[estado_actividades]  WITH CHECK ADD  CONSTRAINT [FK_estado_actividades_subtitulos] FOREIGN KEY([id_subtitulo])
REFERENCES [dbo].[subtitulos] ([id_subtitulo])
GO
ALTER TABLE [dbo].[estado_actividades] CHECK CONSTRAINT [FK_estado_actividades_subtitulos]
GO
ALTER TABLE [dbo].[perfil_actividades]  WITH CHECK ADD  CONSTRAINT [FK_perfil_actividades_perfiles] FOREIGN KEY([id_perfil])
REFERENCES [dbo].[perfiles] ([id_perfil])
GO
ALTER TABLE [dbo].[perfil_actividades] CHECK CONSTRAINT [FK_perfil_actividades_perfiles]
GO
ALTER TABLE [dbo].[perfil_actividades]  WITH CHECK ADD  CONSTRAINT [FK_perfil_actividades_videos] FOREIGN KEY([id_video])
REFERENCES [dbo].[videos] ([id_video])
GO
ALTER TABLE [dbo].[perfil_actividades] CHECK CONSTRAINT [FK_perfil_actividades_videos]
GO
ALTER TABLE [dbo].[perfil_favoritos]  WITH CHECK ADD  CONSTRAINT [FK_perfil_lista_contenidos_multimedia] FOREIGN KEY([id_contenido_multimedia])
REFERENCES [dbo].[contenidos_multimedia] ([id_contenido_multimedia])
GO
ALTER TABLE [dbo].[perfil_favoritos] CHECK CONSTRAINT [FK_perfil_lista_contenidos_multimedia]
GO
ALTER TABLE [dbo].[perfil_favoritos]  WITH CHECK ADD  CONSTRAINT [FK_perfil_lista_perfiles] FOREIGN KEY([id_perfil])
REFERENCES [dbo].[perfiles] ([id_perfil])
GO
ALTER TABLE [dbo].[perfil_favoritos] CHECK CONSTRAINT [FK_perfil_lista_perfiles]
GO
ALTER TABLE [dbo].[perfiles]  WITH CHECK ADD  CONSTRAINT [FK_perfiles_idiomas] FOREIGN KEY([id_idioma])
REFERENCES [dbo].[idiomas] ([id_idioma])
GO
ALTER TABLE [dbo].[perfiles] CHECK CONSTRAINT [FK_perfiles_idiomas]
GO
ALTER TABLE [dbo].[propietarios]  WITH CHECK ADD  CONSTRAINT [FK_propietarios_paises] FOREIGN KEY([id_pais])
REFERENCES [dbo].[paises] ([id_pais])
GO
ALTER TABLE [dbo].[propietarios] CHECK CONSTRAINT [FK_propietarios_paises]
GO
ALTER TABLE [dbo].[subtitulos]  WITH CHECK ADD  CONSTRAINT [FK_subtitulos_idiomas] FOREIGN KEY([id_idioma])
REFERENCES [dbo].[idiomas] ([id_idioma])
GO
ALTER TABLE [dbo].[subtitulos] CHECK CONSTRAINT [FK_subtitulos_idiomas]
GO
ALTER TABLE [dbo].[temporadas]  WITH CHECK ADD  CONSTRAINT [FK_contenido_multimedia_temporadas_contenidos_multimedia] FOREIGN KEY([id_contenido_multimedia])
REFERENCES [dbo].[contenidos_multimedia] ([id_contenido_multimedia])
GO
ALTER TABLE [dbo].[temporadas] CHECK CONSTRAINT [FK_contenido_multimedia_temporadas_contenidos_multimedia]
GO
ALTER TABLE [dbo].[video_audios]  WITH CHECK ADD  CONSTRAINT [FK_video_audios_audios] FOREIGN KEY([id_audio])
REFERENCES [dbo].[audios] ([id_audio])
GO
ALTER TABLE [dbo].[video_audios] CHECK CONSTRAINT [FK_video_audios_audios]
GO
ALTER TABLE [dbo].[video_audios]  WITH CHECK ADD  CONSTRAINT [FK_video_audios_videos] FOREIGN KEY([id_video])
REFERENCES [dbo].[videos] ([id_video])
GO
ALTER TABLE [dbo].[video_audios] CHECK CONSTRAINT [FK_video_audios_videos]
GO
ALTER TABLE [dbo].[video_subtitulos]  WITH CHECK ADD  CONSTRAINT [FK_video_subtitulos_subtitulos] FOREIGN KEY([id_subtitulo])
REFERENCES [dbo].[subtitulos] ([id_subtitulo])
GO
ALTER TABLE [dbo].[video_subtitulos] CHECK CONSTRAINT [FK_video_subtitulos_subtitulos]
GO
ALTER TABLE [dbo].[video_subtitulos]  WITH CHECK ADD  CONSTRAINT [FK_video_subtitulos_videos] FOREIGN KEY([id_video])
REFERENCES [dbo].[videos] ([id_video])
GO
ALTER TABLE [dbo].[video_subtitulos] CHECK CONSTRAINT [FK_video_subtitulos_videos]
GO