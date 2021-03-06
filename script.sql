USE [QuanLyQuanCaFe]
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoGhe] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[TinhTrang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [int] NOT NULL,
	[MaMenu] [int] NOT NULL,
	[NgayLap] [datetime] NULL,
	[SoLuong] [int] NOT NULL,
	[GiamGia] [float] NULL,
	[GiaBan] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MaNL] [int] NOT NULL,
	[MaPhieuNhap] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[NgayLap] [datetime] NULL,
	[DonGia] [float] NULL,
	[DVT] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[MaNCC] [int] NOT NULL,
	[Manv] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NULL,
	[trangthai] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaBan] [int] NOT NULL,
	[CheckOut] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIMENU]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIMENU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](255) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK__LOAIMENU__3214EC27943276C0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITK]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[Quyen] [int] NOT NULL,
 CONSTRAINT [PK__LOAITK__3214EC271257DE3A] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](255) NULL,
	[MaLoai] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK__MENU__3214EC27AF3F25F0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUYENLIEU]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUYENLIEU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNL] [nvarchar](255) NULL,
	[DVT] [nvarchar](20) NULL,
	[DonGia] [float] NOT NULL,
	[TrangThai] [int] NULL,
	[SLTon] [float] NULL,
 CONSTRAINT [pk_manl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [varchar](11) NOT NULL,
	[Soluong] [int] NULL,
	[MaNL] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](255) NULL,
	[NgayVaoLam] [datetime] NULL,
	[SDT] [varchar](11) NOT NULL,
	[diachi] [nvarchar](255) NULL,
	[HinhAnh] [varchar](255) NULL,
	[trangthai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[NgayLap] [datetime] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[trangthai] [int] NULL,
 CONSTRAINT [PK__TAIKHOAN__3214EC271AB5CEFF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAN] ON 

INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (1, 5, 0, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (2, 7, 1, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (3, 8, 1, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (4, 2, 0, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (5, 5, 0, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (6, 5, 0, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (7, 5, 0, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (8, 4, 1, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (9, 5, 1, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (10, 3, 1, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (11, 2, 1, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (12, 1, 1, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (13, 4, 1, 1)
INSERT [dbo].[BAN] ([ID], [SoGhe], [TrangThai], [TinhTrang]) VALUES (14, 4, 0, 0)
SET IDENTITY_INSERT [dbo].[BAN] OFF
GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaMenu], [NgayLap], [SoLuong], [GiamGia], [GiaBan]) VALUES (2, 1, CAST(N'2020-06-25T00:00:00.000' AS DateTime), 3, 0.3, 25000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaMenu], [NgayLap], [SoLuong], [GiamGia], [GiaBan]) VALUES (2, 3, CAST(N'2020-06-21T15:30:13.303' AS DateTime), 1, 0.3, 29000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaMenu], [NgayLap], [SoLuong], [GiamGia], [GiaBan]) VALUES (3, 3, CAST(N'2020-06-21T15:30:46.443' AS DateTime), 1, 0.3, 29000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaMenu], [NgayLap], [SoLuong], [GiamGia], [GiaBan]) VALUES (3, 4, CAST(N'2020-06-21T15:31:01.887' AS DateTime), 1, 0.3, 24000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaMenu], [NgayLap], [SoLuong], [GiamGia], [GiaBan]) VALUES (4, 4, CAST(N'2020-07-01T00:00:00.000' AS DateTime), 1, 0.3, 200000)
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([ID], [NgayLap], [trangthai], [MaNV], [MaBan], [CheckOut]) VALUES (2, CAST(N'2020-06-21T15:26:02.683' AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[HOADON] ([ID], [NgayLap], [trangthai], [MaNV], [MaBan], [CheckOut]) VALUES (3, CAST(N'2020-06-21T15:30:27.117' AS DateTime), 1, 1, 3, NULL)
INSERT [dbo].[HOADON] ([ID], [NgayLap], [trangthai], [MaNV], [MaBan], [CheckOut]) VALUES (4, CAST(N'2020-06-22T21:40:23.550' AS DateTime), 0, 1, 6, NULL)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIMENU] ON 

INSERT [dbo].[LOAIMENU] ([ID], [TenLoai], [TrangThai]) VALUES (1, N'CÀ Phê', 0)
INSERT [dbo].[LOAIMENU] ([ID], [TenLoai], [TrangThai]) VALUES (2, N'Sinh Tố', 0)
INSERT [dbo].[LOAIMENU] ([ID], [TenLoai], [TrangThai]) VALUES (3, N'Hải Sản', 0)
SET IDENTITY_INSERT [dbo].[LOAIMENU] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAITK] ON 

INSERT [dbo].[LOAITK] ([ID], [TenLoai], [Quyen]) VALUES (1, N'Chủ', 0)
INSERT [dbo].[LOAITK] ([ID], [TenLoai], [Quyen]) VALUES (2, N'Bán Hàng', 1)
INSERT [dbo].[LOAITK] ([ID], [TenLoai], [Quyen]) VALUES (3, N'admin', 2)
SET IDENTITY_INSERT [dbo].[LOAITK] OFF
GO
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([ID], [TenMenu], [MaLoai], [TrangThai]) VALUES (1, N'Cà Phê Đen', 1, 0)
INSERT [dbo].[MENU] ([ID], [TenMenu], [MaLoai], [TrangThai]) VALUES (2, N'Cà Phê Không Đường', 1, 0)
INSERT [dbo].[MENU] ([ID], [TenMenu], [MaLoai], [TrangThai]) VALUES (3, N'Cà Phê Đá', 1, 0)
INSERT [dbo].[MENU] ([ID], [TenMenu], [MaLoai], [TrangThai]) VALUES (4, N'Sinh Tố Dừa', 2, 0)
INSERT [dbo].[MENU] ([ID], [TenMenu], [MaLoai], [TrangThai]) VALUES (5, N'Sinh Tố Bơ', 2, 0)
INSERT [dbo].[MENU] ([ID], [TenMenu], [MaLoai], [TrangThai]) VALUES (6, N'Sinh Tố Dâu', 2, 0)
SET IDENTITY_INSERT [dbo].[MENU] OFF
GO
SET IDENTITY_INSERT [dbo].[NGUYENLIEU] ON 

INSERT [dbo].[NGUYENLIEU] ([ID], [TenNL], [DVT], [DonGia], [TrangThai], [SLTon]) VALUES (1, N'Đường', N'Kg', 10000, 1, 100)
INSERT [dbo].[NGUYENLIEU] ([ID], [TenNL], [DVT], [DonGia], [TrangThai], [SLTon]) VALUES (2, N' Cafe Hạt', N'Kg', 50000, 1, 100)
INSERT [dbo].[NGUYENLIEU] ([ID], [TenNL], [DVT], [DonGia], [TrangThai], [SLTon]) VALUES (3, N'Sữa tươi', N'Lít', 40000, 1, 100)
INSERT [dbo].[NGUYENLIEU] ([ID], [TenNL], [DVT], [DonGia], [TrangThai], [SLTon]) VALUES (4, N'Bơ', N'Kg', 40000, 1, 100)
INSERT [dbo].[NGUYENLIEU] ([ID], [TenNL], [DVT], [DonGia], [TrangThai], [SLTon]) VALUES (5, N'Trái cây ', N'Kg', 70000, 1, 100)
SET IDENTITY_INSERT [dbo].[NGUYENLIEU] OFF
GO
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([ID], [TenNCC], [DiaChi], [SDT], [Soluong], [MaNL]) VALUES (1, N'Cafe Nghĩa', N'Đồng Tháp', N'3030303', 50, 1)
INSERT [dbo].[NHACUNGCAP] ([ID], [TenNCC], [DiaChi], [SDT], [Soluong], [MaNL]) VALUES (3, N'Cafe Thanh', N'Cao Lãnh', N'30303033', 50, 2)
INSERT [dbo].[NHACUNGCAP] ([ID], [TenNCC], [DiaChi], [SDT], [Soluong], [MaNL]) VALUES (4, N'Cafe Nghĩa2', N'Đồng Tháp', N'3030303', 50, 3)
INSERT [dbo].[NHACUNGCAP] ([ID], [TenNCC], [DiaChi], [SDT], [Soluong], [MaNL]) VALUES (5, N'Cafe Trịnh', N'Đồng Tháp', N'3030303', 50, 1)
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([ID], [TenNV], [NgayVaoLam], [SDT], [diachi], [HinhAnh], [trangthai]) VALUES (1, N'Tô Minh Hải', CAST(N'2020-06-21T00:00:00.000' AS DateTime), N'0306181222', N'TPHCM', NULL, 1)
INSERT [dbo].[NHANVIEN] ([ID], [TenNV], [NgayVaoLam], [SDT], [diachi], [HinhAnh], [trangthai]) VALUES (2, N'Trương Quang Huy', CAST(N'2020-06-24T00:00:00.000' AS DateTime), N'0306181222', N'TP HCM', NULL, 1)
INSERT [dbo].[NHANVIEN] ([ID], [TenNV], [NgayVaoLam], [SDT], [diachi], [HinhAnh], [trangthai]) VALUES (3, N'Nguyễn Quốc Trọng', CAST(N'2020-06-21T00:00:00.000' AS DateTime), N'0306181222', N'TP HCM', NULL, 1)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([ID], [username], [pass], [MaLoai], [MaNV], [trangthai]) VALUES (2, N'MinhHai', N'123456', 1, 1, NULL)
INSERT [dbo].[TAIKHOAN] ([ID], [username], [pass], [MaLoai], [MaNV], [trangthai]) VALUES (4, N'QuangHuy', N'123456', 2, 2, NULL)
INSERT [dbo].[TAIKHOAN] ([ID], [username], [pass], [MaLoai], [MaNV], [trangthai]) VALUES (5, N'QuocTrong', N'123456', 3, 3, NULL)
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ui_user]    Script Date: 6/25/2020 4:14:30 PM ******/
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [ui_user] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BAN] ADD  DEFAULT ((1)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[CHITIETHOADON] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] ADD  DEFAULT ((0)) FOR [DVT]
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[HOADON] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT (getdate()) FOR [NgayVaoLam]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[PHIEUNHAP] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[PHIEUNHAP] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[TAIKHOAN] ADD  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [fk_mahd_cthd] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([ID])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [fk_mahd_cthd]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [fk_mamenu_cthd] FOREIGN KEY([MaMenu])
REFERENCES [dbo].[MENU] ([ID])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [fk_mamenu_cthd]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_manl] FOREIGN KEY([MaNL])
REFERENCES [dbo].[NGUYENLIEU] ([ID])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [fk_manl]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_maphieunhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PHIEUNHAP] ([ID])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [fk_maphieunhap]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [fk_mancc] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([ID])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [fk_mancc]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [fk_manv_dondh] FOREIGN KEY([Manv])
REFERENCES [dbo].[NHANVIEN] ([ID])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [fk_manv_dondh]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_maban] FOREIGN KEY([MaBan])
REFERENCES [dbo].[BAN] ([ID])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_maban]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_manv_hd] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([ID])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_manv_hd]
GO
ALTER TABLE [dbo].[MENU]  WITH CHECK ADD  CONSTRAINT [fk_maloai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAIMENU] ([ID])
GO
ALTER TABLE [dbo].[MENU] CHECK CONSTRAINT [fk_maloai]
GO
ALTER TABLE [dbo].[NHACUNGCAP]  WITH CHECK ADD  CONSTRAINT [fk_manl_nguyenlieu] FOREIGN KEY([MaNL])
REFERENCES [dbo].[NGUYENLIEU] ([ID])
GO
ALTER TABLE [dbo].[NHACUNGCAP] CHECK CONSTRAINT [fk_manl_nguyenlieu]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_manV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([ID])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [fk_manV]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_maloaitk] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAITK] ([ID])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_maloaitk]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_manv_tk] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([ID])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_manv_tk]
GO
/****** Object:  StoredProcedure [dbo].[GetBill]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetBill] @maBan int
as 
begin 
select TenMenu,GiaBan,sum(SoLuong) SoLuong,sum(soluong * GiaBan) ThanhTien
from CHITIETHOADON ct,HOADON hd ,BAN b,MENU m
where ct.MaHD=hd.Id and ct.MaMenu=m.ID and hd.MaBan=b.ID and hd.trangthai=1 and b.ID=@maBan
group by TenMenu,GiaBan,SoLuong
end 
GO
/****** Object:  StoredProcedure [dbo].[inserBill]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[inserBill] @idTable int, @maNv int
as
begin
	insert into HOADON(NgayLap,CheckOut,trangthai,MaNV,MaBan)
	 values(getdate(),null,0,@maNv,@idTable)
	
end
GO
/****** Object:  StoredProcedure [dbo].[inserBillInfo]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[inserBillInfo] @MaHd int,@MaMenu int,@SoLuong int,@GiamGia float,@GiaBan float
as
begin
	insert into CHITIETHOADON(MaHD,MaMenu,SoLuong,GiamGia,GiaBan) 
	values(@MaHd,@MaMenu,@SoLuong,@GiamGia,@GiaBan)
	
end
GO
/****** Object:  StoredProcedure [dbo].[QuanLyBan]    Script Date: 6/25/2020 4:14:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[QuanLyBan]
as
Begin
select ID, SoGhe, case when TrangThai = 1 then N'Đang phục vụ' else N'trống' end TrangThai, case when TinhTrang = 1 then N'Dùng được' else N'Bàn hư' end TinhTrang
from Ban
end
GO
