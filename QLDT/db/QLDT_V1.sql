USE [master]
GO
/****** Object:  Database [QLDT_V1]    Script Date: 12/22/2018 00:42:17 ******/
CREATE DATABASE [QLDT_V1] ON  PRIMARY 
( NAME = N'QLDT_V1', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLDT_V1.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  Table [dbo].[cosodaotao]    Script Date: 12/22/2018 00:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cosodaotao](
	[MaTruong] [nvarchar](255) NOT NULL,
	[TenTruong] [nvarchar](300) NOT NULL,
	[DiaChi] [nvarchar](300) NULL,
	[Website] [nvarchar](300) NULL,
	[TinhThanh] [nvarchar](300) NULL,
	[DVChuquan] [nvarchar](300) NULL,
 CONSTRAINT [PK_cosodaotao] PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'ANH', N'Học viện An ninh Nhân dân', N'125 Trần Phú, P. Van Quán, Hà Ðông, Hà Nội', N'www.hvannd.edu.vn', N'Hà Nội', N'Bộ Công An')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'BKA', N'Đại học Bách khoa Hà Nội', N'Số 1 Ðại Cồ Việt, Hai Bà Trung, Hà Nội', N'www.hust.edu.vn/', N'Hà Nội', N'Bộ Giáo Dục & Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'DAD', N'Trường Đại học Đông Á', N'63 đường Lê Van Long, (Lí Tự Trọng nối dài) phường Thanh Bình, Quận Hải Châu, TP.Ðà Nẵng.', N'www.donga.edu.vn', N'Ðà Nẵng', N'Bộ Giáo Dục & Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'FBU', N'Trường Đại học Tài chính - Ngân hàng Hà Nội', N'136 Phạm Văn Đồng, Xuân Đỉnh, Bắc Từ Liêm, Hà Nội', N'fbu.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'FPT', N'Trường Đại học Fpt', N'Khu Giáo dục và Đào tạo - Khu Công nghệ cao Hòa Lạc - Km29 Đại lộ Thăng Long, Thạch Thất, TP. Hà Nội', N'daihoc.fpt.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'GTA', N'Trường Đại học Công nghệ Giao thông Vận tải', N'54 Triều Khúc, Thanh Xuân, Tp. Hà Nội', N'utt.edu.vn', N'Hà Nội', N'Bộ Giao Thông Vận Tải')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'GTS', N'Trường Đại học Giao thông Vận tải tp. Hồ Chí Minh', N'Số 2, đường D3, Phường 25, Q. Bình Thạnh, TP. Hồ Chí Minh', N'www.ut.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giao Thông Vận Tải')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HDT', N'Trường Đại học Hồng Đức', N'Số 565 Quang Trung 3, Phường Đông Vệ, Thanh Hóa', N'www.hdu.edu.vn', N'Thanh Hóa', N'UBND Tỉnh Thanh Hóa')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HHA', N'Trường Đại học Hàng hải Việt Nam', N'484 Lạch Tray, Đổng Quốc Bình, Lê Chân, Hải Phòng', N'vimaru.edu.vn', N'Hải Phòng', N'Bộ Giao Thông Vận Tải')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HHT', N'Trường Đại học Hà Tĩnh', N'447 Đường 26/3, Phường Đại Nài, Thành phố Hà Tĩnh, Hà Tĩnh', N'htu.edu.vn', N'Hà Tĩnh', N'UBND Tỉnh Hà Tĩnh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HIU', N'Trường Đại học Quốc tế Hồng Bàng', N'215 Điện Biên Phủ, Phường 15, Quận Bình Thạnh, TP. HCM', N'www.hiu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HLU', N'Trường Đại học Hạ Long', N'Số 258, Đường Bạch Đằng, P. Nam Khê, TP Uông Bí, Tỉnh Quảng Ninh', N'daihochalong.edu.vn', N'Tỉnh Quảng Ninh', N'UBND Tỉnh Quảng Ninh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HNM', N'Trường Đại học Thủ đô Hà Nội', N'Số 98 Dương Quảng Hàm, Quan Hoa, Cầu Giấy, Hà Nội', N'www.daihocthudo.edu.vn', N'Hà Nội', N'UBND TP. Hà Nội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HUI', N'Trường Đại học Công nghiệp tp. Hồ Chí Minh', N'Số 12 Nguyễn Văn Bảo, Phường 4, Quận Gò Vấp, Tp.Hồ Chí Minh', N'www.hui.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HVN', N'Học viện Nông nghiệp Việt Nam', N'Trâu Quỳ, Gia Lâm, Hà Nội', N'www.vnua.edu.vn', N'Hà Nội', N'Bộ Nông Nghiệp Và Phát Triển Nông Thôn')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'HVQ', N'Học viện Quản lý Giáo dục', N'Số 31 phố Phan Đình Giót, phường Phương Liệt, quận Thanh Xuân, Hà Nội.', N'naem.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'KCC', N'Trường Đại học Kỹ thuật - Công nghệ Cần Thơ', N'256 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', N'www.ctuet.edu.vn', N'Cần Thơ', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'KCN', N'Trường Đại học Khoa học và Công nghệ Hà Nội', N'Tòa nhà A21, Số 18 Hoàng Quốc Việt, P. Nghĩa Đô, Q. Cầu Giấy, Hà Nội', N'usth.edu.vn', N'Hà Nội', N'Viện Hàn Lâm Khoa Học Và Công Nghệ Việt Nam')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'KHA', N'Trường Đại học Kinh tế Quốc dân', N'Số 207 đường Giải Phóng, quận Hai Bà Trưng, Hà Nội', N'neu.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'KMA', N'Học viện Kỹ thuật Mật mã', N'Số 141 đường Chiến Thắng, Tân Triều, Thanh Trì, Hà nội', N'actvn.edu.vn', N'Hà Nội', N'Ban Cơ Yếu Chính Phủ')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'KSA', N'Trường Đại học Kinh tế tp. Hồ Chí Minh', N'59C Nguyễn Đình Chiểu, phường 6, quận 3, TP. Hồ Chí Minh', N'www.ueh.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'KTA', N'Đại học Kiến trúc Hà Nội', N'Km 10 đường Nguyễn Trãi, quận Thanh Xuân, TP Hà Nội', N'www.hau.edu.vn', N'Hà Nội', N'Bộ Xây Dựng')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'KTC', N'Trường Đại học Kinh tế - Tài chính tp. Hồ Chí Minh', N'276 Điện Biên Phủ, phường 17, quận Bình Thạnh, Tp.HCM', N'uef.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'KTD', N'Trường Đại học Kiến trúc Đà Nẵng', N'Số 566 Núi Thành, Phường Hòa Cường Nam, Quận Hải Châu, Đà Nẵng', N'www.dau.edu.vn', N'Đà Nẵng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'LNH', N'Trường Đại học Lâm nghiệp (Phía Bắc)', N'Thị trấn Xuân Mai, Chương Mỹ, Hà Nội', N'www.vnuf.edu.vn', N'Hà Nội', N'Bộ Nông Nghiệp Và Phát Triển Nông Thôn')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'MBS', N'Trường Đại học Mở tp. Hồ Chí Minh', N'97 Võ Văn Tần, P.6, Q.3, Tp.HCM', N'www.ou.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'MDA', N'Trường Đại học Mỏ - Địa chất', N'Số 18 Phố Viên, Phường Đức Thắng, Q. Bắc Từ Liêm, Hà Nội', N'humg.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'MHN', N'Viện Đại học Mở Hà Nội', N'B101, đường Nguyễn Hiền, quận Hai Bà Trưng, Hà Nội', N'hou.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'NHF', N'Trường Đại học Hà Nội', N'Km 9, Đường Nguyễn Trãi, Quận Thanh Xuân, Hà Nội', N'www.hanu.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'NLS', N'Trường Đại học Nông lâm Tp. Hồ Chí Minh', N'Khu phố 6, P. Linh Trung, Q. Thủ Đức, TP. Hồ Chí Minh', N'www.nlu.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'NTT', N'Trường Đại học Nguyễn Tất Thành', N'300A Nguyễn Tất Thành P13 Q4, TPHCM', N'ntt.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'QHI', N'Trường Đại học Công nghệ - Đại học Quốc gia Hà Nội', N'Nhà E3, 144 Xuân Thủy, Cầu Giấy, Hà Nội', N'www.uet.vnu.edu.vn', N'Hà Nội', N'Đại Học Quốc Gia Hà Nội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'QHQ', N'Khoa Quốc tế - Đại học Quốc gia Hà Nội', N'144 Xuân Thủy, Cầu Giấy, Hà Nội', N'www.is.vnu.edu.vn', N'Hà Nội', N'Đại Học Quốc Gia Hà Nội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'QHT', N'Trường Đại học Khoa học Tự nhiên - Đại học Quốc gia Hà Nội', N'334 đường Nguyễn Trãi, Quận Thanh Xuân, Hà Nội', N'hus.vnu.edu.vn', N'Hà Nội', N'Đại Học Quốc Gia Hà Nội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'QSC', N'Trường Đại học Công nghệ Thông tin - Đại học Quốc gia TP.HCM', N'Khu phố 6, Phường Linh Trung, Quận Thủ Đức, Thành phố Hồ Chí Minh', N'www.uit.edu.vn', N'TP. Hồ Chí Minh', N'Đại Học Quốc Gia TP. Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'QSQ', N'Trường Đại học Quốc tế - Đại học Quốc gia TP.HCM', N'Khu phố 6, P.Linh Trung, Q. Thủ Đức, TP.HCM', N'www.hcmiu.edu.vn', N'TP. Hồ Chí Minh', N'Đại Học Quốc Gia TP. Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'QST', N'Trường Đại học Khoa học Tự nhiên - Đại học Quốc gia TP.HCM', N'227 Đường Nguyễn Văn Cừ, Phường 4, Quận 5, Hồ Chí Minh', N'tuyensinh.hcmus.edu.vn', N'TP. Hồ Chí Minh', N'Đại Học Quốc Gia TP. Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SDU', N'Trường Đại học Sao Đỏ', N'Số 24, Phố Thái Học 2, Phường Sao Đỏ, Thị xã Chí Linh, Hải Dương', N'saodo.edu.vn', N'Hải Dương', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SGD', N'Trường Đại học Sài Gòn', N'273 An Dương Vương, Phường 3, Quận 5, TP. Hồ Chí Minh', N'www.sgu.edu.vn', N'TP. Hồ Chí Minh', N'UBND TP. Hồ Chí Minh')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SKH', N'Trường Đại học Sư phạm Kỹ thuật Hưng Yên', N'Xã Dân Tiến, huyện Khoái Châu, Hưng Yên', N'tuyensinh.utehy.edu.vn', N'Hưng Yên', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SKN', N'Trường Đại học Sư phạm Kỹ thuật Nam Định', N'Đường Phù Nghĩa, Phường Lộc H, Thành Phố Nam Định', N'www.nute.edu.vn', N'Nam Định', N'Bộ Lao Động Thương Binh Và Xã Hội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SKV', N'Trường Đại học Sư phạm Kỹ thuật Vinh', N'Số 117 Đường Nguyễn Viết Xuân, Phường Hưng Dũng, TP. Vinh,  Nghệ An', N'vuted.edu.vn', N'Nghệ An', N'Bộ Lao Động Thương Binh Và Xã Hội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SP2', N'Trường Đại học Sư phạm Hà Nội 2', N'Số 32, đường Nguyễn Văn Linh, phường Xuân Hoà, TP. Phúc Yên, Vĩnh Phúc', N'hpu2.edu.vn', N'Vĩnh Phúc', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SPD', N'Trường Đại học Đồng Tháp', N'783, Phạm Hữu Lầu, Phường 6, Tp. Cao Lãnh, Đồng Tháp', N'www.dthu.edu.vn', N'Đồng Tháp', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SPH', N'Trường Đại học Sư phạm Hà Nội', N'Số 136 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội', N'www.hnue.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SPK', N'Trường Đại học Sư phạm Kỹ thuật tp. Hồ Chí Minh', N'1-3 Võ Văn Ngân, phường Linh Chiểu, Thủ Đức, TP. Hồ Chí Minh', N'tuyensinh.hcmute.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'SPS', N'Trường Đại học Sư phạm tp. Hồ Chí Minh', N'280 An Dương Vương, Phường 4, Quận 5, TP. Hồ Chí Minh', N'hcmue.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TAG', N'Trường Đại học An Giang', N'Số 18 Ung Văn Khiêm, P. Đông Xuyên, TP. Long Xuyên, An Giang', N'www.agu.edu.vn.', N'An Giang', N'UBND Tỉnh An Giang')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TBD', N'Trường Đại học Thái Bình Dương', N'Số 79 Mai Thị Dõng, Vĩnh Ngọc, Nha Trang, Khánh Hòa', N'www.pou.edu.vn', N'Khánh Hòa', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TCT', N'Trường Đại học Cần Thơ', N'Khu II, đường 3/2, P. Xuân Khánh, Q. Ninh Kiều, Cần Thơ', N'www.ctu.edu.vn', N'Cần Thơ', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TCU', N'Trường Đại học Thông tin liên lạc', N'Số 101, đường Mai Xuân Thưởng, phường Vĩnh Hòa, Nha Trang', N'tcu.edu.vn', N'Nha Trang', N'Bộ Quốc Phòng')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TDD', N'Trường Đại học Thành Đô', N'Km 15 Quốc lộ 32, Kim Chung, Hoài Đức,  Hà Nội', N'thanhdo.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TDL', N'Trường Đại học Đà Lạt', N'Số 1 Phù Đổng Thiên Vương, Phường 8, Thành phố Đà Lạt, Lâm Đồng', N'www.dlu.edu.vn', N'Lâm Đồng', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TDM', N'Trường Đại học Thủ Dầu Một', N'Số 6 Trần Văn Ơn, phường Phú Hòa, TP. Thủ Dầu Một, Bình Dương', N'tdmu.edu.vn', N'Bình Dương', N'UBND Tỉnh Bình Dương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TDV', N'Trường Đại học Vinh', N'Số 182, đường Lê Duẩn, thành phố Vinh, Nghệ An', N'www.vinhuni.edu.vn', N'Nghệ An', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'THP', N'Trường Đại học Hải Phòng', N'Số 171 Phan Đăng Lưu, Kiến An, Hải Phòng', N'dhhp.edu.vn', N'Hải Phòng', N'UBND TP. Hải Phòng')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'THV', N'Trường Đại học Hùng Vương', N'Phường Nông Trang, thành phố Việt Trì,  Phú Thọ', N'www.hvu.edu.vn', N'Phú Thọ', N'UBND Tỉnh Phú Thọ')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TKG', N'Trường Đại học Kiên Giang', N'Số 320A, Quốc lộ 61, thị trấn Minh Lương, huyện Châu Thành, Kiên Giang', N'www.vnkgu.edu.vn', N'Kiên Giang', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TLA', N'Trường Đại học Thuỷ lợi', N'Số 175 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội', N'tlu.edu.vn', N'Hà Nội', N'Bộ Nông Nghiệp Và Phát Triển Nông Thôn')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TSN', N'Trường Đại học Nha Trang', N'Số 2 Nguyễn Đình Chiểu, Vĩnh Thọ, Thành phố Nha Trang, Khánh Hòa', N'ntu.edu.vn', N'Khánh Hòa', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TTB', N'Trường Đại học Tây Bắc', N'Phường Quyết Tâm, TP Sơn La, Sơn La', N'www.utb.edu.vn', N'Sơn La', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TTG', N'Trường Đại học Tiền Giang', N'Số 119 đường Ấp Bắc, Phường 5, Thành phố Mỹ Tho, Tiền Giang', N'www.tgu.edu.vn', N'Tiền Giang', N'UBND Tỉnh Tiền Giang')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TTN', N'Trường Đại học Tây Nguyên', N'567 Lê Duẩn, Ea Tam, Thành phố Buôn Ma Thuột, Đắk Lắk ', N'ttn.edu.vn', N'Đắk Lắk', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TTQ', N'Trường Đại học Tư thục Quốc tế Sài Gòn', N'8C & 16 Tống Hữu Định, Phường Thảo Điền, Quận 2, Tp.HCM', N'www.siu.edu.vn', N'Tp.HCM', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'TTU', N'Trường Đại học Tân Tạo', N'Đại lộ Đại học Tân Tạo, Tân Đức E. City, Huyện Đức Hòa,  Long An', N'ttu.edu.vn', N'Long An', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'UKB', N'Trường Đại học Kinh Bắc', N'Phố Phúc Sơn, Phường Vũ Ninh, Bắc Ninh', N'www.daihockinhbac.edu.vn', N'Bắc Ninh', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'VGU', N'Trường Đại học Việt Đức', N'Đường Lê Lai, Phường Hòa Phú, Thành phố Thủ Dầu Một,  Bình Dương', N'www.vgu.edu.vn', N'Bình Dương', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'VHD', N'Trường Đại học Công nghiệp Việt - Hung', N'Số 16, phố Hữu Nghị, phường Xuân Khanh, Sơn Tây, Hà Nội', N'viu.edu.vn', N'Hà Nội', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'VLU', N'Trường Đại học Sư phạm Kỹ thuật Vĩnh Long', N'Số 73 Nguyễn Huệ, Phường 2, Vĩnh Long', N'www.vlute.edu.vn', N'Vĩnh Long', N'Bộ Lao Động Thương Binh Và Xã Hội')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'VUI', N'Trường Đại học Công nghiệp Việt Trì', N'Số 9, đường Tiên Sơn, phường Tiên Cát, thành phố Việt Trì, Phú Thọ', N'vui.edu.vn', N'Phú Thọ', N'Bộ Công Thương')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'XDA', N'Trường Đại học Xây dựng', N'Số 55 đường Giải Phóng, Quận Hai Bà Trưng, Hà Nội', N'tuyensinh.nuce.edu.vn', N'Hà Nội', N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[cosodaotao] ([MaTruong], [TenTruong], [DiaChi], [Website], [TinhThanh], [DVChuquan]) VALUES (N'ZPH', N'Trường Đại học Trần Đại Nghĩa (hệ dân sự)', N'189 Nguyễn Oanh, Phường 10, Q. Gò Vấp, TP. Hồ Chí Minh', N'www.tdnu.edu.vn', N'TP. Hồ Chí Minh', N'Bộ Quốc Phòng')
/****** Object:  Table [dbo].[chuyennganhdaotao]    Script Date: 12/22/2018 00:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuyennganhdaotao](
	[MaNganh] [nvarchar](255) NOT NULL,
	[TenChuyenNganh] [nvarchar](255) NULL,
 CONSTRAINT [PK_chuyennganhdaotao] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480101', N'Khoa học máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480101_CLCA', N'Khoa học máy tính (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480102', N'Mạng máy tính và truyền thông dữ liệu')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480102_CLCA', N'Mạng máy tính và truyền thông dữ liệu (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480103', N'Kỹ thuật phần mềm')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480103_01', N'Công nghệ phần mềm')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480103_CLCA', N'Kỹ thuật phần mềm (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480103C', N'Kỹ thuật phần mềm (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104', N'Hệ thống thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104_CLCA', N'Hệ thống thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104_TT', N'Hệ thống thông tin (tiên tiến)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104TN', N'Hệ thống thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480104VP', N'Hệ thống thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480106', N'Kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480106_CLCA', N'Kỹ thuật máy tính (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480108', N'Công nghệ kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480108A', N'Công nghệ kỹ thuật máy tính (CLC tiếng Anh)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480108C', N'Công nghệ kỹ thuật máy tính (CLC tiếng Việt)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480108D', N'Công nghệ kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480110CLC', N'Máy tính và khoa học thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480110QTD', N'Máy tính và khoa học thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480111', N'Tin học và kỹ thuật máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_BT', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_CLC', N'Công nghệ thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_CLCN', N'Công nghệ thông tin (CLC định hướng Nhật Bản)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_KHDL', N'Công nghệ thông tin (Khoa học dữ liệu)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_TT', N'Công nghệ thông tin (tiên tiến)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201_VP', N'Công nghệ thông tin (liên kết Việt – Pháp)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201A', N'Công nghệ thông tin (CLC tiếng Anh)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201B', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201C', N'Công nghệ thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201CLC', N'Công nghệ thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201D', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201D114', N'Công nghệ thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201D118', N'Công nghệ phần mềm')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201D119', N'Kỹ thuật thuyền thông và mạng máy tính')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201H', N'Công nghệ thông tin (Hòa An)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201H114', N'Công nghệ thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201NB', N'Công nghệ thông tin định hướng thị trường Nhật Bản')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480201P', N'Công nghệ thông tin (POHE)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480202', N'An toàn thông tin')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480202_CLCA', N'An toàn thông tin (CLC)')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7480203D', N'Kỹ thuật dữ liệu')
INSERT [dbo].[chuyennganhdaotao] ([MaNganh], [TenChuyenNganh]) VALUES (N'7489001', N'Khoa học dữ liệu')
/****** Object:  StoredProcedure [dbo].[sp_cosodaotao_getrow]    Script Date: 12/22/2018 00:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_cosodaotao_getrow]
	@_Matruong nvarchar(5) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SET @_Matruong = ISNULL(@_Matruong,'');
	
	SELECT  [MaTruong]
		  ,[TenTruong]
		  ,[DiaChi]
		  ,[Website]
		  ,[TinhThanh]
		  ,[DVChuquan]
	FROM [dbo].[cosodaotao]
	where (@_Matruong = '' OR [MaTruong] = @_Matruong);
	
END
GO
/****** Object:  Table [dbo].[cosonganh]    Script Date: 12/22/2018 00:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cosonganh](
	[MaTruong] [nvarchar](255) NOT NULL,
	[MaNganh] [nvarchar](255) NOT NULL,
	[DiemChuan] [real] NULL,
	[ChiTieu] [int] NULL,
 CONSTRAINT [id] PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC,
	[MaNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'FBU', N'7480201', 15.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'FPT', N'7480101', 0, 0)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'FPT', N'7480103', 0, 0)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'FPT', N'7480202', 0, 0)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480102', 15.5, 240)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480104', 16, 640)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480104TN', 16, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480104VP', 16, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTA', N'7480201', 17, 320)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTS', N'7480102', 17.5, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'GTS', N'7480201', 19.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HDT', N'7480201', 13, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHA', N'7480201D114', 18.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHA', N'7480201D118', 17, 45)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHA', N'7480201D119', 15.5, 45)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHA', N'7480201H114', 14, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HHT', N'7480201', 13.5, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HIU', N'7480201', 14, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HLU', N'7480101', 14, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HNM', N'7480201', 23.93, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HUI', N'7480103C', 16, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HUI', N'7480108', 16, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HUI', N'7480201', 18.75, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HVN', N'7480201', 17, 105)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HVN', N'7480201P', 17, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'HVQ', N'7480201', 16, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCC', N'7480101', 14.5, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCC', N'7480103', 16, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCC', N'7480104', 14.25, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCN', N'7480201', 18, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KCN', N'7480202', 17.3, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KHA', N'7480101', 21.5, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KHA', N'7480201', 21.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KMA', N'7480201', 20.15, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KMA', N'7480202', 19, 420)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KSA', N'7480103_01', NULL, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KTA', N'7480201', 16, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KTC', N'7480201', 18, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'KTD', N'7480201', 15.5, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'LNH', N'7480104', 13, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'MBS', N'7480101', 17, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'MBS', N'7480201', 18.25, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'MDA', N'7480201', 14, 580)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'MHN', N'7480201', 18.75, 330)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NHF', N'7480201', 20.6, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NLS', N'7480201', 18.15, 210)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'NTT', N'7480201', 15.5, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480101', 22, 140)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480102', 23.75, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480104', 23.75, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480106', 21, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480201', 23.75, 240)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHI', N'7480201NB', 23.75, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHQ', N'7480111', 15, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHT', N'7480110CLC', 18.45, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QHT', N'7480110QTD', 20.15, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480101', 22.4, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480101_CLCA', 20.25, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480102', 21.2, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480102_CLCA', 18.6, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480103', 23.2, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480103_CLCA', 21.5, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480104', 21.1, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480104_CLCA', 19, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480104_TT', 17, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480106', 21.7, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480106_CLCA', 18.4, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480201', 22.5, 140)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480201_BT', 20.5, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480201_CLCN', 19, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480201_KHDL', 20.6, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480202', 22.25, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSC', N'7480202_CLCA', 20.1, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSQ', N'7480201', 19, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QSQ', N'7489001', 17, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QST', N'7480201', 22.75, 550)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QST', N'7480201_CLC', 21.2, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QST', N'7480201_TT', 21.4, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'QST', N'7480201_VP', 20.1, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SDU', N'7480201', 14, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SGD', N'7480103', 16.54, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SGD', N'7480201', 18.29, 350)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SGD', N'7480201CLC', 16.53, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKH', N'7480201', 15, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKN', N'7480101', 18, 20)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKN', N'7480201', 18, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKV', N'7480108', 13.5, 45)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SKV', N'7480201', 14, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SP2', N'7480201', 20, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPD', N'7480101', 14.2, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPH', N'7480201A', 16.05, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPH', N'7480201B', 16.05, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480108A', 18.1, 30)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480108C', 18.9, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480108D', 20.6, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480201A', 20, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480201C', 20.2, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480201D', 21.8, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPK', N'7480203D', 19.1, 60)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'SPS', N'7480201', 17, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TAG', N'7480103', 15, 60)
GO
print 'Processed 100 total records'
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TAG', N'7480201', 16, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TBD', N'7480201', 13, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480101', 15.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480102', 15.75, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480103', 17.75, 140)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480104', 15, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480106', 15.25, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480201', 18.25, 240)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480201C', 15, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCT', N'7480201H', 14, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TCU', N'7480201', 20.25, 40)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDD', N'7480201', 14.5, 120)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDL', N'7480201', 14, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDM', N'7480103', 14, 130)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDM', N'7480104', 14, 130)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TDV', N'7480201', 14, 250)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'THP', N'7480201', 14, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'THV', N'7480201', 14, 55)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TKG', N'7480201', 21, 110)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TLA', N'7480103', 16, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TLA', N'7480104', 16, 70)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TLA', N'7480201', 17.95, 340)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TSN', N'7480201', 15.5, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTB', N'7480201', 13, 100)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTG', N'7480104', 13, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTG', N'7480201', 13, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTN', N'7480201', 13, 80)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTQ', N'7480101', 15, 50)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'TTU', N'7480101', 0, 25)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'UKB', N'7480201', 15, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'VGU', N'7480101', 20.1, 90)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'VHD', N'7480201', 14, 300)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'VLU', N'7480201', 15, 200)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'VUI', N'7480201', 13, 150)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'XDA', N'7480201', 19, 115)
INSERT [dbo].[cosonganh] ([MaTruong], [MaNganh], [DiemChuan], [ChiTieu]) VALUES (N'ZPH', N'7480101', 20.25, 40)
/****** Object:  ForeignKey [FK_cosonganh_chuyennganhdaotao]    Script Date: 12/22/2018 00:42:19 ******/
ALTER TABLE [dbo].[cosonganh]  WITH CHECK ADD  CONSTRAINT [FK_cosonganh_chuyennganhdaotao] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[chuyennganhdaotao] ([MaNganh])
GO
ALTER TABLE [dbo].[cosonganh] CHECK CONSTRAINT [FK_cosonganh_chuyennganhdaotao]
GO
/****** Object:  ForeignKey [FK_cosonganh_cosodaotao]    Script Date: 12/22/2018 00:42:19 ******/
ALTER TABLE [dbo].[cosonganh]  WITH CHECK ADD  CONSTRAINT [FK_cosonganh_cosodaotao] FOREIGN KEY([MaTruong])
REFERENCES [dbo].[cosodaotao] ([MaTruong])
GO
ALTER TABLE [dbo].[cosonganh] CHECK CONSTRAINT [FK_cosonganh_cosodaotao]
GO
