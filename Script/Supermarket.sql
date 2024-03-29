USE [master]
GO
/****** Object:  Database [DB_Supermercado]    Script Date: 20/02/2024 0:06:46 ******/
CREATE DATABASE [DB_Supermercado]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Supermercado', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_Supermercado.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Supermercado_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_Supermercado_log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DB_Supermercado] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Supermercado].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Supermercado] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Supermercado] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Supermercado] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Supermercado] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Supermercado] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Supermercado] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_Supermercado] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Supermercado] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Supermercado] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Supermercado] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Supermercado] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Supermercado] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Supermercado] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Supermercado] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Supermercado] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Supermercado] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Supermercado] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Supermercado] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Supermercado] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Supermercado] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Supermercado] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Supermercado] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Supermercado] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_Supermercado] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Supermercado] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Supermercado] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Supermercado] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Supermercado] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Supermercado] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Supermercado] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_Supermercado', N'ON'
GO
ALTER DATABASE [DB_Supermercado] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_Supermercado] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_Supermercado]
GO
/****** Object:  Table [dbo].[DimCategoria]    Script Date: 20/02/2024 0:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCategoria](
	[CategoriaID] [int] IDENTITY(1,1) NOT NULL,
	[nombre_Categoria] [varchar](30) NULL,
 CONSTRAINT [PK_CATEGORIA] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimEnvio]    Script Date: 20/02/2024 0:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEnvio](
	[envioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_envio] [varchar](30) NULL,
 CONSTRAINT [PK_ENVIO] PRIMARY KEY CLUSTERED 
(
	[envioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProducto]    Script Date: 20/02/2024 0:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProducto](
	[ProductoID] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](50) NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSegmento]    Script Date: 20/02/2024 0:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSegmento](
	[SegmentoID] [int] IDENTITY(1,1) NOT NULL,
	[Segmento] [varchar](40) NULL,
 CONSTRAINT [PK_SEGMENTO] PRIMARY KEY CLUSTERED 
(
	[SegmentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimUbigeo]    Script Date: 20/02/2024 0:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimUbigeo](
	[UbigeoID] [int] IDENTITY(1,1) NOT NULL,
	[Region] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
	[State] [varchar](30) NULL,
	[City] [varchar](30) NULL,
 CONSTRAINT [PK_UBIGEO] PRIMARY KEY CLUSTERED 
(
	[UbigeoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactVentas]    Script Date: 20/02/2024 0:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactVentas](
	[envioID] [int] NULL,
	[SegmentoID] [int] NULL,
	[UbigeoID] [int] NULL,
	[PostalCode] [int] NULL,
	[CategoriaID] [int] NULL,
	[ProductoID] [int] NULL,
	[Sales] [numeric](28, 3) NULL,
	[Quantity] [int] NULL,
	[Discount] [numeric](18, 3) NULL,
	[Profit] [numeric](18, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supermarket]    Script Date: 20/02/2024 0:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supermarket](
	[Ship Mode] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Postal Code] [float] NULL,
	[Region] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Producto] [nvarchar](255) NULL,
	[Sales] [nvarchar](255) NULL,
	[Quantity] [float] NULL,
	[Discount] [float] NULL,
	[Profit] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supermercado]    Script Date: 20/02/2024 0:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supermercado](
	[ShipMode] [varchar](30) NULL,
	[Segment] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
	[City] [varchar](30) NULL,
	[State] [varchar](30) NULL,
	[PostalCode] [int] NULL,
	[Region] [varchar](40) NULL,
	[Category] [varchar](30) NULL,
	[Producto] [varchar](50) NULL,
	[Sales] [decimal](28, 3) NULL,
	[Quantity] [int] NULL,
	[Discount] [numeric](18, 3) NULL,
	[Profit] [numeric](18, 3) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FACTVENTAS_CATEGORIA] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[DimCategoria] ([CategoriaID])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FACTVENTAS_CATEGORIA]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FACTVENTAS_ENVIO] FOREIGN KEY([envioID])
REFERENCES [dbo].[DimEnvio] ([envioID])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FACTVENTAS_ENVIO]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FACTVENTAS_PRODUCTO] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[DimProducto] ([ProductoID])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FACTVENTAS_PRODUCTO]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FACTVENTAS_SEGMENTO] FOREIGN KEY([SegmentoID])
REFERENCES [dbo].[DimSegmento] ([SegmentoID])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FACTVENTAS_SEGMENTO]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FACTVENTAS_Ubigeo] FOREIGN KEY([UbigeoID])
REFERENCES [dbo].[DimUbigeo] ([UbigeoID])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FACTVENTAS_Ubigeo]
GO
USE [master]
GO
ALTER DATABASE [DB_Supermercado] SET  READ_WRITE 
GO
