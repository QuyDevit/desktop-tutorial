USE [master]
GO
/****** Object:  Database [QLDETAINCKH]    Script Date: 3/23/2023 11:05:55 PM ******/
CREATE DATABASE [QLDETAINCKH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLDETAINCKH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\QLDETAINCKH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLDETAINCKH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\QLDETAINCKH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLDETAINCKH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDETAINCKH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDETAINCKH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLDETAINCKH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLDETAINCKH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLDETAINCKH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLDETAINCKH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET RECOVERY FULL 
GO
ALTER DATABASE [QLDETAINCKH] SET  MULTI_USER 
GO
ALTER DATABASE [QLDETAINCKH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLDETAINCKH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLDETAINCKH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLDETAINCKH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLDETAINCKH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLDETAINCKH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLDETAINCKH] SET QUERY_STORE = OFF
GO
USE [QLDETAINCKH]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[MaAccount] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Pass] [varchar](255) NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[MaTypeAccount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIENBANCHAMDECUONG]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIENBANCHAMDECUONG](
	[IDBienBan] [int] IDENTITY(1,1) NOT NULL,
	[IdDangKy] [int] NULL,
	[MaHoiDong] [int] NULL,
	[MaGiangVien] [int] NULL,
	[Diem] [float] NULL,
	[DanhGia] [nvarchar](max) NULL,
	[MinhChung] [nvarchar](255) NULL,
 CONSTRAINT [PK__BIENBANC__61A114E2EED07913] PRIMARY KEY CLUSTERED 
(
	[IDBienBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIENBANNGHIEMTHU]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIENBANNGHIEMTHU](
	[IDBienBan] [int] IDENTITY(1,1) NOT NULL,
	[MaHoiDong] [int] NULL,
	[MaDeTai] [int] NULL,
	[Diem] [float] NULL,
	[NhanXet] [nvarchar](max) NULL,
	[LinkBienBan] [nvarchar](250) NULL,
	[MaGiangVien] [int] NULL,
 CONSTRAINT [PK__BIENBANN__D0123202EAFC80F7] PRIMARY KEY CLUSTERED 
(
	[IDBienBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDONXINGIAHAN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONXINGIAHAN](
	[MaCTDXGH] [int] NOT NULL,
	[NgayGiaHan] [date] NULL,
	[NgayHoanThanh] [date] NULL,
	[LinkDonXin] [nvarchar](max) NULL,
	[IsAccept] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTDXGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETNHOM]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETNHOM](
	[IdCTNhom] [int] IDENTITY(1,1) NOT NULL,
	[MaNhom] [varchar](20) NOT NULL,
	[MaSoSinhVien] [varchar](20) NULL,
	[HoTen] [nvarchar](50) NULL,
	[IDDangKy] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_CHITIETNHOM] PRIMARY KEY CLUSTERED 
(
	[IdCTNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETHOIDONGDECUONG]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOIDONGDECUONG](
	[IDCT] [int] IDENTITY(1,1) NOT NULL,
	[MaHoiDong] [int] NOT NULL,
	[MaGiangVien] [int] NOT NULL,
 CONSTRAINT [PK_CHITIETHOIDONGDECUONG] PRIMARY KEY CLUSTERED 
(
	[IDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETHOIDONGNGHIEMTHU]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOIDONGNGHIEMTHU](
	[IDCT] [int] IDENTITY(1,1) NOT NULL,
	[MaHoiDong] [int] NOT NULL,
	[MaGiangVien] [int] NOT NULL,
 CONSTRAINT [PK_CHITIETHOIDONGNGHIEMTHU] PRIMARY KEY CLUSTERED 
(
	[IDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUONGTRINH]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUONGTRINH](
	[MaCT] [nvarchar](10) NOT NULL,
	[TenCT] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHUONGTRINH] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANGKY]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKY](
	[IDDangKy] [int] IDENTITY(1,1) NOT NULL,
	[TenDeTai] [nvarchar](max) NULL,
	[MaNhom] [varchar](20) NULL,
	[MaSoSinhVien] [varchar](20) NOT NULL,
	[MaGiangVien] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaHoiDong] [int] NULL,
	[LinkDeCuong] [nvarchar](150) NULL,
	[TrangThai] [int] NULL,
	[NgayDangKy] [datetime] NULL,
	[KetQua] [bit] NULL,
 CONSTRAINT [PK__DANGKY__735660836B7DE7F7] PRIMARY KEY CLUSTERED 
(
	[IDDangKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETAI]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAI](
	[MaDeTai] [int] IDENTITY(1,1) NOT NULL,
	[TenDeTai] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaNganh] [nvarchar](10) NULL,
	[NgayThucHien] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[KinhPhiDuKien] [money] NULL,
	[KetQua] [nvarchar](10) NULL,
	[LinkDeTai] [nvarchar](max) NULL,
	[MaTrangThai] [int] NULL,
	[MaGiangVien] [int] NULL,
	[MaHoiDong] [int] NULL,
	[MaNhom] [varchar](20) NULL,
	[MaSoSinhVien] [varchar](20) NULL,
 CONSTRAINT [PK__DETAI__9F967D5BB67B2C6A] PRIMARY KEY CLUSTERED 
(
	[MaDeTai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONXINGIAHAN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONXINGIAHAN](
	[MaDonXinGiaHan] [int] NOT NULL,
	[MaGiangVien] [int] NULL,
	[MaCTDXGH] [int] NULL,
	[MaDeTai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonXinGiaHan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[MaGiangVien] [int] IDENTITY(1,1) NOT NULL,
	[MaSoGiangVien] [varchar](20) NULL,
	[TenGiangVien] [nvarchar](255) NULL,
	[Nganh] [nvarchar](10) NULL,
	[TrinhDo] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[MaAccount] [int] NULL,
	[MaKhoa] [nvarchar](10) NULL,
	[Gmail] [varchar](100) NULL,
	[MaCT] [nvarchar](50) NULL,
 CONSTRAINT [PK__GIANGVIE__C03BEEBAEF35B90B] PRIMARY KEY CLUSTERED 
(
	[MaGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOIDONGDUYETDECUONG]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOIDONGDUYETDECUONG](
	[MaHoiDong] [int] IDENTITY(1,1) NOT NULL,
	[TenHoiDong] [nvarchar](50) NULL,
	[MaKhoa] [nvarchar](10) NULL,
	[SoLuongTV] [bit] NULL,
	[MaCT] [nvarchar](10) NULL,
 CONSTRAINT [PK__HOIDONGD__998808B357E61839] PRIMARY KEY CLUSTERED 
(
	[MaHoiDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOIDONGNGHIEMTHU]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOIDONGNGHIEMTHU](
	[MaHoiDong] [int] IDENTITY(1,1) NOT NULL,
	[TenHoiDong] [nvarchar](50) NULL,
	[NgayNghiemThu] [datetime] NULL,
	[MaKhoa] [nvarchar](10) NULL,
	[SoLuongTV] [bit] NULL,
	[MaCT] [nvarchar](10) NULL,
 CONSTRAINT [PK__HOIDONGN__998808B3C1A427BD] PRIMARY KEY CLUSTERED 
(
	[MaHoiDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MaKhoa] [nvarchar](10) NOT NULL,
	[TenKhoa] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGANH]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGANH](
	[MaNganh] [nvarchar](10) NOT NULL,
	[TenNganh] [nvarchar](1000) NULL,
	[MaKhoa] [nvarchar](10) NOT NULL,
	[MaCT] [nvarchar](50) NULL,
 CONSTRAINT [PK__NGANH__A2CEF50DA21238F5] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHOM]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOM](
	[MaNhom] [varchar](20) NOT NULL,
	[TenNhom] [varchar](50) NULL,
 CONSTRAINT [PK__NHOM__234F91CDCE31D14F] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSinhVien] [int] IDENTITY(1,1) NOT NULL,
	[MaSoSinhVien] [varchar](20) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaNganh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[CCCD] [varchar](15) NULL,
	[TKNganHang] [varchar](20) NULL,
	[SDT] [varchar](20) NULL,
	[Lop] [nvarchar](100) NULL,
	[NienKhoa] [varchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](150) NULL,
	[ChiNhanhNganHang] [nvarchar](150) NULL,
	[MaAccount] [int] NULL,
	[MaNhom] [int] NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPEACCOUNT]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPEACCOUNT](
	[MaTypeAccount] [int] IDENTITY(1,1) NOT NULL,
	[TenTypeAccount] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTypeAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGBAO]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGBAO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenThongBao] [nvarchar](50) NULL,
	[NoiDungTb] [ntext] NULL,
	[NgayGui] [date] NULL,
	[NguoiNhan] [int] NULL,
 CONSTRAINT [PK_THONGBAO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBaoChamLai]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBaoChamLai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Thongbao] [ntext] NULL,
	[MaHoiDong] [int] NULL,
	[IdDangKy] [int] NULL,
	[IsCheck] [bit] NULL,
	[DateModified] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANGTHAI]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHAI](
	[MaTrangThai] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ACCOUNT] ON 

INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (1, N'2024802010433', N'datnguyen777@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn Đạt', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (2, N'2024802010434', N'thanhlam@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Lâm Chấn Thanh', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (3, N'2024802010435', N'nguyenvana@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn A', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (4, N'2024802010436', N'nguyenvanb@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn B', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (5, N'2024802010437', N'nguyenvanc@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn C', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (6, N'GV01', N'duybao@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Trần Duy Bảo', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (7, N'GV02', N'thanhlam@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Trần Thanh Lâm', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (8, N'QLCTCNTT', N'tdmuu@ql.vn', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn Quản Lý', 3)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (9, N'GV03', N'nguuyenvana@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn A', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (10, N'GV04', N'hoavan@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn Hòa', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (11, N'GV05', N'vantai@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn Tài', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (12, N'GV06', N'vanhuu@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn Hữu', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (13, N'QLVKTCN', N'cristiano@tdmu.vn', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn Cris', 4)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (15, N'2024802010438', N'vand@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn D', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (16, N'2024802010439', N'vane@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Văn E', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (17, N'2024802010440', N'baf@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Lê Bá F', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (18, N'2024802010441', N'tuang@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Trương Tuấn G', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (19, N'QLT', N'tung@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Thái Văn Tùng', 5)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (20, N'GV07', N'huu@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Hữu', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (21, N'Admin', N'tu@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Trương Tuấn Tú', 6)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (22, N'GV23', N'GV23@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Hoàng Văn Thụ', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (23, N' user2', N' user2@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Tran Thi B', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (24, N' user3', N' user3@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Le Van C', 3)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (25, N' user4', N' user4@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Pham Thi D', 4)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (26, N' user5', N' user5@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Tran Van E', 5)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (27, N' user6', N' user6@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Nguyen Thi F', 1)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (28, N' user7', N' user7@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Hoang Van G', 2)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (29, N' user8', N' user8@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Nguyen Thi H', 3)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (30, N' user9', N' user9@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Tran Van I', 4)
INSERT [dbo].[ACCOUNT] ([MaAccount], [UserName], [Email], [Pass], [HoVaTen], [MaTypeAccount]) VALUES (31, N' user10', N' user10@gmail.com', N' c4ca4238a0b923820dcc509a6f75849b', N' Le Thi K', 5)
SET IDENTITY_INSERT [dbo].[ACCOUNT] OFF
GO
SET IDENTITY_INSERT [dbo].[BIENBANCHAMDECUONG] ON 

INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (12, 38, 2, 6, 7, N'tot', N'message.txt')
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (13, 41, 2, 1, 8, N'good', N'000 (1).JPG')
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (14, 38, 2, 2, 8, N'tam', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (15, 38, 2, 2, 9, N'ok', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (16, 42, 3, 6, 9, N'dasd', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (17, 42, 3, 1, 8, N'gf', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (18, 42, 3, 2, 6, N'fc', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (19, 39, 2, 2, 3, N'a', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (20, 39, 2, 1, 5, N'c', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (21, 39, 2, 6, 4, N'1', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (1019, 40, 1047, 2, 4, N'1', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (1020, 40, 1047, 6, 3, N't', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (1022, 40, 1047, 23, 4, N'f', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (1026, 63, 2, 1, 6, N'sd', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (1027, 63, 2, 2, 8, N'dd', NULL)
INSERT [dbo].[BIENBANCHAMDECUONG] ([IDBienBan], [IdDangKy], [MaHoiDong], [MaGiangVien], [Diem], [DanhGia], [MinhChung]) VALUES (1028, 63, 2, 6, 9, N'd', NULL)
SET IDENTITY_INSERT [dbo].[BIENBANCHAMDECUONG] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETNHOM] ON 

INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (42, N'2024802010433', N'2024802010433', N'Nguyễn Văn Đạt', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (49, N'2024802010433', N'2222222222222', N'Cristiano Ronaldo', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (50, N'2024802010434', N'2024802010434', N'Lâm Chấn Thanh', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (51, N'2024802010434', N'2222222222223', N'Cristiano Ronaldo', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (52, N'2024802010434', N'222222222224', N'Trần Hưng', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (53, N'2024802010435', N'2024802010435', N'Nguyễn Văn A', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (54, N'2024802010436', N'2024802010436', N'Nguyễn Văn B', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (55, N'2024802010437', N'2024802010437', N'Nguyễn Văn C', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (56, N'2024802010438', N'2024802010438', N'Nguyễn Văn D', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (57, N'2024802010439', N'2024802010439', N'Nguyễn Văn E', NULL, 1)
INSERT [dbo].[CHITIETNHOM] ([IdCTNhom], [MaNhom], [MaSoSinhVien], [HoTen], [IDDangKy], [TrangThai]) VALUES (58, N'2024802010441', N'2024802010441', N'Trương Tuấn G', NULL, 1)
SET IDENTITY_INSERT [dbo].[CHITIETNHOM] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETHOIDONGDECUONG] ON 

INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (193, 2, 2)
INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (194, 2, 6)
INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (199, 2, 1)
INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (206, 1051, 1)
INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (207, 1051, 2)
INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (208, 1051, 6)
INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (209, 1047, 23)
INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (210, 1047, 6)
INSERT [dbo].[CHITIETHOIDONGDECUONG] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (211, 1047, 2)
SET IDENTITY_INSERT [dbo].[CHITIETHOIDONGDECUONG] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETHOIDONGNGHIEMTHU] ON 

INSERT [dbo].[CHITIETHOIDONGNGHIEMTHU] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (4, 1, 1)
INSERT [dbo].[CHITIETHOIDONGNGHIEMTHU] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (5, 1, 2)
INSERT [dbo].[CHITIETHOIDONGNGHIEMTHU] ([IDCT], [MaHoiDong], [MaGiangVien]) VALUES (6, 1, 23)
SET IDENTITY_INSERT [dbo].[CHITIETHOIDONGNGHIEMTHU] OFF
GO
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTCNOT', N'Công Nghệ Ô tô')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTCNTT', N'Công Nghệ Thông Tin')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTCNVH', N'Công Nghiệp Văn Hóa')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTD', N'Hóa Dược')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTGDTH', N'Giáo Dục Tiểu Học')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTKTDT', N'Kỹ Thuật Điện Tử')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTNN', N'Ngoại Ngữ')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTQLDV', N'Quản Lý Dịch Vụ')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTQTKD', N'Quản Trị Kinh Doanh')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTSP', N'Sư Phạm')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTTC', N'Tài Chính Ngân Hàng')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTTKDH', N'Thiết Kế Đồ Họa')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTTL', N'Tâm Lý Học')
INSERT [dbo].[CHUONGTRINH] ([MaCT], [TenCT]) VALUES (N'CTY', N'Y')
GO
SET IDENTITY_INSERT [dbo].[DANGKY] ON 

INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (38, N'Đề Tài Mo phỏng Ăn Uống', N'2024802010433', N'2024802010433', 1, N'<p>a</p>
', 2, N'Bài tập 02 NM (1).pdf', 2, CAST(N'2023-01-04T13:49:19.807' AS DateTime), 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (39, N'Đề Tài Mo phỏng Ăn Uống 2', N'2024802010434', N'2024802010434', 1, N'<p>1</p>
', 2, N'Lab 5.pdf', 6, CAST(N'2023-01-10T13:49:19.807' AS DateTime), 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (40, N'Đề Tài Mo phỏng Ăn Uống 3', N'2024802010435', N'2024802010435', 1, N'<p>14</p>
', 1047, N'DAP AN _12 (1).pdf', 6, CAST(N'2023-02-10T13:49:19.807' AS DateTime), 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (41, N'Xây dựng web bán sách', N'2024802010436', N'2024802010436', 6, N'<p>&aacute;dasd</p>
', 2, N'Lab 1_.pdf', 1, CAST(N'2023-02-20T13:49:19.807' AS DateTime), 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (47, N'sdret', N'2024802010439', N'2024802010439', 4, N'ád', 1, N'dsf', 1, NULL, NULL)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (49, N'ádasd', N'2024802010437', N'2024802010437', 12, N'ád', 1, N'ád', 1, NULL, NULL)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (51, N'sdfdsf', N'2024802010440', N'2024802010440', 10, N'sdfsd', 1, N'áhj', 1, NULL, NULL)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (52, N'D', N'2024802010442', N'2024802010442', 13, N'<p>a</p>
', 2, N'Bài tập 02 NM (1).pdf', 2, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (53, N'F 2', N'2024802010443', N'2024802010443', 14, N'<p>1</p>
', 1, N'Code_GiaLapDos.pdf', 1, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (54, N'G 3', N'2024802010444', N'2024802010444', 15, N'<p>14</p>
', 1, N'Chưa Nộp Đề Cương', 1, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (55, N'H', N'2024802010445', N'2024802010445', 16, N'<p>&aacute;dasd</p>
', 2, N'Lab 1_.pdf', 1, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (56, N'J', N'2024802010446', N'2024802010446', 17, N'<p>a</p>
', 2, N'Bài tập 02 NM (1).pdf', 2, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (57, N'K', N'2024802010447', N'2024802010447', 18, N'<p>1</p>
', 1, N'Code_GiaLapDos.pdf', 1, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (58, N'L', N'2024802010448', N'2024802010448', 19, N'<p>14</p>
', 1, N'Chưa Nộp Đề Cương', 1, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (59, N'S', N'2024802010449', N'2024802010449', 20, N'<p>&aacute;dasd</p>
', 2, N'Lab 1_.pdf', 1, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (60, N'Z', N'2024802010450', N'2024802010450', 21, N'<p>a</p>
', 2, N'Bài tập 02 NM (1).pdf', 2, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (61, N'V', N'2024802010451', N'2024802010451', 22, N'<p>1</p>
', 1, N'Code_GiaLapDos.pdf', 1, NULL, 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (63, N'Xây chat bot AI cạnh trạnh Chat GPT', N'2024802010438', N'2024802010438', 6, N'<p>...</p>
', 2, N'C3.pdf', 3, CAST(N'2023-03-20T22:08:22.570' AS DateTime), 0)
INSERT [dbo].[DANGKY] ([IDDangKy], [TenDeTai], [MaNhom], [MaSoSinhVien], [MaGiangVien], [GhiChu], [MaHoiDong], [LinkDeCuong], [TrangThai], [NgayDangKy], [KetQua]) VALUES (64, N'Giải pháp giảm ùn tắc giao thông ', N'2024802010441', N'2024802010441', 1, N'<p>sớm ho&agrave;n th&agrave;nh</p>
', 2, N'Yeu cau - TH2.pdf', 6, CAST(N'2023-03-23T21:20:11.850' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[DANGKY] OFF
GO
SET IDENTITY_INSERT [dbo].[DETAI] ON 

INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (3, N'Đề Tài Mo phỏng Ăn Uống', N'<p>a</p>
', N'KTPM', NULL, NULL, 4000000.0000, NULL, N'message (1).txt\Binhngu.txt\', 5, 1, 1, N'2024802010433', N'2024802010433')
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (4, N'Đề Tài Mo phỏng Ăn Uống', N'ádf', N'CNTT', NULL, NULL, 4000000.0000, NULL, N'ÁD', 3, 1, 1, N'2024802010433', N'2024802010433')
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (5, N'ỂTRTER', N'DSX', N'TCNH', NULL, NULL, 4000000.0000, NULL, N'SAD', 2, 12, 1, N'2024802010433', N'2024802010433')
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (6, N'DFGFD', N'FDSF', N'QLKH', NULL, NULL, 4000000.0000, NULL, N'ÁD', 5, 18, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (7, N'SDF', N'HGF', N'YSH', NULL, NULL, 4000000.0000, NULL, N'SAD', 5, 13, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (8, N'VCBVC', N'ẺT', N'TKDH', NULL, NULL, 4000000.0000, NULL, NULL, NULL, 14, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (9, N'ÁDAS', N'GDF', N'NNA', NULL, NULL, 4000000.0000, NULL, NULL, NULL, 15, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (10, N'ÁDAS', N'FDG', N'MT', NULL, NULL, 4000000.0000, NULL, NULL, NULL, 16, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (11, N'KRTYRTYTR', N'XCVB', N'MKT', NULL, NULL, 4000000.0000, NULL, NULL, NULL, 17, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (12, N'JNCD', N'ÁQW', N'DDT', NULL, NULL, 4000000.0000, NULL, NULL, NULL, 19, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (13, N'DFCXVCX', N'GREER', N'TCDN', NULL, NULL, 4000000.0000, NULL, NULL, NULL, 20, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (14, N'RÊTR', N'XC', N'KTDDT', NULL, NULL, 4000000.0000, NULL, NULL, NULL, 21, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (15, N'DFC', N'CFE', N'KTCTM', NULL, NULL, 4000000.0000, NULL, NULL, NULL, 22, 1, NULL, NULL)
INSERT [dbo].[DETAI] ([MaDeTai], [TenDeTai], [GhiChu], [MaNganh], [NgayThucHien], [NgayKetThuc], [KinhPhiDuKien], [KetQua], [LinkDeTai], [MaTrangThai], [MaGiangVien], [MaHoiDong], [MaNhom], [MaSoSinhVien]) VALUES (16, N'Xây chat bot AI cạnh trạnh Chat GPT', N'<p>...</p>
', NULL, CAST(N'2023-03-20T22:08:22.570' AS DateTime), NULL, NULL, NULL, N'Mau bao cao hoc may  TTNT.docx\2.jpg\', 4, 6, 1, N'2024802010438', N'2024802010438')
SET IDENTITY_INSERT [dbo].[DETAI] OFF
GO
SET IDENTITY_INSERT [dbo].[GIANGVIEN] ON 

INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (1, N'GV01', N'Trần Duy Bảo', N'CNTT', N'Giáo sư', CAST(N'1976-07-06' AS Date), 1, N'KTCN', N'duybao@gmail.com', N'CTCNTT    ')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (2, N'GV02', N'Trần Thanh Lâm', N'KTPM', N'Thạc sĩ', CAST(N'1986-07-06' AS Date), 2, N'KTCN', N'thanhlam@gmail.com', N'CTCNTT    ')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (3, N'GV03', N'Nguyễn Văn A', N'SPMN', N'Thạc sĩ', CAST(N'1988-07-06' AS Date), 3, N'SP', N'nguuyenvana@gmail.com', NULL)
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (4, N'GV04', N'Nguyễn Văn Hòa', N'SPLS', N'Giáo sư', CAST(N'1988-04-02' AS Date), 4, N'SP', N'hoavan@gmail.com', NULL)
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (5, N'GV05', N'Nguyễn Văn Tài', N'LOG', N'Giáo sư', CAST(N'1968-04-02' AS Date), 5, N'KTE', N'vantai@gmail.com', NULL)
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (6, N'GV06', N'Nguyễn Văn Hữu', N'CNTT', N'Thạc sĩ', CAST(N'1987-04-02' AS Date), 6, N'KTCN', N'vanhuu@gmail.com', N'CTCNTT    ')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (7, N'QLCTCNTT', N'Nguyễn Văn Quản Lý', N'CNTT', N'Tiến Sĩ', CAST(N'1999-02-01' AS Date), 7, N'KTCN', N'tdmuu@ql.vn', N'CTCNTT    ')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (8, N'QLVKTCN', N'Nguyễn Văn Cris', N'SPLS', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KTCN', N'cristiano@tdmu.vn', N'CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (9, N'QLT', N'Thái Văn Tùng', N'TKDH', N'Tiến Sĩ', CAST(N'1990-02-10' AS Date), 19, N'KTCN', N'tung@gmail.com', NULL)
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (10, N'GV07', N'Nguyễn Hữu', N'CNOT', N'Thạc Sĩ', CAST(N'1988-02-19' AS Date), 20, N'KTCN', N'huu@gmail.com', N'CTCNOT    ')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (11, N'Admin', N'Trương Tuấn Tú', N'KTPM', N'Tiến Sĩ', CAST(N'1980-02-18' AS Date), 21, N'KTCN', N'tu@gmail.com', N'CTCNTT    ')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (12, N'GV08', N'Sang', N'TCNH', N'Thạc Sĩ', CAST(N'1981-02-02' AS Date), NULL, N'KTE', N'sang@gmail.com', N'CTTCNH    ')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (13, N'GV13', N'Nguyễn Văn R', N'YSH', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KYD', N'R@tdmu.vn', N'CTY')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (14, N'GV14', N'Nguyễn Văn T', N'TKDH', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KTR', N'T@tdmu.vn', N'CTTKDH')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (15, N'GV15', N'Nguyễn Văn Y', N'NNA', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KNN', N'Y@tdmu.vn', N'CTNN')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (16, N'GV16', N'Nguyễn Văn U', N'MT', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'CNVH', N'U@tdmu.vn', N'CTCNVH')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (17, N'GV17', N'Nguyễn Văn I', N'MKT', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KHQL', N'I@tdmu.vn', N'CTQTKD')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (18, N'GV18', N'Nguyễn Văn O', N'QLKH', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KHQL', N'O@tdmu.vn', N'CTLDV')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (19, N'GV19', N'Nguyễn Văn P', N'DDT', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'SP', N'P@tdmu.vn', N'CTGDTH')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (20, N'GV20', N'Nguyễn Văn F', N'TCDN', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KTE', N'F@tdmu.vn', N'CTTC')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (21, N'GV21', N'Nguyễn Văn G', N'KTDDT', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KTCN', N'G@tdmu.vn', N'CTKTDT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (22, N'GV22', N'Nguyễn Văn H', N'KTCTM', N'Tiến Sĩ', CAST(N'2000-02-10' AS Date), 13, N'KTCN', N'H@tdmu.vn', N'CTCNOT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (23, N'GV23', N'Hoàng Văn Thụ', N'CNTT', N'Tiến Sĩ', CAST(N'1988-02-10' AS Date), 13, N'KTCN', N'GV23@gmail.com', N'CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (26, N' GV002', N' Tran Thi B', N' CNTT', N' Tien Si', CAST(N'1985-05-12' AS Date), 102, N' Khoa KT', N' b@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (27, N' GV003', N' Le Van C', N'KTPM', N' Tien Si', CAST(N'1980-12-31' AS Date), 103, N' Khoa Toan', N' c@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (29, N' GV002', N' Tran Thi B', N' CNTT', N' Tien Si', CAST(N'1985-05-12' AS Date), 102, N' KTCN', N' b@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (30, N' GV003', N' Le Van C', N'KTPM', N' Tien Si', CAST(N'1980-12-31' AS Date), 103, N' KTCN', N' c@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (31, N' GV004', N' Pham Thi D', N' KTPM', N' Thac Si', CAST(N'1988-06-30' AS Date), 104, N' KTCN', N' d@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (32, N' GV005', N' Tran Van E', N'KTPM', N' Tien Si', CAST(N'1995-10-15' AS Date), 105, N' KTCN', N' e@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (33, N' GV006', N' Nguyen Thi F', N'KTPM', N' Thac Si', CAST(N'1992-04-20' AS Date), 106, N' KTCN', N' f@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (34, N' GV007', N' Hoang Van G', N'KTPM', N' Tien Si', CAST(N'1983-09-05' AS Date), 107, N' KTCN', N' g@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (35, N' GV008', N' Nguyen Thi H', N'KTPM', N' Thac Si', CAST(N'1991-11-22' AS Date), 108, N' KTCN', N' h@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (36, N' GV009', N' Tran Van I', N' CNTT', N' Tien Si', CAST(N'1986-07-16' AS Date), 109, N' KTCN', N' i@gmail.com', N' CTCNTT')
INSERT [dbo].[GIANGVIEN] ([MaGiangVien], [MaSoGiangVien], [TenGiangVien], [Nganh], [TrinhDo], [NgaySinh], [MaAccount], [MaKhoa], [Gmail], [MaCT]) VALUES (37, N' GV010', N' Le Thi K', N' CNTT', N' Thac Si', CAST(N'1993-03-28' AS Date), 110, N' KTCN', N' k@gmail.com', N' CTCNTT')
SET IDENTITY_INSERT [dbo].[GIANGVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[HOIDONGDUYETDECUONG] ON 

INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (1, N'Chưa có', NULL, 0, NULL)
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (2, N'Hội Đồng 1', N'KTCN', 1, N'CTCNTT')
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (5, N'Hội Đồng 1', N'KTE', 0, NULL)
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (6, N'Hội Đồng 2', N'KTE', 0, NULL)
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (7, N'Hội Đồng 3', N'KTE', 0, NULL)
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (1047, N'Hội Đồng 2', N'KTCN', 1, N'CTCNTT')
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (1048, N'Hội Đồng 3', N'KTCN', 0, N'CTCNTT')
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (1049, N'Hội Đồng 4', N'KTCN', 0, N'CTCNTT')
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (1050, N'Hội Đồng 5', N'KTCN', 0, N'CTCNTT')
INSERT [dbo].[HOIDONGDUYETDECUONG] ([MaHoiDong], [TenHoiDong], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (1051, N'Hội Đồng 6', N'KTCN', 1, N'CTCNTT')
SET IDENTITY_INSERT [dbo].[HOIDONGDUYETDECUONG] OFF
GO
SET IDENTITY_INSERT [dbo].[HOIDONGNGHIEMTHU] ON 

INSERT [dbo].[HOIDONGNGHIEMTHU] ([MaHoiDong], [TenHoiDong], [NgayNghiemThu], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (1, N'Hội Đồng 1', NULL, N'KTCN', 0, N'CTCNTT')
INSERT [dbo].[HOIDONGNGHIEMTHU] ([MaHoiDong], [TenHoiDong], [NgayNghiemThu], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (2, N'Hội Đồng 2', NULL, N'KTCN', 0, N'CTCNTT')
INSERT [dbo].[HOIDONGNGHIEMTHU] ([MaHoiDong], [TenHoiDong], [NgayNghiemThu], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (3, N'Hội Đồng 3', NULL, N'KTCN', 0, N'CTCNTT')
INSERT [dbo].[HOIDONGNGHIEMTHU] ([MaHoiDong], [TenHoiDong], [NgayNghiemThu], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (4, N'Chưa có', NULL, NULL, 0, NULL)
INSERT [dbo].[HOIDONGNGHIEMTHU] ([MaHoiDong], [TenHoiDong], [NgayNghiemThu], [MaKhoa], [SoLuongTV], [MaCT]) VALUES (5, N'Hội Đồng 4', NULL, N'KTCN', 0, N'CTCNTT')
SET IDENTITY_INSERT [dbo].[HOIDONGNGHIEMTHU] OFF
GO
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'CNVH', N'Công Nghiệp Văn Hóa')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KNN', N'Ngoại Ngữ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KTCN', N'Viện Kỹ Thuật Công Nghệ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KTE', N'Kinh Tế')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KTR', N'Kiến Trúc')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KYD', N'Y - Dược')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KHQL', N'Khoa Học Quản Lý')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'PTUD', N'Phát Triển Ứng Dụng')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'SP', N'Sư Phạm')
GO
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'AN', N'Âm Nhạc', N'CNVH', N'CTCNVH')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'ATTT', N'An Toàn Thông Tin', N'KTCN', N'CTCNTT')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'CNTT', N'Công Nghệ Thông Tin', N'KTCN', N'CTCNTT')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'DDT', N'Điều Dưỡng Trẻ', N'SP', N'CTGDTH')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'GVTH', N'Giáo Viên Tiểu Học', N'SP', N'CTGDTH')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'HD', N'Hóa Dược', N'KYD', N'CTD')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'HSD', N'Hóa Sinh Dược', N'KYD', N'CTD')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'HTTT', N'Hệ Thống Thông Tin', N'KTCN', N'CTCNTT')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'KTCDT', N'Kỹ Thuật Cơ Điện Tử', N'KTCN', N'CTKTDT')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'KTCTM', N'Kỹ Thuật Chế Tạo Máy', N'KTCN', N'CTCNOT')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'KTDDT', N'Kỹ Thuật Điện Điện Tử', N'KTCN', N'CTKTDT')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'KTOT', N'Kỹ Thuật Ôtô', N'KTCN', N'CTCNOT')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'KTPM', N'Kỹ Thuật Phầm Mềm', N'KTCN', N'CTCNTT')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'MKT', N'Marketing', N'KHQL', N'CTQTKD')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'MT', N'Mỹ Thuật', N'CNVH', N'CTCNVH')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'NNA', N'Ngôn Ngữ Anh', N'KNN', N'CTNN')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'NNTQ', N'Ngôn Ngữ Trung Quốc', N'KNN', N'CTNN')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'QLKH', N'Quản Lý Khách Hàng', N'KHQL', N'CTQLDV')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'QLNS', N'Quản Lý Nhân Sự', N'KHQL', N'CTQLDV')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'QLTC', N'Quản Lý Tài Chính', N'KHQL', N'CTQTKD')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'SPLS', N'Sư Phạm Lịch Sử', N'SP', N'CTSP')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'SPV', N'Sư Phạm Văn', N'SP', N'CTSP')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'TCDN', N'Tài Chính Doanh Nghiệp', N'KTE', N'CTTC')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'TCNH', N'Tài Chính Ngân Hàng', N'KTE', N'CTTC')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'TKDH', N'Thiết Kế Đồ Họa', N'KTR', N'CTTKDH')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'TKDPD', N'Thiết Kê Đa Phương Diện', N'KTR', N'CTTKDH')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'YK', N'Y Khoa', N'KYD', N'CTY')
INSERT [dbo].[NGANH] ([MaNganh], [TenNganh], [MaKhoa], [MaCT]) VALUES (N'YSH', N'Y Sĩ Học', N'KYD', N'CTY')
GO
SET IDENTITY_INSERT [dbo].[SINHVIEN] ON 

INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (1, N'2024802010433', N'Nguyễn Văn Đạt', N'KTPM', CAST(N'2001-06-06' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'datnguyen777@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (2, N'2024802010434', N'Lâm Chấn Thanh', N'CNTT', CAST(N'2000-06-06' AS Date), N'67345262435435', N'54645674563', N'0375493454', N'D18CNTT02', N'2018 - 2024', 1, N'Trần Quang Khải,TP HCM,t', N'BIDV chi nhánh Dĩ An', NULL, NULL, N'thanhlam@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (3, N'2024802010435', N'Nguyễn Văn A', NULL, CAST(N'2000-06-07' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nguyenvana@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (4, N'2024802010436', N'Nguyễn Văn B', NULL, CAST(N'2002-06-09' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nguyenvanb@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (5, N'2024802010437', N'Nguyễn Văn C', NULL, CAST(N'2001-06-10' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nguyenvanc@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (6, N'2024802010438', N'Nguyễn Văn D', NULL, CAST(N'1999-06-18' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vand@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (7, N'2024802010439', N'Nguyễn Văn E', NULL, CAST(N'2001-06-23' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vane@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (8, N'2024802010440', N'Lê Bá F', NULL, CAST(N'1998-06-17' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'baf@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (9, N'2024802010441', N'Trương Tuấn G', NULL, CAST(N'2002-06-19' AS Date), N'05468546742', N'54645674563', N'02954142143', NULL, NULL, NULL, N'Trần Quang Khải,TP HCM,t', N'BIDV chi nhánh Dĩ An', NULL, NULL, N'tuang@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (10, N'2024802010442', N'Nguyễn Văn T', N'YSH', CAST(N'2001-06-06' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'datnguyen777@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (11, N'2024802010443', N'Lâm Chấn Y', N'TKDH', CAST(N'2000-06-06' AS Date), N'67345262435435', N'54645674563', N'0375493454', N'D18CNTT02', N'2018 - 2024', 1, N'Trần Quang Khải,TP HCM,t', N'BIDV chi nhánh Dĩ An', NULL, NULL, N'thanhlam@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (12, N'2024802010444', N'Nguyễn Văn U', N'NNA', CAST(N'2000-06-07' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nguyenvana@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (13, N'2024802010445', N'Nguyễn Văn I', N'MT', CAST(N'2002-06-09' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nguyenvanb@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (14, N'2024802010446', N'Nguyễn Văn O', N'MKT', CAST(N'2001-06-10' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nguyenvanc@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (15, N'2024802010447', N'Nguyễn Văn P', N'QLKH', CAST(N'1999-06-18' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vand@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (16, N'2024802010448', N'Nguyễn Văn F', N'DDT', CAST(N'2001-06-23' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vane@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (17, N'2024802010449', N'Lê Bá G', N'TCDN', CAST(N'1998-06-17' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'baf@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (18, N'2024802010450', N'Trương Tuấn H', N'KTDDT', CAST(N'2002-06-19' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tuang@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (19, N'2024802010451', N'Trương Tuấn J', N'KTCTM', CAST(N'2002-06-19' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tuang@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (49, N' SV002', N' Tran Thi B', N' CNTT', CAST(N'2000-02-02' AS Date), N' 234567890', N' 2345678901', N' 0987654322', N' 17CTT1', N' 2017-2022', 0, N' 234 Nguyen Trai', N' Vietcombank', 2, 1, N' tranthib@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (50, N' SV003', N' Le Van C', N' CNTT', CAST(N'2000-03-03' AS Date), N' 345678901', N' 3456789012', N' 0987654323', N' 17CTT2', N' 2017-2022', 0, N' 345 Nguyen Trai', N' BIDV', 3, 1, N' levanc@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (51, N' SV004', N' Pham Thi D', N' CNTT', CAST(N'2000-04-04' AS Date), N' 456789012', N' 4567890123', N' 0987654324', N' 17CTT2', N' 2017-2022', 0, N' 456 Nguyen Trai', N' Techcombank', 4, 1, N' phamthid@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (52, N' SV005', N' Nguyen Van E', N' CNTT', CAST(N'2000-05-05' AS Date), N' 567890123', N' 5678901234', N' 0987654325', N' 17CTT3', N' 2017-2022', 0, N' 567 Nguyen Trai', N' Agribank', 5, 2, N' nguyenvane@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (53, N' SV006', N' Tran Thi F', N' CNTT', CAST(N'2000-06-06' AS Date), N' 678901234', N' 6789012345', N' 0987654326', N' 17CTT3', N' 2017-2022', 0, N' 678 Nguyen Trai', N' Vietcombank', 6, 2, N' tranthif@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (54, N' SV007', N' Le Van G', N' CNTT', CAST(N'2000-07-07' AS Date), N' 789012345', N' 7890123456', N' 0987654327', N' 17CTT4', N' 2017-2022', 0, N' 789 Nguyen Trai', N' BIDV', 7, 2, N' levang@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (55, N' SV008', N' Pham Thi H', N' CNTT', CAST(N'2000-08-08' AS Date), N' 890123456', N' 8901234567', N' 0987654328', N' 17CTT4', N' 2017-2022', 0, N' 890 Nguyen Trai', N' Techcombank', 8, 2, N' phamthih@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (56, N' SV009', N' Nguyen Van I', N' CNTT', CAST(N'2000-09-09' AS Date), N' 901234567', N' 9012345678', N' 0987654329', N' 17CTT5', N' 2017-2022', 0, N' 901 Nguyen Trai', N' Agribank', 9, 3, N' nguyenvani@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (57, N' SV010', N' Tran Thi J', N' CNTT', CAST(N'2000-10-10' AS Date), N' 012345678', N' 0123456789', N' 0987654330', N' 17CTT5', N' 2017-2022', 0, N' 012 Nguyen Trai', N' Techcombank', 10, 2, N' tranthij@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (58, N' SV002', N' Tran Thi B', N' CNTT', CAST(N'2000-02-02' AS Date), N' 234567890', N' 2345678901', N' 0987654322', N' 17CTT1', N' 2017-2022', 0, N' 234 Nguyen Trai', N' Vietcombank', 2, 1, N' tranthib@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (59, N' SV003', N' Le Van C', N' CNTT', CAST(N'2000-03-03' AS Date), N' 345678901', N' 3456789012', N' 0987654323', N' 17CTT2', N' 2017-2022', 0, N' 345 Nguyen Trai', N' BIDV', 3, 1, N' levanc@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (60, N' SV004', N' Pham Thi D', N' CNTT', CAST(N'2000-04-04' AS Date), N' 456789012', N' 4567890123', N' 0987654324', N' 17CTT2', N' 2017-2022', 0, N' 456 Nguyen Trai', N' Techcombank', 4, 1, N' phamthid@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (61, N' SV005', N' Nguyen Van E', N' CNTT', CAST(N'2000-05-05' AS Date), N' 567890123', N' 5678901234', N' 0987654325', N' 17CTT3', N' 2017-2022', 0, N' 567 Nguyen Trai', N' Agribank', 5, 2, N' nguyenvane@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (62, N' SV006', N' Tran Thi F', N' CNTT', CAST(N'2000-06-06' AS Date), N' 678901234', N' 6789012345', N' 0987654326', N' 17CTT3', N' 2017-2022', 0, N' 678 Nguyen Trai', N' Vietcombank', 6, 2, N' tranthif@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (63, N' SV007', N' Le Van G', N' CNTT', CAST(N'2000-07-07' AS Date), N' 789012345', N' 7890123456', N' 0987654327', N' 17CTT4', N' 2017-2022', 0, N' 789 Nguyen Trai', N' BIDV', 7, 2, N' levang@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (64, N' SV008', N' Pham Thi H', N' CNTT', CAST(N'2000-08-08' AS Date), N' 890123456', N' 8901234567', N' 0987654328', N' 17CTT4', N' 2017-2022', 0, N' 890 Nguyen Trai', N' Techcombank', 8, 2, N' phamthih@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (65, N' SV009', N' Nguyen Van I', N' CNTT', CAST(N'2000-09-09' AS Date), N' 901234567', N' 9012345678', N' 0987654329', N' 17CTT5', N' 2017-2022', 0, N' 901 Nguyen Trai', N' Agribank', 9, 3, N' nguyenvani@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (66, N' SV010', N' Tran Thi J', N' CNTT', CAST(N'2000-10-10' AS Date), N' 012345678', N' 0123456789', N' 0987654330', N' 17CTT5', N' 2017-2022', 0, N' 012 Nguyen Trai', N' Techcombank', 10, 2, N' tranthij@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (67, N' SV002', N' Tran Thi B', N' CNTT', CAST(N'2000-02-02' AS Date), N' 234567890', N' 2345678901', N' 0987654322', N' 17CTT1', N' 2017-2022', 0, N' 234 Nguyen Trai', N' Vietcombank', 2, 1, N' tranthib@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (68, N' SV003', N' Le Van C', N' CNTT', CAST(N'2000-03-03' AS Date), N' 345678901', N' 3456789012', N' 0987654323', N' 17CTT2', N' 2017-2022', 0, N' 345 Nguyen Trai', N' BIDV', 3, 1, N' levanc@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (69, N' SV004', N' Pham Thi D', N' CNTT', CAST(N'2000-04-04' AS Date), N' 456789012', N' 4567890123', N' 0987654324', N' 17CTT2', N' 2017-2022', 0, N' 456 Nguyen Trai', N' Techcombank', 4, 1, N' phamthid@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (70, N' SV005', N' Nguyen Van E', N' CNTT', CAST(N'2000-05-05' AS Date), N' 567890123', N' 5678901234', N' 0987654325', N' 17CTT3', N' 2017-2022', 0, N' 567 Nguyen Trai', N' Agribank', 5, 2, N' nguyenvane@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (71, N' SV006', N' Tran Thi F', N' CNTT', CAST(N'2000-06-06' AS Date), N' 678901234', N' 6789012345', N' 0987654326', N' 17CTT3', N' 2017-2022', 0, N' 678 Nguyen Trai', N' Vietcombank', 6, 2, N' tranthif@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (72, N' SV007', N' Le Van G', N' CNTT', CAST(N'2000-07-07' AS Date), N' 789012345', N' 7890123456', N' 0987654327', N' 17CTT4', N' 2017-2022', 0, N' 789 Nguyen Trai', N' BIDV', 7, 2, N' levang@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (73, N' SV008', N' Pham Thi H', N' CNTT', CAST(N'2000-08-08' AS Date), N' 890123456', N' 8901234567', N' 0987654328', N' 17CTT4', N' 2017-2022', 0, N' 890 Nguyen Trai', N' Techcombank', 8, 2, N' phamthih@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (74, N' SV009', N' Nguyen Van I', N' CNTT', CAST(N'2000-09-09' AS Date), N' 901234567', N' 9012345678', N' 0987654329', N' 17CTT5', N' 2017-2022', 0, N' 901 Nguyen Trai', N' Agribank', 9, 3, N' nguyenvani@gmail.com')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [MaSoSinhVien], [HoTen], [MaNganh], [NgaySinh], [CCCD], [TKNganHang], [SDT], [Lop], [NienKhoa], [GioiTinh], [DiaChi], [ChiNhanhNganHang], [MaAccount], [MaNhom], [Email]) VALUES (75, N' SV010', N' Tran Thi J', N' CNTT', CAST(N'2000-10-10' AS Date), N' 012345678', N' 0123456789', N' 0987654330', N' 17CTT5', N' 2017-2022', 0, N' 012 Nguyen Trai', N' Techcombank', 10, 2, N' tranthij@gmail.com')
SET IDENTITY_INSERT [dbo].[SINHVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[TYPEACCOUNT] ON 

INSERT [dbo].[TYPEACCOUNT] ([MaTypeAccount], [TenTypeAccount]) VALUES (1, N'Sinh Viên')
INSERT [dbo].[TYPEACCOUNT] ([MaTypeAccount], [TenTypeAccount]) VALUES (2, N'Gi?ng Viên')
INSERT [dbo].[TYPEACCOUNT] ([MaTypeAccount], [TenTypeAccount]) VALUES (3, N'Qu?n l? chuong tr?nh')
INSERT [dbo].[TYPEACCOUNT] ([MaTypeAccount], [TenTypeAccount]) VALUES (4, N'Qu?n l? vi?n')
INSERT [dbo].[TYPEACCOUNT] ([MaTypeAccount], [TenTypeAccount]) VALUES (5, N'Qu?n l? t?ng')
INSERT [dbo].[TYPEACCOUNT] ([MaTypeAccount], [TenTypeAccount]) VALUES (6, N'Admin')
SET IDENTITY_INSERT [dbo].[TYPEACCOUNT] OFF
GO
SET IDENTITY_INSERT [dbo].[THONGBAO] ON 

INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (2, N'Thông Báo Tuyển Sinh', N'Cũng Không Có gì nốt', CAST(N'2020-01-02' AS Date), 1)
INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (3, N'Thông Báo Tuyển Cộng Tác Viên Đa Cấp', N'Lương Nghìn ĐÔ', CAST(N'2002-02-13' AS Date), 1)
INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (4, N'Thông Báo Tuyển Cộng Tác Viên Đa Cấp 1', N'Lương Nghìn Chục ĐÔ', CAST(N'2002-02-15' AS Date), 1)
INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (5, N'Thông Báo Tuyển Cộng Tác Viên Đa Cấp 11', N'Lương Nghìn Chục ĐÔ', CAST(N'2002-02-15' AS Date), 1)
INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (6, N'Thông Báo 11', N'Không Có Gì Để Đọc', CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (7, N'Thông Báo Tuyển Sinh1', N'Cũng Không Có gì nốt', CAST(N'2020-01-02' AS Date), 1)
INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (8, N'Thông Báo Tuyển Cộng Tác Viên Đa Cấp1', N'Lương Nghìn ĐÔ', CAST(N'2002-02-13' AS Date), 1)
INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (9, N'Thông Báo Tuyển Cộng Tác Viên Đa Cấp 11', N'Lương Nghìn Chục ĐÔ', CAST(N'2002-02-15' AS Date), 1)
INSERT [dbo].[THONGBAO] ([Id], [TenThongBao], [NoiDungTb], [NgayGui], [NguoiNhan]) VALUES (10, N'Thông Báo Tuyển Cộng Tác Viên Đa Cấp 11', N'Lương Nghìn Chục ĐÔ', CAST(N'2002-02-15' AS Date), 1)
SET IDENTITY_INSERT [dbo].[THONGBAO] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBaoChamLai] ON 

INSERT [dbo].[ThongBaoChamLai] ([Id], [Thongbao], [MaHoiDong], [IdDangKy], [IsCheck], [DateModified]) VALUES (1, N'Thông Báo Chấm Lại', 2, 39, 1, CAST(N'2023-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongBaoChamLai] ([Id], [Thongbao], [MaHoiDong], [IdDangKy], [IsCheck], [DateModified]) VALUES (2, N'Thông Báo Chấm Lại', 1047, 40, 0, CAST(N'2023-03-18T16:38:36.777' AS DateTime))
INSERT [dbo].[ThongBaoChamLai] ([Id], [Thongbao], [MaHoiDong], [IdDangKy], [IsCheck], [DateModified]) VALUES (3, N'Thông Báo Chấm Lại', 2, 63, 1, CAST(N'2023-03-20T22:54:28.197' AS DateTime))
INSERT [dbo].[ThongBaoChamLai] ([Id], [Thongbao], [MaHoiDong], [IdDangKy], [IsCheck], [DateModified]) VALUES (4, N'Thông Báo Chấm Lại', 2, 63, 0, CAST(N'2023-03-20T23:52:08.063' AS DateTime))
INSERT [dbo].[ThongBaoChamLai] ([Id], [Thongbao], [MaHoiDong], [IdDangKy], [IsCheck], [DateModified]) VALUES (7, N'Thông Báo Chấm Lại', 2, 64, 0, CAST(N'2023-03-23T22:57:44.177' AS DateTime))
SET IDENTITY_INSERT [dbo].[ThongBaoChamLai] OFF
GO
SET IDENTITY_INSERT [dbo].[TRANGTHAI] ON 

INSERT [dbo].[TRANGTHAI] ([MaTrangThai], [TenTrangThai]) VALUES (1, N'Đang Chờ Duyệt')
INSERT [dbo].[TRANGTHAI] ([MaTrangThai], [TenTrangThai]) VALUES (2, N'Đã Duyệt')
INSERT [dbo].[TRANGTHAI] ([MaTrangThai], [TenTrangThai]) VALUES (3, N'Đang Thực Hiện')
INSERT [dbo].[TRANGTHAI] ([MaTrangThai], [TenTrangThai]) VALUES (4, N'Đang chờ nghiệm thu')
INSERT [dbo].[TRANGTHAI] ([MaTrangThai], [TenTrangThai]) VALUES (5, N'Hoàn thành')
INSERT [dbo].[TRANGTHAI] ([MaTrangThai], [TenTrangThai]) VALUES (6, N'Chưa Đạt Cần Bổ Sung')
SET IDENTITY_INSERT [dbo].[TRANGTHAI] OFF
GO
ALTER TABLE [dbo].[DANGKY] ADD  CONSTRAINT [DF__DANGKY__TrangTha__440B1D61]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NHOM] ADD  CONSTRAINT [DF__NHOM__TenNhom__46E78A0C]  DEFAULT (NULL) FOR [TenNhom]
GO
ALTER TABLE [dbo].[ACCOUNT]  WITH CHECK ADD FOREIGN KEY([MaTypeAccount])
REFERENCES [dbo].[TYPEACCOUNT] ([MaTypeAccount])
GO
ALTER TABLE [dbo].[BIENBANNGHIEMTHU]  WITH CHECK ADD  CONSTRAINT [FK__BIENBANNG__MaDeT__4BAC3F29] FOREIGN KEY([MaDeTai])
REFERENCES [dbo].[DETAI] ([MaDeTai])
GO
ALTER TABLE [dbo].[BIENBANNGHIEMTHU] CHECK CONSTRAINT [FK__BIENBANNG__MaDeT__4BAC3F29]
GO
ALTER TABLE [dbo].[BIENBANNGHIEMTHU]  WITH CHECK ADD  CONSTRAINT [FK__BIENBANNG__MaHoi__4CA06362] FOREIGN KEY([MaHoiDong])
REFERENCES [dbo].[HOIDONGNGHIEMTHU] ([MaHoiDong])
GO
ALTER TABLE [dbo].[BIENBANNGHIEMTHU] CHECK CONSTRAINT [FK__BIENBANNG__MaHoi__4CA06362]
GO
ALTER TABLE [dbo].[DETAI]  WITH CHECK ADD  CONSTRAINT [FK__DETAI__MaGiangVi__5EBF139D] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GIANGVIEN] ([MaGiangVien])
GO
ALTER TABLE [dbo].[DETAI] CHECK CONSTRAINT [FK__DETAI__MaGiangVi__5EBF139D]
GO
ALTER TABLE [dbo].[DETAI]  WITH CHECK ADD  CONSTRAINT [FK__DETAI__MaHoiDong__4E88ABD4] FOREIGN KEY([MaHoiDong])
REFERENCES [dbo].[HOIDONGNGHIEMTHU] ([MaHoiDong])
GO
ALTER TABLE [dbo].[DETAI] CHECK CONSTRAINT [FK__DETAI__MaHoiDong__4E88ABD4]
GO
ALTER TABLE [dbo].[DETAI]  WITH CHECK ADD  CONSTRAINT [FK__DETAI__MaNganh__4F7CD00D] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[NGANH] ([MaNganh])
GO
ALTER TABLE [dbo].[DETAI] CHECK CONSTRAINT [FK__DETAI__MaNganh__4F7CD00D]
GO
ALTER TABLE [dbo].[DETAI]  WITH CHECK ADD  CONSTRAINT [FK__DETAI__MaTrangTh__5070F446] FOREIGN KEY([MaTrangThai])
REFERENCES [dbo].[TRANGTHAI] ([MaTrangThai])
GO
ALTER TABLE [dbo].[DETAI] CHECK CONSTRAINT [FK__DETAI__MaTrangTh__5070F446]
GO
ALTER TABLE [dbo].[DONXINGIAHAN]  WITH CHECK ADD FOREIGN KEY([MaCTDXGH])
REFERENCES [dbo].[CHITIETDONXINGIAHAN] ([MaCTDXGH])
GO
ALTER TABLE [dbo].[DONXINGIAHAN]  WITH CHECK ADD  CONSTRAINT [FK__DONXINGIA__MaDeT__52593CB8] FOREIGN KEY([MaDeTai])
REFERENCES [dbo].[DETAI] ([MaDeTai])
GO
ALTER TABLE [dbo].[DONXINGIAHAN] CHECK CONSTRAINT [FK__DONXINGIA__MaDeT__52593CB8]
GO
ALTER TABLE [dbo].[DONXINGIAHAN]  WITH CHECK ADD  CONSTRAINT [FK__DONXINGIA__MaGia__6477ECF3] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GIANGVIEN] ([MaGiangVien])
GO
ALTER TABLE [dbo].[DONXINGIAHAN] CHECK CONSTRAINT [FK__DONXINGIA__MaGia__6477ECF3]
GO
ALTER TABLE [dbo].[HOIDONGNGHIEMTHU]  WITH CHECK ADD  CONSTRAINT [FK__HOIDONGNG__MaKho__5629CD9C] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[HOIDONGNGHIEMTHU] CHECK CONSTRAINT [FK__HOIDONGNG__MaKho__5629CD9C]
GO
ALTER TABLE [dbo].[NGANH]  WITH CHECK ADD  CONSTRAINT [FK__NGANH__MaKhoa__59063A47] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[NGANH] CHECK CONSTRAINT [FK__NGANH__MaKhoa__59063A47]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK__SINHVIEN__MaAcco__571DF1D5] FOREIGN KEY([MaAccount])
REFERENCES [dbo].[ACCOUNT] ([MaAccount])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK__SINHVIEN__MaAcco__571DF1D5]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddThongBaoChamLai]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create      PROCEDURE [dbo].[sp_AddThongBaoChamLai]
@thongbao ntext,
@idhoidong int,
@iddangky int,
@check bit,
@date datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO ThongBaoChamLai(Thongbao,MaHoiDong,IdDangKy,IsCheck,DateModified) Values(@thongbao,@idhoidong,@iddangky,@check,@date )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDETAIDADANGKY]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_LAYDETAIDADANGKY]
@mssv varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SELECT dk.IDDangKy,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
			gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.TrangThai,tt.TenTrangThai
	FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
	ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDETAITHEOID]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_LAYDETAITHEOID]
@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SELECT dk.IDDangKy,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
			gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.TrangThai,tt.TenTrangThai
	FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.TrangThai = tt.MaTrangThai JOIN dbo.NHOM n 
	ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	WHERE dk.IDDangKy =@id
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSCHAMDETAITHEOMAGIANGVIEN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[sp_LAYDSCHAMDETAITHEOMAGIANGVIEN]
@magiangvien nvarchar(10),
@mact nvarchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM  dbo.CHITIETHOIDONGNGHIEMTHU hd JOIN dbo.DETAI dk   
	on (hd.MaHoiDong=dk.MaHoiDong) join GIANGVIEN gv
	on (hd.MaGiangVien = gv.MaGiangVien) join TRANGTHAI tt
	on (dk.MaTrangThai = tt.MaTrangThai) join HOIDONGNGHIEMTHU h
	on( hd.MaHoiDong = h.MaHoiDong) join SINHVIEN sv
	on (sv.MaSoSinhVien = dk.MaSoSinhVien)
	where gv.MaGiangVien = 1 and gv.MaCT = 'ctcntt'
	order by dk.MaDeTai desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSCHAMDETAITHEOMAGIANGVIENLOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDSCHAMDETAITHEOMAGIANGVIENLOC]
@magiangvien nvarchar(10),
@mact nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM  dbo.CHITIETHOIDONGNGHIEMTHU hd JOIN dbo.DETAI dk   
	on (hd.MaHoiDong=dk.MaHoiDong) join GIANGVIEN gv
	on (hd.MaGiangVien = gv.MaGiangVien) join TRANGTHAI tt
	on (dk.MaTrangThai = tt.MaTrangThai) join HOIDONGNGHIEMTHU h
	on( hd.MaHoiDong = h.MaHoiDong) join SINHVIEN sv
	on (sv.MaSoSinhVien = dk.MaSoSinhVien)
	where gv.MaGiangVien = @magiangvien and gv.MaCT = @mact and @ngaybd <= NgayThucHien and @ngaykt >=NgayThucHien
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSDECUONGTHEOVIEN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_LAYDSDECUONGTHEOVIEN]
@makhoa nvarchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	where gv.MaKhoa = @makhoa
	order by NgayDangKy desc 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSDECUONGTHEOVIENLOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDSDECUONGTHEOVIENLOC]
@makhoa nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	where gv.MaKhoa = @makhoa and dk.NgayDangKy >= @ngaybd and dk.NgayDangKy <= @ngaykt
	order by NgayDangKy desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSDETAIDADUYET]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDSDETAIDADUYET]
@mssv varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT dk.MaDeTai,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
			gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.MaTrangThai,tt.TenTrangThai
	FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
	ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGNGHIEMTHU hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	WHERE DK.MaSoSinhVien = @mssv
	ORDER BY dk.MaDeTai Desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSDETAITHEOMAGIANGVIEN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_LAYDSDETAITHEOMAGIANGVIEN]
@magiangvien nvarchar(10),
@makhoa nvarchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM  dbo.CHITIETHOIDONGDECUONG hd JOIN dbo.DETAI dk   
	on (hd.MaHoiDong=dk.MaHoiDong) join GIANGVIEN gv
	on (hd.MaGiangVien = gv.MaGiangVien) join TRANGTHAI tt
	on (dk.MaTrangThai = tt.MaTrangThai) join HOIDONGDUYETDECUONG h
	on( hd.MaHoiDong = h.MaHoiDong) join SINHVIEN sv
	on (sv.MaSoSinhVien = dk.MaSoSinhVien)
	where gv.MaGiangVien = @magiangvien and gv.MaKhoa = @makhoa 
	order by NgayThucHien desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSDETAITHEOMAGIANGVIENLOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_LAYDSDETAITHEOMAGIANGVIENLOC]
@magiangvien nvarchar(10),
@makhoa nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM  dbo.CHITIETHOIDONGDECUONG hd JOIN dbo.DETAI dk   
	on (hd.MaHoiDong=dk.MaHoiDong) join GIANGVIEN gv
	on (hd.MaGiangVien = gv.MaGiangVien) join TRANGTHAI tt
	on (dk.MaTrangThai = tt.MaTrangThai) join HOIDONGDUYETDECUONG h
	on( hd.MaHoiDong = h.MaHoiDong) join SINHVIEN sv
	on (sv.MaSoSinhVien = dk.MaSoSinhVien)
	where gv.MaGiangVien = @magiangvien and gv.MaKhoa = @makhoa and @ngaybd <= NgayThucHien and @ngaykt >=NgayThucHien
	order by NgayThucHien desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSDETAITHEOVIEN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDSDETAITHEOVIEN]
@makhoa nvarchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	where gv.MaKhoa = @makhoa  
	order by NgayThucHien desc  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSDETAITHEOVIENLOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_LAYDSDETAITHEOVIENLOC]
@makhoa nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	where gv.MaKhoa = @makhoa  and dk.NgayThucHien >= @ngaybd and dk.NgayThucHien <= @ngaykt
	order by NgayThucHien desc 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSTBChamLai]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[sp_LAYDSTBChamLai]
@magiangvien int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SELECT *
	from ThongBaoChamLai tb join DANGKY dk 
		on tb.IDDANGKY = dk.IDDANGKy join hoidongduyetdecuong hd 
		on dk.maHoidong =hd.mahoidong join CHITIETHOIDONGDECUONG cthd 
		on hd.MaHoiDong =cthd.MaHoiDong 
	where cthd.MaGiangVien=@magiangvien	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAI]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE      PROCEDURE [dbo].[sp_LAYDUYETDETAI]
@mssv varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT dk.IDDangKy,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
			gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.TrangThai,tt.TenTrangThai
	FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
	ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	WHERE  DK.MaSoSinhVien = @mssv and dk.KetQua = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAINTTHEOMACTDEFAULT]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE      PROCEDURE [dbo].[sp_LAYDUYETDETAINTTHEOMACTDEFAULT]
@mact nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
		SELECT dk.MaDeTai,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
				gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.MaTrangThai,tt.TenTrangThai
		FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
		ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
		ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
		ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGNGHIEMTHU hddc 
		ON hddc.MaHoiDong = dk.MaHoiDong
		WHERE gv.MaCT =  @mact
		order by NgayThucHien desc
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAINTTHEOMAKHOADEFAULT]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[sp_LAYDUYETDETAINTTHEOMAKHOADEFAULT]
@makhoa nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
		SELECT dk.MaDeTai,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
				gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.MaTrangThai,tt.TenTrangThai
		FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
		ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
		ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
		ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGNGHIEMTHU hddc 
		ON hddc.MaHoiDong = dk.MaHoiDong
		WHERE gv.MaKhoa =  @makhoa
		order by NgayThucHien desc
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAINTTHEOMAKHOALOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDUYETDETAINTTHEOMAKHOALOC]
@makhoa nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
		SELECT dk.MaDeTai,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
				gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.MaTrangThai,tt.TenTrangThai
		FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
		ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
		ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
		ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGDUYETDECUONG hddc 
		ON hddc.MaHoiDong = dk.MaHoiDong
		WHERE dk.MaHoiDong = 1 and gv.MaKhoa = @makhoa  and @ngaybd <= NgayThucHien and @ngaykt >=NgayThucHien
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAITHEOMACTDEFAULT]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE      PROCEDURE [dbo].[sp_LAYDUYETDETAITHEOMACTDEFAULT]
@mact nvarchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
		SELECT dk.IDDangKy,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
				gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.TrangThai,tt.TenTrangThai
		FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
		ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
		ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
		ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGDUYETDECUONG hddc 
		ON hddc.MaHoiDong = dk.MaHoiDong
		WHERE gv.MaCT = @mact
		order by NgayDangKy desc
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAITHEOMACTLOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[sp_LAYDUYETDETAITHEOMACTLOC]
@mact nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
		SELECT dk.MaDeTai,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
				gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.MaTrangThai,tt.TenTrangThai
		FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
		ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
		ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
		ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGNGHIEMTHU hddc 
		ON hddc.MaHoiDong = dk.MaHoiDong
		WHERE gv.MaCT = @mact  and @ngaybd <= NgayThucHien and @ngaykt >=NgayThucHien
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAITHEOMAGIANGVIEN]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDUYETDETAITHEOMAGIANGVIEN]
@magiangvien nvarchar(10),
@mact nvarchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM  dbo.CHITIETHOIDONGDECUONG hd JOIN dbo.DANGKY dk   
	on (hd.MaHoiDong=dk.MaHoiDong) join GIANGVIEN gv
	on (hd.MaGiangVien = gv.MaGiangVien) join TRANGTHAI tt
	on (dk.TrangThai = tt.MaTrangThai) join HOIDONGDUYETDECUONG h
	on( hd.MaHoiDong = h.MaHoiDong) join SINHVIEN sv
	on (sv.MaSoSinhVien = dk.MaSoSinhVien)
	where gv.MaGiangVien = @magiangvien and gv.MaCT = @mact
	order by dk.IDDangKy desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAITHEOMAGIANGVIENLOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDUYETDETAITHEOMAGIANGVIENLOC]
@magiangvien nvarchar(10),
@mact nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM  dbo.CHITIETHOIDONGDECUONG hd JOIN dbo.DANGKY dk   
	on (hd.MaHoiDong=dk.MaHoiDong) join GIANGVIEN gv
	on (hd.MaGiangVien = gv.MaGiangVien) join TRANGTHAI tt
	on (dk.TrangThai = tt.MaTrangThai) join HOIDONGDUYETDECUONG h
	on( hd.MaHoiDong = h.MaHoiDong) join SINHVIEN sv
	on (sv.MaSoSinhVien = dk.MaSoSinhVien)
	where gv.MaGiangVien = @magiangvien and gv.MaKhoa = @mact and @ngaybd <= NgayDangKy and @ngaykt >=NgayDangKy
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAITHEOMAKHOA]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDUYETDETAITHEOMAKHOA]
@makhoa nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
		SELECT dk.IDDangKy,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
				gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.TrangThai,tt.TenTrangThai
		FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
		ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
		ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
		ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGDUYETDECUONG hddc 
		ON hddc.MaHoiDong = dk.MaHoiDong
		WHERE DK.TrangThai = 1	and dk.MaHoiDong = 1 and gv.MaKhoa = @makhoa  and @ngaybd <= NgayDangKy and @ngaykt >=NgayDangKy
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAITHEOMAKHOADEFAULT]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[sp_LAYDUYETDETAITHEOMAKHOADEFAULT]
@makhoa nvarchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
		SELECT dk.IDDangKy,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
				gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.TrangThai,tt.TenTrangThai
		FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
		ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
		ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
		ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGDUYETDECUONG hddc 
		ON hddc.MaHoiDong = dk.MaHoiDong
		WHERE gv.MaKhoa = @makhoa
		order by NgayDangKy desc
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDUYETDETAITHEOMAKHOALOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_LAYDUYETDETAITHEOMAKHOALOC]
@makhoa nvarchar(10),
@ngaybd date,
@ngaykt date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
		SELECT dk.IDDangKy,dk.TenDeTai,dk.MaNhom,n.TenNhom,dk.MaSoSinhVien,gv.MaSoGiangVien,
				gv.TenGiangVien,dk.GhiChu ,dk.MaHoiDong,hddc.TenHoiDong,dk.TrangThai,tt.TenTrangThai
		FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
		ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
		ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.NHOM n 
		ON n.MaNhom = dk.MaNhom LEFT JOIN dbo.HOIDONGDUYETDECUONG hddc 
		ON hddc.MaHoiDong = dk.MaHoiDong
		WHERE DK.TrangThai = 1	and dk.MaHoiDong = 1 and gv.MaKhoa = @makhoa  and @ngaybd <= NgayDangKy and @ngaykt >=NgayDangKy
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYSOLUONGHOIDONG]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE    PROCEDURE [dbo].[sp_LAYSOLUONGHOIDONG]
@MaKhoa nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT COUNT(*)
	FROM HOIDONGDUYETDECUONG hd
	where hd.MaKhoa = @MaKhoa
END

GO
/****** Object:  StoredProcedure [dbo].[sp_LAYSOLUONGHOIDONGNT]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[sp_LAYSOLUONGHOIDONGNT]
@MaKhoa nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT COUNT(*)
	FROM HOIDONGNGHIEMTHU hd
	where hd.MaKhoa = @MaKhoa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYTONGDANHSACHDECUONG]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_LAYTONGDANHSACHDECUONG]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	order by NgayDangKy desc 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYTONGDANHSACHDECUONGLOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[sp_LAYTONGDANHSACHDECUONGLOC]
@ngaybd date,
@ngaykt date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.DANGKY dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.TrangThai = tt.MaTrangThai left JOIN dbo.HOIDONGDUYETDECUONG hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	where dk.NgayDangKy >= @ngaybd and dk.NgayDangKy <= @ngaykt
	order by NgayDangKy desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYTONGDANHSACHDETAI]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYDSDETAITHEOMAGIANGVIEN]    Script Date: 1/30/2023 2:06:46 PM ******/

CREATE   PROCEDURE [dbo].[sp_LAYTONGDANHSACHDETAI]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.HOIDONGNGHIEMTHU hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	order by NgayThucHien desc 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LAYTONGDANHSACHDETAILOC]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[sp_LAYTONGDANHSACHDETAILOC]
@ngaybd date,
@ngaykt date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.DETAI dk JOIN dbo.GIANGVIEN gv 
	ON gv.MaGiangVien = dk.MaGiangVien JOIN dbo.TRANGTHAI tt 
	ON dk.MaTrangThai = tt.MaTrangThai left JOIN dbo.HOIDONGNGHIEMTHU hddc 
	ON hddc.MaHoiDong = dk.MaHoiDong
	where dk.NgayThucHien >= @ngaybd and dk.NgayThucHien <= @ngaykt
	order by NgayThucHien desc
END
GO
/****** Object:  Trigger [dbo].[SuaTV]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[SuaTV]
   ON  [dbo].[CHITIETHOIDONGDECUONG]
   for update ,insert, delete
AS 
BEGIN
    set nocount on
  UPDATE HOIDONGDUYETDECUONG SET SoLuongTV = 'True'
 FROM INSERTED I, HOIDONGDUYETDECUONG L
 WHERE I.MaHoiDong = L.MaHoiDong

  UPDATE HOIDONGDUYETDECUONG SET SoLuongTV ='False'
 FROM deleted A, HOIDONGDUYETDECUONG L
 WHERE A.MaHoiDong = L.MaHoiDong

END
GO
ALTER TABLE [dbo].[CHITIETHOIDONGDECUONG] ENABLE TRIGGER [SuaTV]
GO
/****** Object:  Trigger [dbo].[SuaTVNT]    Script Date: 3/23/2023 11:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[SuaTVNT]
   ON  [dbo].[CHITIETHOIDONGNGHIEMTHU]
   for update ,insert, delete
AS 
BEGIN
    set nocount on
  UPDATE HOIDONGNGHIEMTHU SET SoLuongTV = 'True'
 FROM INSERTED I, HOIDONGNGHIEMTHU L
 WHERE I.MaHoiDong = L.MaHoiDong

  UPDATE HOIDONGNGHIEMTHU SET SoLuongTV ='False'
 FROM deleted A, HOIDONGNGHIEMTHU L
 WHERE A.MaHoiDong = L.MaHoiDong

END
GO
ALTER TABLE [dbo].[CHITIETHOIDONGNGHIEMTHU] ENABLE TRIGGER [SuaTVNT]
GO
USE [master]
GO
ALTER DATABASE [QLDETAINCKH] SET  READ_WRITE 
GO
