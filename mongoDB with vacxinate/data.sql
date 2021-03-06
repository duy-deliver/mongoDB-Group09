USE [HeThongTiemChung]
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[MaCLV] [varchar](10) NOT NULL,
	[Ca] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCLV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietCLV]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietCLV](
	[MaCLV] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgayLam] [date] NOT NULL,
	[NgayKT] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDKTiem]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDKTiem](
	[MaHD] [varchar](10) NOT NULL,
	[MaVX] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaVX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGoiTiem]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGoiTiem](
	[MaGT] [varchar](10) NOT NULL,
	[MaVX] [varchar](10) NOT NULL,
	[ThoiGian] [date] NULL,
	[SoLieu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGT] ASC,
	[MaVX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPN]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPN](
	[MaPN] [varchar](10) NOT NULL,
	[MaVX] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaVX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKyTiem]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyTiem](
	[MaHD] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[TongTien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoiTiem]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoiTiem](
	[MaGT] [varchar](10) NOT NULL,
	[TenGT] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[NgaySinh] [date] NOT NULL,
	[MaTN] [varchar](10) NOT NULL,
	[SDT] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiVacXin]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiVacXin](
	[MaLoai] [varchar](10) NOT NULL,
	[TenLoai] [nvarchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](10) NOT NULL,
	[TenNCC] [nvarchar](max) NOT NULL,
	[NuocSX] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenHienThi] [nvarchar](max) NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[Quyen] [nvarchar](20) NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [varchar](10) NOT NULL,
	[MaNCC] [varchar](10) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[MaTN] [varchar](10) NOT NULL,
	[TenTN] [nvarchar](max) NOT NULL,
	[MoiQuanHe] [nvarchar](50) NULL,
	[SDT] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacXin]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacXin](
	[MaVX] [varchar](10) NOT NULL,
	[TenVX] [nvarchar](max) NOT NULL,
	[PhongBenh] [nvarchar](max) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaLoai] [varchar](10) NULL,
	[NuocSX] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CaLamViec] ([MaCLV], [Ca]) VALUES (N'CLV01', N'Sáng (7h00 - 11h00)')
INSERT [dbo].[CaLamViec] ([MaCLV], [Ca]) VALUES (N'CLV02', N'Chiều (11h00 - 17h00)')
INSERT [dbo].[CaLamViec] ([MaCLV], [Ca]) VALUES (N'CLV03', N'Tối (17h00 - 23h00)')
GO
INSERT [dbo].[ChiTietCLV] ([MaCLV], [MaNV], [NgayLam], [NgayKT]) VALUES (N'CLV01', N'NV003', CAST(N'2021-12-09' AS Date), CAST(N'2021-12-16' AS Date))
INSERT [dbo].[ChiTietCLV] ([MaCLV], [MaNV], [NgayLam], [NgayKT]) VALUES (N'CLV02', N'NV005', CAST(N'2021-12-28' AS Date), CAST(N'2021-12-28' AS Date))
INSERT [dbo].[ChiTietCLV] ([MaCLV], [MaNV], [NgayLam], [NgayKT]) VALUES (N'CLV03', N'NV004', CAST(N'2021-12-11' AS Date), CAST(N'2021-12-18' AS Date))
GO
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD001', N'VX002', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD002', N'VX001', 3, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD003', N'VX001', 7, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD004', N'VX002', 8, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD005', N'VX002', 2, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD006', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD007', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD008', N'VX004', 1, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD009', N'VX003', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD009', N'VX005', 1, 340000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD010', N'VX003', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD010', N'VX005', 2, 340000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD011', N'VX003', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD011', N'VX005', 2, 340000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD012', N'VX005', 2, 340000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD013', N'VX007', 10, 340000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD014', N'VX006', 3, 160000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD015', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD015', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD016', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD017', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD018', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD019', N'VX002', 2, 320000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD020', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD021', N'VX002', 2, 320000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD022', N'VX002', 2, 320000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD023', N'VX002', 2, 320000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD024', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD025', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD026', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD027', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD028', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD029', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD030', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD031', N'VX002', 2, 320000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD032', N'VX002', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD033', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD034', N'VX005', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD035', N'VX005', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD036', N'VX006', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD037', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD038', N'VX006', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD039', N'VX005', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD040', N'VX003', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD041', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD042', N'VX007', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD043', N'VX003', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD044', N'VX005', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD045', N'VX002', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD045', N'VX003', 3, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD046', N'VX002', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD046', N'VX003', 3, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD047', N'VX003', 5, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD048', N'VX002', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD048', N'VX004', 2, 170000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD049', N'VX004', 2, 170000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD049', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD049', N'VX008', 6, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD050', N'VX004', 2, 170000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD050', N'VX005', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD050', N'VX006', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD050', N'VX008', 4, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD051', N'VX001', 1, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD051', N'VX004', 3, 170000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD051', N'VX006', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD051', N'VX008', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD052', N'VX004', 1, 170000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD052', N'VX006', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD052', N'VX007', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD052', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD052', N'VX009', 2, 160000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD053', N'VX004', 5, 170000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD053', N'VX005', 3, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD053', N'VX007', 1, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD053', N'VX008', 1, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD053', N'VX010', 2, 210000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD054', N'VX001', 2, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD055', N'VX001', 2, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD055', N'VX002', 2, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD056', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD056', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD056', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD056', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD057', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD057', N'VX010', 1, 210000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD058', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD058', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD058', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD058', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD059', N'VX001', 3, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD059', N'VX002', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD059', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD059', N'VX006', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD060', N'VX001', 5, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD061', N'VX011', 2, 210000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD062', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD062', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD062', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD062', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD062', N'VX016', 2, 150000)
GO
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD063', N'VX009', 2, 160000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD064', N'VX002', 1, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD064', N'VX021', 1, 399000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD065', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD065', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD065', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD065', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD066', N'VX001', 3, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD066', N'VX002', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD066', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD067', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD068', N'VX013', 2, 160000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD069', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD069', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD069', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD069', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD070', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD070', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD070', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD070', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD070', N'VX016', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD071', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD071', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD071', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD071', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD071', N'VX016', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD072', N'VX018', 1, 210000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD072', N'VX023', 3, 170000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD073', N'VX018', 1, 210000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD073', N'VX023', 2, 170000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD074', N'VX009', 3, 160000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD074', N'VX013', 2, 160000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD075', N'VX005', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD076', N'VX005', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD076', N'VX016', 1, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD077', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD077', N'VX005', 3, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD077', N'VX007', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD078', N'VX002', 1, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD078', N'VX004', 2, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD079', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD079', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD079', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD079', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD079', N'VX016', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD080', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD080', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD080', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD080', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD080', N'VX016', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD081', N'VX001', 3, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD081', N'VX002', 2, 400000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD081', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD081', N'VX006', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD082', N'VX004', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD082', N'VX005', 1, 200000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD082', N'VX007', 3, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD082', N'VX008', 2, 150000)
INSERT [dbo].[ChiTietDKTiem] ([MaHD], [MaVX], [SoLuong], [DonGia]) VALUES (N'HD082', N'VX016', 2, 150000)
GO
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT001', N'VX001', CAST(N'2021-03-01' AS Date), 3)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT001', N'VX002', CAST(N'2021-03-01' AS Date), 2)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT001', N'VX005', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT001', N'VX006', CAST(N'2021-03-01' AS Date), 1)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT002', N'VX004', CAST(N'2021-06-04' AS Date), 1)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT002', N'VX005', CAST(N'2021-06-04' AS Date), 1)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT002', N'VX007', CAST(N'2021-06-04' AS Date), 3)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT002', N'VX008', CAST(N'2021-06-04' AS Date), 2)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT002', N'VX016', CAST(N'2021-06-04' AS Date), 2)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT003', N'VX004', CAST(N'2021-06-11' AS Date), 1)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT003', N'VX005', CAST(N'2021-06-11' AS Date), 3)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT003', N'VX007', CAST(N'2021-06-11' AS Date), 2)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT004', N'VX002', CAST(N'2021-06-04' AS Date), 1)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT004', N'VX004', CAST(N'2021-06-04' AS Date), 2)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT005', N'VX002', CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[ChiTietGoiTiem] ([MaGT], [MaVX], [ThoiGian], [SoLieu]) VALUES (N'GT005', N'VX008', CAST(N'2022-01-04' AS Date), 2)
GO
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN001     ', N'VX001', 200, 350000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN001     ', N'VX002', 200, 360000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN001     ', N'VX003', 200, 110000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN002     ', N'VX004', 200, 170000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN003     ', N'VX005', 200, 160000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN004     ', N'VX006', 200, 150000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN005', N'VX006', 10, 180000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN006', N'VX007', 100, 130000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN007', N'VX007', 100, 130000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN008', N'VX007', 20, 135000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN009', N'VX008', 100, 120000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN010', N'VX009', 100, 130000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN010', N'VX010', 100, 180000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN011', N'VX011', 202, 130000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN011', N'VX012', 85, 125000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN011', N'VX013', 98, 150000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN011', N'VX014', 98, 180000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN011', N'VX015', 202, 130000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN011', N'VX016', 85, 150000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN011', N'VX017', 98, 130000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN012', N'VX018', 98, 190000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN012', N'VX019', 202, 130000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN012', N'VX020', 85, 120000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN012', N'VX021', 98, 140000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN012', N'VX022', 98, 180000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN013', N'VX023', 5, 140000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaVX], [SoLuong], [DonGia]) VALUES (N'PN014', N'VX023', 5, 140000)
GO
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD001', N'KH001', CAST(N'2021-11-20' AS Date), N'NV002', 800000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD002', N'KH002     ', CAST(N'2021-11-21' AS Date), N'NV003', 1200000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD003', N'KH003     ', CAST(N'2021-11-21' AS Date), N'NV003', 2800000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD004', N'KH004     ', CAST(N'2021-11-22' AS Date), N'NV003', 3200000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD005', N'KH004     ', CAST(N'2021-11-23' AS Date), N'NV004', 800000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD006', N'KH001', CAST(N'2021-12-04' AS Date), N'NV003', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD007', N'KH001', CAST(N'2021-12-04' AS Date), N'NV003', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD008', N'KH001', CAST(N'2021-12-06' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD009', N'KH001', CAST(N'2021-12-06' AS Date), N'NV001', 540000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD010', N'KH001', CAST(N'2021-12-06' AS Date), N'NV001', 1080000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD011', N'KH004', CAST(N'2021-12-06' AS Date), N'NV001', 880000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD012', N'KH004', CAST(N'2021-12-06' AS Date), N'NV001', 680000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD013', N'KH004', CAST(N'2021-12-06' AS Date), N'NV001', 3400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD014', N'KH003', CAST(N'2021-12-08' AS Date), N'NV001', 480000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD015', N'KH001', CAST(N'2021-12-11' AS Date), N'NV001', 700000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD016', N'KH001', CAST(N'2021-12-11' AS Date), N'NV001', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD017', N'KH001', CAST(N'2021-12-11' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD018', N'KH004', CAST(N'2021-12-11' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD019', N'KH003', CAST(N'2021-12-11' AS Date), N'NV001', 640000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD020', N'KH002', CAST(N'2021-12-11' AS Date), N'NV001', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD021', N'KH001', CAST(N'2021-12-11' AS Date), N'NV001', 640000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD022', N'KH003', CAST(N'2021-12-11' AS Date), N'NV001', 640000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD023', N'KH004', CAST(N'2021-12-11' AS Date), N'NV001', 640000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD024', N'KH001', CAST(N'2021-12-11' AS Date), N'NV001', 200000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD025', N'KH002', CAST(N'2021-12-11' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD026', N'KH001', CAST(N'2021-12-11' AS Date), N'NV001', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD027', N'KH001', CAST(N'2021-12-11' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD028', N'KH002', CAST(N'2021-12-11' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD029', N'KH001', CAST(N'2021-12-12' AS Date), N'NV003', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD030', N'KH002', CAST(N'2021-12-12' AS Date), N'NV003', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD031', N'KH002', CAST(N'2021-12-12' AS Date), N'NV003', 640000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD032', N'KH001', CAST(N'2021-12-13' AS Date), N'NV004', 800000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD033', N'KH001', CAST(N'2021-12-14' AS Date), N'NV001', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD034', N'KH001', CAST(N'2021-12-14' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD035', N'KH002', CAST(N'2021-12-14' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD036', N'KH002', CAST(N'2021-12-14' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD037', N'KH004', CAST(N'2021-12-14' AS Date), N'NV003', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD038', N'KH004', CAST(N'2021-12-14' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD039', N'KH002', CAST(N'2021-12-14' AS Date), N'NV001', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD040', N'KH004', CAST(N'2021-12-14' AS Date), N'NV001', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD041', N'KH003', CAST(N'2021-12-14' AS Date), N'NV001', 450000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD042', N'KH003', CAST(N'2021-12-14' AS Date), N'NV003', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD043', N'KH002', CAST(N'2021-12-16' AS Date), N'NV003', 800000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD044', N'KH001', CAST(N'2021-12-16' AS Date), N'NV003', 800000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD045', N'KH005', CAST(N'2021-12-16' AS Date), N'NV003', 2000000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD046', N'KH005', CAST(N'2021-12-16' AS Date), N'NV003', 2000000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD047', N'KH005', CAST(N'2021-12-16' AS Date), N'NV005', 2000000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD048', N'KH008', CAST(N'2021-12-17' AS Date), N'NV004', 1140000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD049', N'KH006', CAST(N'2021-12-17' AS Date), N'NV003', 1440000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD050', N'KH010', CAST(N'2021-12-18' AS Date), N'NV003', 2340000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD051', N'KH008', CAST(N'2021-12-18' AS Date), N'NV003', 1510000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD052', N'KH010', CAST(N'2021-12-19' AS Date), N'NV003', 1290000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD053', N'KH010', CAST(N'2021-12-19' AS Date), N'NV003', 2170000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD054', N'KH009', CAST(N'2021-12-31' AS Date), N'NV002', 1995000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD055', N'KH009', CAST(N'2021-12-31' AS Date), N'NV002', 1596000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD056', N'KH009', CAST(N'2022-01-01' AS Date), N'NV002', 1150000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD057', N'KH009', CAST(N'2022-01-01' AS Date), N'NV002', 510000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD058', N'KH007', CAST(N'2022-01-01' AS Date), N'NV002', 2400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD059', N'KH002', CAST(N'2022-01-01' AS Date), N'NV002', 2400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD060', N'KH001', CAST(N'2022-01-01' AS Date), N'NV002', 1995000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD061', N'KH003', CAST(N'2022-01-01' AS Date), N'NV002', 420000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD062', N'KH004', CAST(N'2022-01-01' AS Date), N'NV002', 1450000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD063', N'KH005', CAST(N'2022-01-01' AS Date), N'NV002', 320000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD064', N'KH006', CAST(N'2022-01-01' AS Date), N'NV002', 798000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD065', N'KH006', CAST(N'2022-01-01' AS Date), N'NV002', 1450000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD066', N'KH005', CAST(N'2022-01-01' AS Date), N'NV002', 2200000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD067', N'KH005', CAST(N'2022-01-02' AS Date), N'NV002', 300000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD068', N'KH007', CAST(N'2022-01-02' AS Date), N'NV002', 320000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD069', N'KH004', CAST(N'2022-01-02' AS Date), N'NV002', 1150000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD070', N'KH008', CAST(N'2022-01-02' AS Date), N'NV002', 1450000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD071', N'KH007', CAST(N'2022-01-03' AS Date), N'NV002', 1450000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD072', N'KH003', CAST(N'2022-01-03' AS Date), N'NV002', 720000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD073', N'KH009', CAST(N'2022-01-03' AS Date), N'NV002', 550000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD074', N'KH003', CAST(N'2022-01-03' AS Date), N'NV002', 800000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD075', N'KH007', CAST(N'2022-01-03' AS Date), N'NV002', 400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD076', N'KH003', CAST(N'2022-01-04' AS Date), N'NV002', 550000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD077', N'KH006', CAST(N'2022-01-04' AS Date), N'NV002', 1100000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD078', N'KH009', CAST(N'2022-01-04' AS Date), N'NV002', 800000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD079', N'KH002', CAST(N'2022-01-04' AS Date), N'NV002', 1450000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD080', N'KH002', CAST(N'2022-01-04' AS Date), N'NV002', 1450000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD081', N'KH002', CAST(N'2022-01-04' AS Date), N'NV002', 2400000)
INSERT [dbo].[DangKyTiem] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD082', N'KH005', CAST(N'2022-01-04' AS Date), N'NV002', 1450000)
GO
INSERT [dbo].[GoiTiem] ([MaGT], [TenGT]) VALUES (N'GT001', N'Gói vaccine cho trẻ (0 đến 9 tháng tuổi)')
INSERT [dbo].[GoiTiem] ([MaGT], [TenGT]) VALUES (N'GT002', N'Gói vaccine cho trẻ tiền học đường')
INSERT [dbo].[GoiTiem] ([MaGT], [TenGT]) VALUES (N'GT003', N'Gói vaccine cho tuổi vị thành niên (8 đến 19 tuổi)')
INSERT [dbo].[GoiTiem] ([MaGT], [TenGT]) VALUES (N'GT004', N'Gói vaccine cho người trưởng thành (trên 18 tuổi)')
INSERT [dbo].[GoiTiem] ([MaGT], [TenGT]) VALUES (N'GT005', N'Gói vaccine cho phụ nữ chuẩn bị mang trước mang thai')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH001', N'Bạch Long Vũ', N'Quận 9 , TP.Hồ Chí Minh', CAST(N'2021-02-01' AS Date), N'TN001', N'0328644251')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH002', N'Nguyễn Hoàng Hiệp', N'Quận 8, TP.Hồ Chí Minh', CAST(N'2011-11-09' AS Date), N'TN002', N'0328644252')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH003', N'Nguyễn Văn Tiến', N'Quận 4, TP. Hồ Chí Minh', CAST(N'2011-02-09' AS Date), N'TN003', N'0328644253')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH004', N'Lê Thị Diễm Trinh', N'Quận Ba Vì , Hà Nội', CAST(N'2009-12-09' AS Date), N'TN004', N'0328644254')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH005', N'Nguyễn Thị Thu Trang', N'Quận 9, TP.Hồ Chí Minh ', CAST(N'2008-12-09' AS Date), N'TN005', N'0328644255')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH006', N'Huỳnh Xuân Lãm ', N'Quận 12, TP.Hồ Chí Minh ', CAST(N'2017-12-09' AS Date), N'TN006', N'0328644256')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH007', N'Võ Văn Trí', N'Quận 7, TP.Hồ Chí Minh ', CAST(N'2005-12-09' AS Date), N'TN007', N'0328644257')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH008', N'Đặng Quang Trường Nguyên', N'Quận 9, TP.Hồ Chí Minh', CAST(N'2020-12-09' AS Date), N'TN008', N'0328644258')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH009', N'Nguyễn Thanh Hòa', N'Quận 12, TP.Hồ Chí Minh ', CAST(N'2020-10-09' AS Date), N'TN009', N'0328644259')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [NgaySinh], [MaTN], [SDT]) VALUES (N'KH010', N'Võ Đoàn Hoàng Long', N'Quận 4, TP.Hồ Chí Minh ', CAST(N'2022-01-01' AS Date), N'TN010', N'0328644250')
GO
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai]) VALUES (N'L001', N'Trẻ em dưới 10 tuổi')
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai]) VALUES (N'L002', N'Người trưởng thành')
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai]) VALUES (N'L003', N'Trẻ em dưới 1 tuổi')
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai]) VALUES (N'L004', N'Trẻ em dưới 12 tuổi')
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai]) VALUES (N'L005', N'Phụ nữ cho con bú')
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai]) VALUES (N'L006', N'Phụ nữ chuẩn bị mang thai')
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai]) VALUES (N'L007', N'Phụ nữ mang thai')
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai]) VALUES (N'L008', N'Người tuổi vị thành niên')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC001  ', N'GSK Canada', N'Mỹ', N'0997722414', N'gsk@gmail,com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC002  ', N'The Winn-Dixie Pharmacy', N'Việt Nam', N'0997722414', N'thewin@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC003  ', N'Dominicks', N'Canada', N'0328655471', N'dominick@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC004  ', N'Giant Eagle', N'Hàn Quốc', N'0327695212', N'gianteag@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC005  ', N'Walgreens', N'Bỉ', N'0327695212', N'walgreens@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC006  ', N'CVS Pharmacy', N'Cu Ba', N'0327695212', N'cvs@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC007  ', N'Rite Aid Pharmacy', N'Pháp ', N'0327695212', N'riteaid@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC008  ', N'Walmart', N'Thái Lan', N'0327695212', N'walmart@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC009  ', N'Costco Pharmacy', N'Ấn Độ', N'0327695212', N'costso@gmai.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC010  ', N'Safeway', N'Anh', N'0327695212', N'safeway@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC011  ', N'Publix Pharmacy', N'Đức', N'0327695212', N'publix@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [NuocSX], [SDT], [Email]) VALUES (N'NCC012  ', N'Shoprite Pharmacy', N'Hà Lan', N'0327695212', N'shoprite@gmail.com')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau], [Email]) VALUES (N'NV001', N'Hồ Minh', N'Nam', N'Quận 9, TP.Hồ Chí Minh', N'0963528491', N'Bán hàng', N'minh', N'123', N'minhho@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau], [Email]) VALUES (N'NV002', N'Nguyễn Thị Thế Phương', N'Nam', N'Quận 8, TP.Hồ Chí Minh', N'0328644278', N'Quản lý', N'phuong', N'123', N'phuong@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau], [Email]) VALUES (N'NV003', N'Nguyễn Đức Anh', N'Nam', N'Quận 9, TP.Hồ Chí Minh', N'0328644258', N'Kế toán', N'ducanh', N'123', N'ducanh@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau], [Email]) VALUES (N'NV004', N'Tô Đông Phát', N'Nam', N'Quận 9, TP.Hồ Chí Minh', N'0987528554', N'Thủ kho', N'phat', N'123', N'phat@gmail.com')

GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN001     ', N'NCC001    ', CAST(N'2021-11-19' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN002     ', N'NCC002    ', CAST(N'2021-11-19' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN003     ', N'NCC003    ', CAST(N'2021-11-19' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN004     ', N'NCC004    ', CAST(N'2021-11-19' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN005', N'NCC002  ', CAST(N'2021-12-05' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN006', N'NCC002  ', CAST(N'2021-12-06' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN007', N'NCC004  ', CAST(N'2021-12-09' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN008', N'NCC003  ', CAST(N'2021-12-09' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN009', N'NCC003  ', CAST(N'2021-12-09' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN010', N'NCC002  ', CAST(N'2021-12-10' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN011', N'NCC002', CAST(N'2021-12-11' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN012', N'NCC003', CAST(N'2021-12-11' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN013', N'NCC007  ', CAST(N'2022-01-02' AS Date), N'NV002')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN014', N'NCC007  ', CAST(N'2022-01-02' AS Date), N'NV002')
GO
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN001', N'Nguyễn Hữu An', N'Anh', N'0935958952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN002', N'Nguyễn Thị Bảo Trân', N'Mẹ', N'0935968952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN003', N'Phan Thái Lâm', N'Bố', N'0935558952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN004', N'Nguyễn Thị Diễm Trinh', N'Mẹ', N'0265958952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN005', N'Nguyễn Thành Tiến', N'Anh', N'0235958952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN006', N'Nguyễn Tường Vy', N'Mẹ', N'0937958952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN007', N'Đào Duy Khánh', N'Bố', N'0836958952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN008', N'Bùi Quốc Lâm', N'Bố', N'0935953952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN009', N'Đặng Võ Công Thành', N'Bố', N'0337958952')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [MoiQuanHe], [SDT]) VALUES (N'TN010', N'Lê Nhật Anh', N'Bố', N'0735958952')
GO
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX001', N'Infanrix IPV+Hib', N'Bạch hầu, ho gà, uốn ván, bại liệt và Hib', 400000, 173, N'L001', N'Bỉ')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX002', N'Infanrix Hexa (6in1)', N'Bạch hầu, ho gà, uốn ván, bại liệt, Hib và viêm gan B', 400000, 162, N'L001', N'Bỉ')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX003', N'Rotateq', N'Rota virus', 150000, 169, N'L002', N'Mỹ	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX004', N'Synflorix', N'Các bệnh do phế cầu', 200000, 154, N'L008', N'Bỉ')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX005', N'BCG', N'Lao, Gan', 200000, 159, N'L001', N'Việt Nam	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX006', N'Engerix B 1ml', N'Viêm gan B trẻ em', 200000, 197, N'L008', N'Bỉ')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX007', N'Euvax B 0.5ml ', N'Viêm gan B người lớn ', 150000, 168, N'L002', N'Hàn Quốc	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX008', N'VA-Mengoc-BC ', N'Viêm màng não mô cầu BC	', 150000, 65, N'L001', N'Cu Ba	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX009', N'Menactra', N'Viêm màng não mô cầu ACYW	', 160000, 93, N'L008', N'Mỹ	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX010', N'MVVac (Lọ 5ml) ', N'Sởi', 210000, 97, N'L001', N'Việt Nam	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX011', N'MMR II (3 in 1)	 ', N'Sởi – Quai bị – Rubella ', 150000, 200, N'L002', N'Mỹ	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX012', N'Varivax ', N'Thủy đậu', 150000, 85, N'L002', N'Mỹ	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX013', N'Vaxigrip Tetra 0.5ml', N'Cúm', 160000, 92, N'L008', N'Pháp	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX014', N'Ivacflu-S 0,5ml	', N'Cúm (người lớn > 18 tuổi)', 210000, 98, N'L004', N'Việt Nam	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX015', N'Gardasil 0.5ml	 ', N'Ung thư cổ tử cung và u nhú bộ phận sinh dục, sùi mào gà', 150000, 202, N'L002', N'Mỹ	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX016', N'VAT', N'Phòng uốn ván', 150000, 70, N'L004', N'Việt Nam	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX017', N'Imojev', N'Viêm não Nhật Bản', 160000, 98, N'L008', N'Việt Nam	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX018', N'Verorab 0,5ml (TB, TTD)	 ', N'Vắc xin phòng dại', 210000, 96, N'L004', N'Pháp	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX019', N'Adacel	', N'Bạch hầu – Uốn ván – Ho gà ', 150000, 202, N'L002', N'Canada	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX020', N'Tetraxim	', N'Bạch hầu – Ho gà – Uốn ván – Bại liệt', 150000, 85, N'L008', N'Pháp	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX021', N'Uốn ván, bạch hầu hấp phụ (Td)-Lọ 0,5ml', N'Bạch hầu – Uốn ván', 160000, 97, N'L001', N'Việt Nam	')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX022', N'Twinrix', N'Viêm gan B và Viêm gan A', 210000, 98, N'L004', N'Bỉ')
INSERT [dbo].[VacXin] ([MaVX], [TenVX], [PhongBenh], [GiaBan], [SoLuong], [MaLoai], [NuocSX]) VALUES (N'VX023', N'Entra2 (5ml)', N'Viêm hô hấp cho trẻ', 170000, 5, N'L004', N'Nga')
GO
ALTER TABLE [dbo].[ChiTietCLV]  WITH CHECK ADD FOREIGN KEY([MaCLV])
REFERENCES [dbo].[CaLamViec] ([MaCLV])
GO
ALTER TABLE [dbo].[ChiTietCLV]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTietDKTiem]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[DangKyTiem] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietDKTiem]  WITH CHECK ADD FOREIGN KEY([MaVX])
REFERENCES [dbo].[VacXin] ([MaVX])
GO
ALTER TABLE [dbo].[ChiTietGoiTiem]  WITH CHECK ADD FOREIGN KEY([MaGT])
REFERENCES [dbo].[GoiTiem] ([MaGT])
GO
ALTER TABLE [dbo].[ChiTietGoiTiem]  WITH CHECK ADD FOREIGN KEY([MaVX])
REFERENCES [dbo].[VacXin] ([MaVX])
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD FOREIGN KEY([MaVX])
REFERENCES [dbo].[VacXin] ([MaVX])
GO
ALTER TABLE [dbo].[DangKyTiem]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DangKyTiem]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaTN])
REFERENCES [dbo].[ThanNhan] ([MaTN])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[VacXin]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiVacXin] ([MaLoai])
GO
/****** Object:  StoredProcedure [dbo].[UC_ChitietGT]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UC_ChitietGT](
   @magt varchar (20)
   )
   as

select GoiTiem.MaGT as [MaGT], TenGT as [TenGT], VacXin.MaVX as [MaVX], VacXin.TenVX as [TenVX], PhongBenh as [PhongBenh], NuocSX ,SoLieu, GiaBan, ThoiGian, (SoLieu * GiaBan) as [ThanhTien] from GoiTiem inner join ChiTietGoiTiem on GoiTiem.MaGT = ChiTietGoiTiem.MaGT inner join VacXin on ChiTietGoiTiem.MaVX = VacXin.MaVX where ChiTietGoiTiem.MaGT =  @magt 
GO
/****** Object:  StoredProcedure [dbo].[UC_TongTien]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UC_TongTien](
   @magt varchar (20)
   )
   as

select  sum(SoLieu * GiaBan) as [ThanhTien] from GoiTiem inner join ChiTietGoiTiem on GoiTiem.MaGT = ChiTietGoiTiem.MaGT inner join VacXin on ChiTietGoiTiem.MaVX = VacXin.MaVX where ChiTietGoiTiem.MaGT =  @magt
GO
/****** Object:  StoredProcedure [dbo].[USP_HuyHĐ]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_HuyHĐ](
  @mahd nvarchar (50)
)
as
select KhachHang.MaKH,DangKyTiem.MaHD,TenKH,KhachHang.SDT,KhachHang.DiaChi,DangKyTiem.NgayTao,NhanVien.MaNV,NhanVien.TenHienThi,VacXin.MaVX,VacXin.TenVX,ChiTietDKTiem.SoLuong,ChiTietDKTiem.DonGia
from DangKyTiem inner join KhachHang on DangKyTiem.MaKH = KhachHang.MaKH inner join NhanVien on NhanVien.MaNV = DangKyTiem.MaNV inner join ChiTietDKTiem on ChiTietDKTiem.MaHD = DangKyTiem.MaHD inner join VacXin on VacXin.MaVX = ChiTietDKTiem.MaVX inner join ThanNhan on ThanNhan.MaTN = KhachHang.MaTN
where DangKyTiem.MaHD = @mahd
GO
/****** Object:  StoredProcedure [dbo].[USP_Inhoadonn]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_Inhoadonn](
  @mahd nvarchar (50)
)
as
select ThanNhan.MaTN,KhachHang.MaKH,ThanNhan.TenTN,ThanNhan.SDT as [SDT1],YEAR('2022-01-08') -  YEAR(NgaySinh) as [Tuoi], MONTH(NgaySinh) - MONTH('2022-01-08') as [Thang],DAY('2022-01-08') + DAY(NgaySinh) as [Ngay] ,DangKyTiem.MaHD,TenKH,KhachHang.SDT,KhachHang.DiaChi,DangKyTiem.NgayTao,NhanVien.MaNV,NhanVien.TenHienThi,VacXin.TenVX,ChiTietDKTiem.SoLuong,ChiTietDKTiem.DonGia
from DangKyTiem inner join KhachHang on DangKyTiem.MaKH = KhachHang.MaKH inner join NhanVien on NhanVien.MaNV = DangKyTiem.MaNV inner join ChiTietDKTiem on ChiTietDKTiem.MaHD = DangKyTiem.MaHD inner join VacXin on VacXin.MaVX = ChiTietDKTiem.MaVX inner join ThanNhan on ThanNhan.MaTN = KhachHang.MaTN
where DangKyTiem.MaHD = @mahd
GO
/****** Object:  StoredProcedure [dbo].[USP_ThongKeDoanhThuTrongThang]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_ThongKeDoanhThuTrongThang]
@ngaybd date, @ngaykt date
AS
BEGIN
	select NgayTao AS 'Ngay', sum(DangKyTiem.TongTien) AS 'TongTien'
	from DangKyTiem
	where @ngaybd <= DangKyTiem.NgayTao and @ngaykt >= DangKyTiem.NgayTao
	group by NgayTao 
END
GO
/****** Object:  StoredProcedure [dbo].[USP_TinhTienCot4]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[USP_TinhTienCot4](
  @mahd nvarchar (50)
)
as
select ChiTietDKTiem.MaVX ,sum(ChiTietDKTiem.SoLuong * ChiTietDKTiem.DonGia) as [ThanhTien]
from DangKyTiem inner join ChiTietDKTiem on DangKyTiem.MaHD = ChiTietDKTiem.MaHD
where DangKyTiem.MaHD = @mahd
group by ChiTietDKTiem.MaVX
GO
/****** Object:  StoredProcedure [dbo].[USP_TKKhachHang]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_TKKhachHang]
AS
BEGIN
select KhachHang.MaKH as [Mã khách hàng], KhachHang.TenKH as [Tên khách hàng], KhachHang.SDT as [Số điện thoại], COUNT(DangKyTiem.MaHD) AS [Số lần đăng ký tiêm],SUM(DangKyTiem.TongTien) AS [Tổng Tiền]
from DangKyTiem, KhachHang
where KhachHang.MaKH = DangKyTiem.MaKH
group by KhachHang.TenKH, KhachHang.MaKH, KhachHang.SDT, KhachHang.DiaChi
END
GO
/****** Object:  StoredProcedure [dbo].[USP_TKMatHang]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_TKMatHang]
as
select VacXin.MaVX as [Mã Vaccine],VacXin.TenVX as [Tên Vaccine],sum(ChitietPN.Soluong) as [Số lượng nhập],VacXin.SoLuong as [Số lượng tồn], (sum(ChitietPN.Soluong) - VacXin.SoLuong) as [Số lượng bán],VacXin.GiaBan as [Giá bán]
from VacXin inner join ChiTietPN on VacXin.MaVX = ChiTietPN.MaVX 
group by VacXin.MaVX,VacXin.TenVX,VacXin.SoLuong,VacXin.GiaBan 
GO
/****** Object:  StoredProcedure [dbo].[USP_TKNhanVien]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_TKNhanVien]
as
select DangKyTiem.MaNV as [Mã nhân viên],NhanVien.TenHienThi as [Tên nhân viên],NhanVien.SDT as [Số điện thoại],count(MaHD) [Số hóa đơn đã tạo] from DangKyTiem inner join NhanVien on DangKyTiem.MaNV = NhanVien.MaNV group by DangKyTiem.MaNV,NhanVien.TenHienThi,NhanVien.SDT
GO
/****** Object:  StoredProcedure [dbo].[USP_TKPhieuNhap]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_TKPhieuNhap]
as 
select MaPN as [Mã phiểu nhập], NgayNhap as[ Ngày nhập hàng],TenNCC as [Nhà cung cấp],TenHienThi as [Nhân viên nhập] 
from PhieuNhap inner join NhaCungCap on PhieuNhap.MaNCC = NhaCungCap.MaNCC inner join NhanVien on PhieuNhap.MaNV = NhanVien.MaNV
GO
/****** Object:  StoredProcedure [dbo].[USP_TongTienCot4]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_TongTienCot4](
  @mahd nvarchar (50)
)
as
select sum(ChiTietDKTiem.SoLuong * ChiTietDKTiem.DonGia) as [Tongtien]
from DangKyTiem inner join ChiTietDKTiem on DangKyTiem.MaHD = ChiTietDKTiem.MaHD
where DangKyTiem.MaHD = @mahd

GO
/****** Object:  StoredProcedure [dbo].[USP_XemChiTietPN]    Script Date: 1/4/2022 3:31:51 PM ******/
SET ANSI_NULLS ONf
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_XemChiTietPN](
   @mapn nchar (10)
)
as
select ChiTietPN.MaPN,ChiTietPN.MaVX,VacXin.TenVX,ChiTietPN.SoLuong,ChiTietPN.DonGia,PhieuNhap.MaNV,NhanVien.TenHienThi,NhanVien.Quyen,PhieuNhap.MaNCC,NhaCungCap.TenNCC,PhieuNhap.NgayNhap
from  ChiTietPN inner join VacXin on ChiTietPN.MaVX = VacXin.MaVX inner join PhieuNhap on ChiTietPN.MaPN = PhieuNhap.MaPN inner join NhanVien on NhanVien.MaNV = PhieuNhap.MaNV inner join NhaCungCap on PhieuNhap.MaNCC = NhaCungCap.MaNCC
where ChiTietPN.MaPN = @mapn
GO
