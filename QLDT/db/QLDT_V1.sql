USE [master]
GO
/****** Object:  Database [QLDT_V1]    Script Date: 12/19/2018 20:58:12 ******/
CREATE DATABASE [QLDT_V1] ON  PRIMARY 
( NAME = N'QLDT_V1', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLDT_V1.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDT_V1_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLDT_V1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDT_V1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDT_V1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDT_V1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLDT_V1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLDT_V1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLDT_V1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLDT_V1] SET ARITHABORT OFF
GO
ALTER DATABASE [QLDT_V1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLDT_V1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLDT_V1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLDT_V1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLDT_V1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLDT_V1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLDT_V1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLDT_V1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLDT_V1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLDT_V1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLDT_V1] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLDT_V1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLDT_V1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLDT_V1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLDT_V1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLDT_V1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLDT_V1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLDT_V1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLDT_V1] SET  READ_WRITE
GO
ALTER DATABASE [QLDT_V1] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLDT_V1] SET  MULTI_USER
GO
ALTER DATABASE [QLDT_V1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLDT_V1] SET DB_CHAINING OFF
GO
USE [QLDT_V1]
GO
/****** Object:  FullTextCatalog [test]    Script Date: 12/19/2018 20:58:12 ******/
CREATE FULLTEXT CATALOG [test]AS DEFAULT
AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[cosodaotao]    Script Date: 12/19/2018 20:58:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cosodaotao](
	[MaTruong] [nvarchar](5) NOT NULL,
	[TenTruong] [nvarchar](70) NOT NULL,
	[DiaChi] [nvarchar](120) NULL,
	[Website] [nvarchar](75) NULL,
	[TinhThanh] [nvarchar](15) NULL,
	[DVChuquan] [nvarchar](60) NULL,
 CONSTRAINT [PK_cosodaotao] PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'ANH', N'Học viện An ninh Nhân dân', N'125 Trần Phú, P. Van Quán, Hà Ðông, Hà Nội', N'www.hvannd.edu.vn', N'Hà Nội', N'Bộ Công An')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'BKA', N'Đại học Bách khoa Hà Nội', N'Số 1 Ðại Cồ Việt, Hai Bà Trung, Hà Nội', N'www.hust.edu.vn/', N'Hà Nội', N'Bộ Giáo Dục & Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'DAD', N'Trường Đại học Đông Á', N'63 đường Lê Van Long, (Lí Tự Trọng nối dài) phường Thanh Bình, Quận Hải Châu, TP.Ðà Nẵng.', N'www.donga.edu.vn', N'Ðà Nẵng', N'Bộ Giáo Dục & Đào Tạo')
/****** Object:  Table [dbo].[chuyennganhdaotao]    Script Date: 12/19/2018 20:58:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuyennganhdaotao](
	[MaNganh] [nvarchar](10) NOT NULL,
	[TenChuyenNganh] [nvarchar](40) NULL,
 CONSTRAINT [PK_chuyennganhdaotao] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'52480201', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'KT22', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'KT23', N'Toán, tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'QT14', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'QT32', N'Khoa học máy tính')
/****** Object:  Table [dbo].[cosonganh]    Script Date: 12/19/2018 20:58:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cosonganh](
	[MaTruong] [nvarchar](5) NOT NULL,
	[MaNganh] [nvarchar](10) NOT NULL,
	[DiemChuan] [real] NOT NULL,
	[ChiTieu] [int] NULL,
 CONSTRAINT [id] PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC,
	[MaNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'ANH', N'52480201', 16.5, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA', N'KT22', 18.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA', N'KT23', 17.5, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA', N'QT14', 18, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'BKA', N'QT32', 22, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'DAD', N'52480201', 15.5, 100)
/****** Object:  ForeignKey [FK_cosonganh_chuyennganhdaotao]    Script Date: 12/19/2018 20:58:13 ******/
ALTER TABLE [dbo].[cosonganh]  WITH CHECK ADD  CONSTRAINT [FK_cosonganh_chuyennganhdaotao] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[chuyennganhdaotao] ([MaNganh])
GO
ALTER TABLE [dbo].[cosonganh] CHECK CONSTRAINT [FK_cosonganh_chuyennganhdaotao]
GO
/****** Object:  ForeignKey [FK_cosonganh_cosodaotao]    Script Date: 12/19/2018 20:58:13 ******/
ALTER TABLE [dbo].[cosonganh]  WITH CHECK ADD  CONSTRAINT [FK_cosonganh_cosodaotao] FOREIGN KEY([MaTruong])
REFERENCES [dbo].[cosodaotao] ([MaTruong])
GO
ALTER TABLE [dbo].[cosonganh] CHECK CONSTRAINT [FK_cosonganh_cosodaotao]
GO
