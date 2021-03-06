USE [WebBanSach]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/9/2020 9:02:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[HoTen] [nvarchar](100) NULL,
	[SDT] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Quyen] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 6/9/2020 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[Id_HoaDon] [int] NOT NULL,
	[Id_SanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_ChiTietHD_1] PRIMARY KEY CLUSTERED 
(
	[Id_HoaDon] ASC,
	[Id_SanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 6/9/2020 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] NOT NULL,
	[Noidung] [nvarchar](500) NULL,
	[Id_account] [int] NULL,
	[NgayDang] [date] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 6/9/2020 9:02:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [int] NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
	[Id_Cap] [int] NULL,
	[Link] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucNho]    Script Date: 6/9/2020 9:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucNho](
	[Id] [int] NOT NULL,
	[DanhMucNho] [nvarchar](50) NULL,
	[Id_DanhMuc] [int] NULL,
 CONSTRAINT [PK_DanhMucNho] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/9/2020 9:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [date] NULL,
	[Id_KhachHang] [int] NULL,
	[ShipName] [nvarchar](100) NULL,
	[ShipMobile] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[ShipDiachi] [nvarchar](100) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 6/9/2020 9:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[Id] [int] NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[Link] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/9/2020 9:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] NOT NULL,
	[TenSach] [nvarchar](1000) NULL,
	[Link] [nvarchar](50) NULL,
	[Id_TacGia1] [int] NULL,
	[Id_TacGia2] [int] NULL,
	[DichGia] [nvarchar](100) NULL,
	[Sotrang] [int] NULL,
	[NgayPhatHanh] [date] NULL,
	[GiaBan] [int] NULL,
	[GiaKM] [int] NULL,
	[SoLuong] [int] NULL,
	[GioiThieu] [ntext] NULL,
	[KichThuoc] [nvarchar](50) NULL,
	[Id_DanhMuc] [int] NULL,
	[Id_Danhmucnho] [int] NULL,
	[NhaXuatBan] [nvarchar](50) NULL,
	[Images] [nvarchar](50) NULL,
	[TopHot] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 6/9/2020 9:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[Id] [int] NOT NULL,
	[TenTacGia] [nvarchar](100) NULL,
	[Link] [nvarchar](50) NULL,
	[GioiThieu] [ntext] NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [UserName], [PassWord], [Email], [HoTen], [SDT], [DiaChi], [Quyen]) VALUES (1, NULL, N'123456', N'hoangthi@gmail.com', N'Hoàng Thị Thuý Vân', N'0912345678', N'Hà nội', 0)
INSERT [dbo].[Account] ([Id], [UserName], [PassWord], [Email], [HoTen], [SDT], [DiaChi], [Quyen]) VALUES (2, NULL, N'123456', N'admin@gmail.com', N'admin', N'0989382382', N'Hà nội', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (0, 13, 7, 60800)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (1, 1, 12, 140000)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (2, 2, 12, 134345)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (3, 15, 2, 86400)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (4, 13, 32, 60800)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (5, 13, 1, 60800)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (6, 13, 1, 60800)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (11, 5, 1, 76000)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (11, 11, 2, 76800)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (12, 4, 10, 86400)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (12, 7, 1, 92000)
INSERT [dbo].[ChiTietHD] ([Id_HoaDon], [Id_SanPham], [SoLuong], [Gia]) VALUES (12, 15, 9, 86400)
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (1, N'Văn học Việt Nam', 0, N'van-hoc-viet-nam')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (2, N'Văn học Nước Ngoài', 0, N'van-hoc-nuoc-ngoai')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (3, N'Thiếu nhi', 0, N'thieu-nhi')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (4, N'Thời sự - Chính trị', 0, N'thoi-su---chinh-tri')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (5, N'Khoa học tự nhiên - Nhân văn', 0, N'khoa-hoc-tu-nhien---nhan-van')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (6, N'Tham khảo', 0, N'tham-khao')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (7, N'Giảm giá đặc biệt', 0, N'giam-gia-dac-biet')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (8, N'Sách tái bản', 0, N'sach-tai-ban')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (9, N'Tiểu thuyết', 1, N'tieu-thuyet')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (10, N'Truyện ngắn', 1, N'truyen-ngan')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (11, N'Thơ / Kịch', 1, N'tho-kich')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (12, N'Hồi ký / Phê Bình / Tiểu luận', 1, N'hoi-ky-phe-binh-tieu-luan')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (13, N'Tạp bút / Tản văn', 1, N'tap-but-tan-van')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (14, N'Đương đại', 2, N'duong-dai')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (15, N'Lãng mạn', 2, N'lang-man')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (16, N'Trinh thám / Kinh dị', 2, N'trinh-tham-kinh-di')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (17, N'Kiếm hiệp', 2, N'kiem-hiep')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (18, N'Kinh điển', 2, N'kinh-dien')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (19, N'Thơ / Kịch', 2, N'tho-kich')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (20, N'Hồi ký/ Tiểu luận', 2, N'hoi-ky-tieu-luan')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (21, N'Huyền ảo / Giả tưởng', 2, N'huyen-ao-gia-tuong')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (22, N'Tản Văn / Tạp bút', 2, N'tan-van-tap-but')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (23, N'Tuổi teen ', 3, N'tuoi-teen')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (24, N'Truyện tranh', 3, N'truyen-tranh')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (25, N'Thiếu nhi', 3, N'thieu-nhi')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (26, N'Hồi ký / Tự truyện', 4, N'hoi-ky-tu-truyen')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (27, N'Thế giới hiện đại', 4, N'the-gioi-hien-dai')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (28, N'Lịch sử', 5, N'lich-su')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (29, N'Triết học', 5, N'triet-hoc')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (30, N'Tâm lý học', 5, N'tam-ly-hoc')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (31, N'Kinh tế ', 5, N'kinh-te')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (32, N'Vũ trụ', 5, N'vu-tru')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [Id_Cap], [Link]) VALUES (33, N'Sinh học', 5, N'sinh-hoc')

SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (0, CAST(N'2020-06-08' AS Date), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (1, CAST(N'2020-06-08' AS Date), NULL, N'ukuk', N'9090', N'kjk', NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (2, CAST(N'2020-06-08' AS Date), NULL, N'45', N'4545', N'45', NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (3, CAST(N'2020-06-09' AS Date), NULL, N'demo1', N'456', N'', N'546', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (4, CAST(N'2020-06-09' AS Date), NULL, N'sdf', N'sdf', N'sdf', N'sdf', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (5, CAST(N'2020-06-09' AS Date), NULL, N'34', N'34', N'34', N'34', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (6, CAST(N'2020-06-09' AS Date), NULL, N'demo2', N'demo2', N'demo2', N'demo2', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (7, CAST(N'2020-06-09' AS Date), NULL, N'demo3', N'demo3', N'demo3', N'demo3', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (8, CAST(N'2020-06-09' AS Date), NULL, N'demo4', N'34', N'343', N'demo4', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (9, CAST(N'2020-06-09' AS Date), NULL, N'demo4', N'demo4', N'dsf', N'demo4', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (10, CAST(N'2020-06-09' AS Date), NULL, N'demo4', N'', N'', N'', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (11, CAST(N'2020-06-09' AS Date), NULL, N'demo5', N'4677', N'455', N'demo5', NULL)
INSERT [dbo].[HoaDon] ([Id], [NgayTao], [Id_KhachHang], [ShipName], [ShipMobile], [ShipEmail], [ShipDiachi], [Status]) VALUES (12, CAST(N'2020-06-09' AS Date), NULL, N'demo6', N'098767', N'demo6', N'demo6', NULL)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[NhaXuatBan] ([Id], [Ten], [Link]) VALUES (1, N'Hà Nội', N'ha-noi')
INSERT [dbo].[NhaXuatBan] ([Id], [Ten], [Link]) VALUES (2, N'Thế Giới', N'the-gioi')
INSERT [dbo].[NhaXuatBan] ([Id], [Ten], [Link]) VALUES (3, N'Hội Nhà Văn', N'hoi-nha-van')
INSERT [dbo].[NhaXuatBan] ([Id], [Ten], [Link]) VALUES (4, N'Dân Trí', N'dan-tri')
INSERT [dbo].[NhaXuatBan] ([Id], [Ten], [Link]) VALUES (5, N'Văn học', N'van-hoc')
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (1, N'Sa môn không hải thết yến bầy quỷ đại đường tập 1', N'sa-mon-khong-hai', 1, NULL, N'Uyên Thiểm', 368, CAST(N'2020-01-07' AS Date), 130000, 104000, 100, N'Nhà sư trẻ tuổi Không Hải, cùng người bạn thân Quất Dật Thế, từ Nhật Bản xa xôi vượt biển tới Đại Đường với tư cách sứ thần sang du học. Vào thời đại đó, Trường An, kinh đô của nhà Đại Đường là nơi nổi tiếng thịnh vượng phồn hoa, tập trung nhiều sắc dân từ khắp nơi đổ về. Như bóng tối luôn song hành cùng ánh sáng, nhiều loài yêu ma quỷ quái cũng bị thu hút về đây. Một con yêu quái mèo đã ám dinh cơ của viên chức dịch họ Lưu và đưa ra lời tiên tri về cái chết của hoàng đế. Tự tin vào vốn kiến thức uyên bác cùng tài ứng biến phi thường của bản thân, Không Hải đã dẫn Quất Dật Thế đến nhà họ Lưu để đương đầu với yêu mèo. Song họ không ngờ, mình đã vô tình dính líu vào một sự kiện lớn làm rung chuyển nhà Đường. Kiệt tác tiểu thuyết truyền kỳ Nhật Bản lấy bối cảnh Trung Hoa mở ra từ đây.', N'14 x 20.5', 1, 1, N'1', N'SQHEFH86.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (2, N'Cuộc chạy trốn của Josef Mengele', N'cuoc-tron-chay-cua-josef-mengele', 2, NULL, N'Hoàng Mai Anh', 256, CAST(N'2012-12-31' AS Date), 100000, 80000, 100, N'Cái ác liệu có khi nào không phải đền tội? Mặc dù đã chạy trốn sang Mĩ Latinh, không có bản án của cộng đồng quốc tế, nhưng bác sĩ của trại Auschiwitz, Josef Mengele, vẫn phải chịu đựng những gì còn hơn một bản án: một cuộc đời trốn chui trốn lủi, cô đơn, tuyệt vọng trong cái cái nóng như thiêu đốt của miền nhiệt đới Nam Mĩ, trong nỗi lo sợ đến cùng cực.

 

Những thứ còn tệ hơn cả cái chết.

 

Ngòi bút tỉ mỉ của Guez đã miêu tả cả một khung cảnh thiên nhiên hoang dã ở phía Tây bán cầu và hành trình khổ nhục của Josef Mengele từ sau khi rời khỏi châu Âu đến ngày từ giã cõi đời. Giọng văn của ông khéo léo đến độ, nếu không biết đó là Mengele, hẳn khi đọc tác phẩm này, chúng ta đã không khỏi xót thương cho số phận buồn bã cô đơn của một kiếp người ở xứ sở cách chúng ta nửa vòng trái đất.

 

“Một thành công lớn trong việc mô tả một con quỷ lăn lộn trong cái tầm thường xoàng xĩnh sau cái thời là Thiên thần chết ở Auschwitz.”

- Jean-Christophe Buisson', N'14 x 20.5', 1, 1, N'1', N'OU3NQ967.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (3, N'Sông ngân khi tỏ khi mờ', N'song-ngan-khi-to-khi-mo', 3, NULL, NULL, 184, CAST(N'2019-05-31' AS Date), 77000, 60000, 100, N'Trong cuốn sách này, Giáo sư Nguyễn Quang Riệu, nhà khoa học danh tiếng, nhà vật lý thiên văn có đóng góp đáng kể trong lĩnh vực vật lý thiên văn vô tuyến của thế giới trong những năm 1970, đã giúp các bạn đọc trẻ có được vốn hiểu biết cơ bản về vũ trụ: những người cổ đại, từ Ai Cập, Babylon, Hy Lạp đến Trung Hoa có quan niệm thế nào về vũ trụ, vũ trụ ẩn hiện trong văn hóa dân gian Việt Nam ra sao, rồi cũng vũ trụ ấy được nhìn từ phương diện khoa học: nguồn gốc và sự hình thành vũ trụ, trong đó có dải Ngân hà và hệ Mặt Trời, nơi chúng ta đang sống…

 

“Thông qua cách sắp xếp độc đáo của cuốn sách, qua việc giảng giải các truyền thuyết hay trình bày một cách sáng sủa những thành tựu mũi nhọn của khoa học, và nhờ việc sưu tầm xuất sắc các hình ảnh minh họa, Nguyễn Quang Riệu đã thực sự hoàn thành một công trình văn hóa. Chúng ta biết ơn ông đã chia sẻ với chúng ta hai nền văn hóa mà ông hấp thụ được.”

- Françoise Praderie, Nhà thiên văn tại Đài thiên văn Paris', N'14 x 20.5', 1, 1, N'1', N'KEJYZJBV.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (4, N'Lòng tốt của bạn cần thêm đôi lần sắc sảo', N'long-tot-cua-ban-can-them-doi-phan-sac-sao', 4, NULL, N'Nguyễn Vinh Chi', 264, CAST(N'2018-12-01' AS Date), 108000, 86400, 100, N'“Một người có thể sống cả đời theo cách mình thích là chuyện vô cùng khó khăn.

 

Chúng ta không giây phút nào không bị thế giới bên ngoài chỉ trỏ, lâu dần sẽ quên mất tâm tư ban sơ, mất đi khả năng suy nghĩ độc lập và giữ vững cái tôi.

 

So với từng câu từng câu an ủi dịu dàng, tôi nghĩ chúng ta cần một chậu nước lạnh hơn. Nó sẽ giúp chúng ta tỉnh táo ý thức được tính tình cáu bẳn của mình, tầm nhìn và lòng dạ hạn hẹp của mình, EQ thấp của mình, và tất cả những vấn đề mà bản thân chúng ta không nhìn rõ, nhưng người khác thấy rõ mồn một mà không muốn nói cho chúng ta biết.

 

Khi bạn khốn đốn, hoang mang, nếu đọc được cuốn sách này, mong rằng bạn có thể rút ra sức mạnh từ trong câu chữ của nó, đừng nộp vũ khí đầu hàng thế giới này.

 

[...] Đời người là một quá trình thử sai, trưởng thành cũng không ngoại lệ. Nên làm những gì, đi con đường nào, mỗi người đều tuân theo tiếng nói của nội tâm, dò dẫm từng bước một. Vấp ngã, thì bò dậy; va vỡ đầu, thì lùi lại; đi đường sai, thì quay lại; lạc lối, thì ngừng chân…

 

Cuộc đời của mỗi người mỗi khác, ai ai cũng phải tự mình trải qua, mỗi người đều có bài học nhân sinh cần bản thân một mình hoàn thành.

 

Bởi vì từng trải, cho nên thấu hiểu.

 

Nguyện cho tất cả những người không hiểu và thấu hiểu trên đời không ngừng trưởng thành nhưng vẫn tốt bụng như xưa!”', N'14 x 20.5', 2, 2, N'2', N'IVFUNACP.jpg', 1)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (5, N'Mua vé số vào ngày nào thì dễ trúng', N'mua-ve-so-vao-ngay-nao-thi-de-trung', 5, 6, N'Tĩnh Phong', 268, CAST(N'2018-11-30' AS Date), 95000, 76000, 100, N'Bạn lại vừa phải trải qua một ngày thứ Hai điển hình… Buổi sáng bạn quên đun nước pha cà phê trước khi đánh răng, bạn ra khỏi nhà muộn hơn 5 phút so với mọi ngày và ôi thôi – kẹt xe! – Bạn đến công ty muộn mất 30 phút. Sau một ngày làm việc mệt mỏi, bạn tìm cách xả xì trét cho mình bằng cách đi shopping, khi ra về bạn bỗng ngước lên và bắt gặp một khuôn mặt hoàn toàn lạ lẫm nhưng lại đáng yêu nhất từng thấy trong đời đang đi ngược chiều. Sau một phút choáng váng, bạn chợt nhận ra là mình phải làm quen với “người ta” bằng mọi giá, khổ nỗi “người ta” đã ở rất xa theo hướng ngược lại của thang cuốn. Bạn hộc tốc chạy đuổi theo, nhưng vô ích, chẳng thấy đâu nữa rồi. Bạn về nhà, định bụng tắm nước nóng cho thoải mái, thế nhưng không tài nào điều chỉnh cho nước vòi sen có nhiệt độ dễ chịu được cả, chỉ có thể là bỏng rát hoặc lạnh toát.

 

Bạn bắt đầu tức giận và nghi ngờ đang có một thế lực hắc ám nào đó đang bủa vây cuộc đời mình, và thực sự mong muốn có lời giải đáp thỏa đáng cho tất cả những thứ khó chịu kia.

 

Rob Eastaway và Jeremy Wyndham sẽ có câu trả lời thỏa đáng cho các vấn đề của bạn trong cuốn sách này. Hóa ra các nan đề của cuộc sống sẽ rất dễ hiểu và dễ đối phó nếu chúng ta nhìn qua lăng kính quả các nhà toán học. Với một chút hiểu biết về quy tắc của các con số, ta sẽ có nhiều cơ hội hơn trong việc kiểm soát cái vòi nước nóng cứng đầu, tránh tắc đường, chiến thắng trong trò bi-a hay tăng xác xuất trúng số.

 

Và dĩ nhiên, chí ít thì bạn cũng sẽ biết rõ hơn khả năng gặp lại mối tình sét đánh của mình “trên đường đời tấp nập”  sau khi ”vô tình lặng lẽ bước qua nhau” là bao nhiêu…', N'14 x 20.5', 2, 3, N'2', N'GFJOBJZP.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (6, N'Kẻ dị biệt tại trường học phép thuật 2', N'ke-di-biet-tai-truong-hoc-phep-thuat-2', 7, NULL, N'Chán', 280, CAST(N'2018-11-16' AS Date), 96000, 76800, 100, NULL, N'13 x 18', 3, 3, N'2', N'6783URWS.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (7, N'Thăm thẳm mùa hè ', N'tham-tham-mua-he', 8, NULL, NULL, 336, CAST(N'2018-09-26' AS Date), 115000, 92000, 100, N'Cô công chúa nhỏ ấy đã chết rồi. Tự sát ư? Xinh đẹp, thông minh, danh giá và một tương lai ngời ngời trước mặt, dường như cô chẳng có lý do gì để làm thế. Hay ai đã giết cô? Có thể lắm chứ, cha cô là một nhà chính trị và chắc hẳn không ít kẻ thù. Nhưng chẳng có gì trong những manh mối để lại cho thấy đó là một vụ giết người.

 

Nguyên, Thụy, Nam Phong, mỗi người đều bị ám ảnh về cô theo những cách khác nhau, và đi tìm câu trả lời theo những cách khác nhau, để rồi đều nhận ra vị của trái táo xanh mùa hè năm nào, vị của thanh xuân, đã trở nên đắng ngắt.

 

Với Thăm thẳm mùa hè, Nguyễn Dương Quỳnh lần đầu tiên thách thức mình với trinh thám, một thể loại gần như còn trống vắng trong văn học Việt.', N'14 x 20.5', 3, 4, N'2', N'2UP8Z8G5.jpg', 1)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (8, N'Ký túc xá phòng 307', N'ky-tuc-xa-phong-307', 9, NULL, NULL, 176, CAST(N'2019-11-29' AS Date), 69000, 55200, 100, N'“Thời sinh viên, trong tôi, ý nghĩ trở thành vĩ nhân luôn thường trực.
Bill Gates, Steve Jobs, Mark Zuckerberg.
Đặc điểm chung của các vĩ nhân là họ luôn bỏ ngang đại học.
Suốt năm năm ngồi trên giảng đường, ý nghĩ “mình sẽ bỏ học” lóe lên trong đầu
tôi 226 lần. Nhưng rốt cuộc, tôi không đi theo tiếng gọi của các vĩ nhân. Tôi hoàn
thành 180 tín chỉ học phần. Tốt nghiệp đại học, cầm tấm bằng đỏ chót, rồi lao vào
đời.”
Những câu chuyện chân thực, hài hước, mang nhiều niềm vui xen lẫn những nỗi
ngậm ngùi của những cậu sinh viên nghèo sống trong Ký túc xá phòng 307.
Một cuốn sách dành tặng cho những ai đã-đang-và-sẽ là sinh viên.', N'14 x 20.5', 4, 4, N'3', N'C3F24YNQ.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (9, N'Về nhà (TB 2019)', N've-nha-tb-2019', 10, NULL, NULL, 399, CAST(N'2019-07-19' AS Date), 100000, 89000, 100, N'“Chiều gió mát, tôi không vào Tam Bảo mà ngồi ngoài thềm nghe đại chúng tụng kinh. Từ chỗ ngồi, tôi thấy anh thợ sơn đứng phun nhũ vàng lên các tượng Tỳ Lô Giá Na, phía sau là cây đại trổ đầy hoa đỏ và vượt qua bên ngoài tường chùa là những cành khẳng khiu của cây gạo đã rụng hết lá đang in bóng trên nền trời tráng ánh hoàng hôn. Có con chim sẻ nhỏ đậu trên đường dây điện căng ngang từ nhà tổ sang khu nhà tăng cứ líu lo một mình rất lâu rồi sà xuống sân xi măng tiếp tục líu lo, chân nhảy nhảy vui vẻ.

Tiếng kinh cứ vang vang. Không gian đầy tràn một thứ tôi không thể tả.”

 

Bắt đầu từ những bước chân bỡ ngỡ, háo hức nhưng cũng đơn côi, cô độc trong Một mình ở Châu Âu, tác giả, người phụ nữ kể chuyện, trong Xuyên Mỹ đã bươn chải qua nhiều chặng đường đầy nhọc nhằn, tâm trạng dọc ngang nước Mỹ. Với tập sách này, cô tiếp tục hành trình đa chiều, phức tạp, cả trong nội tâm lẫn giữa những dặm dài địa lý, sau những tổn thương và sợ hãi. Về nhà, với cách tường thuật cụ thể và trung thực tra vấn đến tận cùng, chính là tự truyện về một cá tính, một con người không mệt mỏi truy tìm nguyên nhân của hạnh phúc và bất hạnh, hòng nhìn thấy cái "chân bản lai diện mục" của chính mình, để lại bình an cất bước, sau bao nhiêu đau khổ, đổ vỡ, trên con đường "về nhà".', N'14 x 20.5', 4, 5, N'3', N'C5FA2DHX.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (10, N'Mama - Mẹ', N'ma-ma', 11, NULL, N'Nguyễn Duy Bình', 68, CAST(N'2019-04-19' AS Date), 108000, 86400, 100, N'MẸ là ai?

Là tiếng gọi đầu tiên trên đôi môi hầu như mọi đứa trẻ.

Là tên chung cho hàng tỉ phụ nữ trên thế giới này.

Là người nói với ta những lời yêu thương, khiến ta nghĩ đến sự dịu dàng, mối ràng buộc ruột thịt, sự nhung nhớ và những hy sinh lặng thầm.

Ở mỗi thời đại, mỗi xứ sở, mỗi gia đình, những người phụ nữ thật khác nhau biết mấy, nhưng khi ôm đứa con thơ trong lòng, tất cả họ đều giống nhau, bởi họ đều là MẸ.', N'24 x 30', 5, 5, N'3', N'WAXUV1L7.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (11, N'Bệnh vẩy nến nơi vĩnh hằng', N'benh-vay-nen', 12, NULL, N'Trần Trọng Vũ', 244, CAST(N'2018-11-28' AS Date), 96000, 76800, 100, N'Ôi vẫn biết điều này ghê tởm

thằng hình nhân rỗng

chỉ khi bị nén xuống đáy lọ

mới bật trở lại mặt nước

 

Bệnh vẩy nến nơi vĩnh hằng, xuất bản tại Pháp năm 2011 bởi Nhà xuất bản Rafael de Surtis, gồm 785 bài thơ độc lập, nhưng tập hợp của chúng lại tạo dựng nên một bức tranh toàn cảnh của một cuộc đời, mà ở đấy có các nhân vật chính, có dàn nhân vật phụ, có phong cảnh lớn, có bối cảnh nhỏ một căn phòng. Có thể đọc chúng như một cuốn truyện dài cảm động, thông qua những con số vô cảm.

 

785 bài thơ cực ngắn, không bao giờ có dù chỉ một dấu chấm một dấu phẩy, không bao giờ có tựa đề, chỉ lần lượt lĩnh số, đến ngán ngẩm, như căn bệnh vẩy nến bóc đi rồi vẫn mọc lại, như chính cuộc đời trần thế.', N'14.5 x 20.5', 5, 5, N'3', N'G12K9LFI.jpg', 1)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (12, N'Bức xúc không làm ta vô can', N'buc-xuc-khong-lam-ta-vo-can', 13, NULL, NULL, 222, CAST(N'2018-08-06' AS Date), 85000, 68000, 100, N'', N'14 x 20.5', 6, NULL, N'3', N'D1JIVZ1S.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (13, N'Nhật ký Đặng Thùy Trâm', N'nhat-ky-dang-thuy-tram', 14, NULL, NULL, 296, CAST(N'2018-05-29' AS Date), 76000, 60800, 100, N'Một cuốn nhật kí nhặt được bên xác của một nữ Việt Cộng đã suýt bị người lính Mỹ ném vào lửa, nhưng người phiên dịch đã khuyên anh ta nên giữ lại vì "trong đó có lửa". Nhật kí Đặng Thùy Trâm là những ghi chép hàng ngày của một người nữ bác sĩ về cuộc sống của chị nơi chiến tuyến. Cuốn nhật kí là thế giới riêng của người trí thức nhạy cảm mà không yếu đuối, tha thiết với cuộc sống mà không hề sợ hãi trước những gian nan. Ở đó ta vẫn gặp những băn khoăn trăn trở trước tình yêu, trước cuộc sống phức tạp hàng ngày, những nỗi buồn, nỗi nhớ nhung, sự cô đơn của một người con gái, nhưng đồng thời chúng ta cũng thấy được một ý chí mãnh liệt, những lời nói tự động viên cảnh tỉnh, một lòng can đảm phi thường - những điều đã làm nên một thế hệ anh hùng.', N'13 x 20.5', 8, NULL, N'3', N'6MS7ODOG.jpg', 1)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (14, N'Muốn làm nữ hoàng, đừng yêu như hầu gái', N'muon-lam-nu-hoang', 15, NULL, NULL, 200, CAST(N'2019-12-04' AS Date), 72000, 57600, 100, N'Khi nàng biết cách làm một người đàn bà thực sự, ấy là khi nàng xứng được yêu.

Được yêu, trong lý lẽ của nàng, là được sóng bước bên cạnh người đàn ông chứ không phải lặng thầm núp sau lưng họ. Được yêu, là được nâng niu theo cái cách mà nàng chờ đợi. Được yêu, là được kiêu hãnh trong tình yêu ấy, được là mình, và yêu không gắng gượng.

 

Là đàn bà, nàng chẳng dại “cầm cung”. Nàng chủ động mà như thụ động. Nàng chinh phục mà tựa chỉ ngồi yên. Nở nụ cười xinh đẹp của riêng mình, nàng hiểu: “Muốn làm nữ hoàng, đừng yêu như hầu gái”.', N'14 x 20.5', 7, 6, N'4', N'2QAYBLJW.jpg', 1)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (15, N'Để con được chích - Hiểu hết về vắc xin và miễn dịch', N'de-con-duoc-chich', 16, 17, NULL, 296, CAST(N'2019-06-28' AS Date), 108000, 86400, 100, N'Bạn có phân vân trong việc đưa con đi tiêm chủng? Bạn có lo ngại về thông tin vắc xin MMR (sởi-rubella-quai bị) gây hội chứng tự kỷ? Và thủy ngân, cùng nhôm có thể được truyền vào cơ thể của trẻ cùng các mũi vắc xin? Con của bạn có phải là một trong hàng nghìn đứa trẻ mắc sởi vào mùa xuân 2019? Hay bé đã may mắn không mắc bệnh? Và hệ miễn dịch của trẻ, cùng của chính chúng ta thực ra hoạt động như thế nào?

 

Vô vàn câu hỏi về chủng ngừa và hệ miễn dịch sẽ được giải đáp trong cuốn sách này. Việc của bạn là lật giở nó để rồi có quyết định Tiêm hay Không tiêm. Sức khỏe của con luôn nằm trong tay cha mẹ.

 

“Cuốn sách này không chỉ dành cho tất cả các ông bố bà mẹ còn đang hoang mang về việc đi chích ngừa cho con, và có thể là một tài liệu tham khảo cho tất cả nhân viên y tế trong việc giải đáp thắc mắc cho bệnh nhân của chúng ta một cách đồng nhất và khoa học về vaccine và thực hành tiêm chủng.”

- Ts, Bs. Phạm Lê Duy', N'14 x 20.5', 8, NULL, N'2', N'1A4LDY89.jpg', 1)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (16, N'Tiệm bá nghệ Tada trước ga Mahoro', N'tiem-ba-nghe-tada', 18, NULL, N'Phong', 340, CAST(N'2019-12-28' AS Date), 120000, 96000, 100, N'Tada Keisuke, một nhân viên bán ô tô quyết định bỏ nghề, mở tiệm bá nghệ. Gyoten Haruhiko, một nhà nghiên cứu bệnh lý bỗng nhiên bỏ việc, lang bạt nay đây mai đó. Hai người bạn cấp ba chung lớp chưa một lần trò chuyện và chẳng khác nào hai đường thẳng song song ấy chỉ vì một lần trùng phùng nơi trạm xe buýt mà bước vào cuộc sống của nhau.

 

Để rồi, ngày ngày họ rong ruổi khắp những con phố ở Mahoro trên chiếc xe tải nhẹ, làm đủ loại việc vặt mà khách yêu cầu; dắt chó đi dạo, thăm nom người ốm, quét dọn vườn tược, sửa chữa chuồng chó… Hai con người với hai tâm hồn cô độc chưa bao giờ cố để hiểu nhau, càng chẳng đòi hỏi gì ở đối phương, chỉ lặng lẽ sống như vậy qua ngày. Bởi họ biết rằng, một ngày nào đấy, hạnh phúc nhất định sẽ lại tìm đến mình dưới một hình hài nào đó thật khác.', N'14 x 20.5', 2, 7, N'4', N'Q65YILU9.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (17, N'Điên toàn tập', N'dien-toan-tap', 19, NULL, N'Phúc Chi Nhi', 468, CAST(N'2019-12-10' AS Date), 139000, 111200, 100, N'Mệt mỏi, chán nản cả trong một thế giới nơi ông có cảm giác mình không còn chỗ đứng, bị tách khỏi những người thân thiết cứ lần lượt rời đi, Andrew Blake quyết định rời bỏ nước Anh và chức vụ đứng đầu công ty để đến xin làm quản gia tại một dinh thự ở nước Pháp, nơi ông đã gặp vợ mình trước đây.

 

Khi đến dinh thự Beauvillier, nơi không ai biết ông thực sự là ai, ông hy vọng sẽ tìm lại được dấu vết của quá khứ. Tuy nhiên, những con người, những tình huống vượt ngoài tầm kiểm soát của Andrew sẽ khiến ông buộc phải có một khởi đầu mới, ở cái tuổi tưởng như mọi thứ đã an bài.

 

Cuốn sách như một cái nháy mắt tinh nghịch về những khác biệt thú vị giữa sự điềm tĩnh Ăng lê và nét Pháp hào hoa phóng khoáng.

 

“Một vở hải kịch đầy ắp những bất ngờ thú vị”', N'14 x 20.5', 2, 15, N'1', N'ECCX4M3X.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (18, N'Không trở lại', N'khong-tro-lai', 20, NULL, N'Lan Young', 460, CAST(N'2019-03-19' AS Date), 170000, 141600, 100, N'"Không trở lại" đã được chuyển thể thành phim điện ảnh cùng tên vào năm 2016, với Tom Cruise thủ vai chính.

“Một chuyến phiêu lưu xuyên đất nước vô cùng kịch tính... một trong những tác phẩm xuất sắc và thông minh nhất của Lee Child... Cốt truyện chặt chẽ, đầy bất ngờ táo bạo, cùng một cái nhìn thấu suốt vào trong con người của Reacher.”
- Janet Maslin, The New York Times

NỘI DUNG:
Từ Nam Dakota tuyết trắng, Jack Reacher đã vượt qua cả quãng đường dài để đến Tây Bắc Virginia, gần Thủ đô Washington: trụ sở chính của Đội Đặc nhiệm 110, đơn vị anh từng chỉ huy.

Anh lặn lội chỉ vì một mục đích: gặp mặt chỉ huy mới của Đội 110, Susan Turner.

Nhưng chờ anh trong phòng chỉ huy không phải là Turner. Đột nhiên, chuyến về thăm đơn vị cũ bỗng chốc trở thành một cuộc chạy đua, với thời gian, với quân đội, FBI, cảnh sát Thủ đô và với bốn gã côn đồ không rõ danh tính, vừa để giải cứu Susan Turner và chính anh, đồng thời làm sáng tỏ một bí ẩn từ quá khứ.', N'15.5 x 24', 6, NULL, N'3', N'JWSKEAB8.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (19, N'tôi muốn chích 2', N'toi-muon-chich-2', 16, NULL, NULL, 120, CAST(N'2019-03-12' AS Date), 149900, 100000, 100, N'sf', N'14 x 20', 8, NULL, N'2', N'Q65YILU9.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (20, N'Vương quốc muôn loài (Tô màu)', N'vuong-quoc-muon-loai-to-mau', 21, NULL, N'Trang Hải', 96, CAST(N'2015-12-23' AS Date), 68000, 27880, 100, N'THE SUNDAY TIMES BESTSELLER

Cuốn sách tô màu được ưa chuộng nhất và bán chạy nhất tại Anh quốc !

 

Lớn lên nơi miền quê xứ Wales giữa muôn loài động thực vật, từ một xưởng vẽ bên bờ biển, Millie Marotta đã sáng tác vô vàn bức vẽ lấy cảm hứng từ cuộc sống hoang dã diệu kỳ xung quanh mình.

Giờ đây ta có thể biến những bức vẽ tuyệt đẹp ấy thành của riêng và sáng tạo ra một vương quốc muôn loài độc nhất vô nhị. Từ con bọ tha thiết đợi một bộ cánh óng ánh sặc sỡ đến chú cá voi khắc khoải chờ một ngôi nhà đại dương tráng lệ, cả một thế giới động thực vật cho ta thỏa sức khám phá. Hãy dùng bút màu trí tưởng tượng để đánh thức người nghệ sĩ trong bạn nhé !', N'25 x 25', 7, 8, N'5', N'N5J6KFG4.jpg', 1)
INSERT [dbo].[SanPham] ([Id], [TenSach], [Link], [Id_TacGia1], [Id_TacGia2], [DichGia], [Sotrang], [NgayPhatHanh], [GiaBan], [GiaKM], [SoLuong], [GioiThieu], [KichThuoc], [Id_DanhMuc], [Id_Danhmucnho], [NhaXuatBan], [Images], [TopHot]) VALUES (21, N'Thiên đường nhiệt đới (Tô màu)', N'thien-duong-nhiet-doi-to-mau', 21, NULL, N'Huyền Trang', 96, CAST(N'2015-12-23' AS Date), 68000, 27880, 100, N'TỪ TÁC GIẢ CUỐN SÁCH TÔ MÀU BÁN CHẠY NHẤT ANH QUỐC

Lớn lên nơi miền quê xứ Wales giữa muôn loài động thực vật, từ một xưởng vẽ bên bờ biển, Millie Marotta đã sáng tác vô vàn bức vẽ lấy cảm hứng từ cuộc sống hoang dã diệu kỳ xung quanh mình.

Sau khi thong dong dạo bước giữa miền thảo dã trong VƯƠNG QUỐC MUÔN LOÀI, hãy đừng ngần ngại dấn bước phiêu lưu vào thiên đường nhiệt đới hoang dại và bí ẩn trong cuốn sách tô màu sáng tạo thứ hai của Millie Marotta. Muôn vàn loài động thực vật kỳ thú lại một lần nữa hiện lên trong những bức tranh đơn sắc tỉ mỉ, khác lạ, tuyệt đẹp. Và chỉ chờ ta đặt bút, rừng mưa nhiệt đới sẽ lập tức cựa mình sống dậy, hân hoan, náo động trong bữa tiệc rộn rã sắc màu.', N'25 x 25', 7, 9, N'5', N'3NQI3C1T.jpg', 1)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (1, N'Yumemakura Baku', NULL, N'YUMEMAKURA BAKU sinh nam 1951 t?i Odawara, Kanagawa, là nhà van phiêu luu và khoa h?c vi?n tu?ng Nh?t B?n. Sau khi ra m?t van dàn nam 1977, ông dã xu?t b?n nhi?u tác ph?m n?i ti?ng. Nam 1989 ông nh?n du?c gi?i thu?ng ti?u thuy?t khoa h?c vi?n tu?ng Nh?t B?n cho ti?u thuy?t Su t? an trang khuy?t, t?i nam 1998 thì du?c trao gi?i Shibata Renzaburou l?n th? 11 cho tác ph?m Ð?nh núi thánh. Ông là thành viên c?a câu l?c b? các nhà van vi?t ti?u thuy?t khoa h?c vi?n tu?ng Nh?t B?n. Các tác ph?m c?a ông dã du?c d?ng thành phim di?n ?nh, truy?n hình và truy?n tranh. B? ti?u thuy?t Sa môn Không H?i th?t y?n b?y qu? Ð?i Ðu?ng t?ng du?c d?o di?n Tr?n Kh?i Ca chuy?n th? thành phim di?n ?nh Yêu miêu truy?n nam 2018.')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (2, N'Olivier Guez', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (3, N'Nguyễn Quang Riệu', NULL, N'Giáo su Nguy?n Quang Ri?u là nhà v?t lý thiên van du?c bi?t d?n nh? nh?ng công trình khoa h?c trong linh v?c Thiên van vô tuy?n (Radioastronomy), trong dó có công trình xác d?nh v? trí chính xác c?a v? n? trong chòm sao Cygnus X3. Sinh nam 1932 t?i H?i Phòng, nhà thiên van Nguy?n Quang Ri?u t?ng gi? các v? trí nhu: Giám d?c Nghiên c?u t?i Ðài thiên van Paris, Giám d?c Nghiên c?u Danh d? c?a Trung tâm Qu?c gia Kh?o c?u khoa h?c Pháp (CNRS). Nam 1973, ông dã du?c nh?n gi?i thu?ng c?a Vi?n Hàn lâm Khoa h?c Pháp. Nhà thiên van Nguy?n Quang Ri?u còn là m?t tác gi? n?i ti?ng. Ngoài các sách khoa h?c chuyên ngành dành cho gi?i nghiên c?u qu?c t?, ông còn vi?t nhi?u sách khoa h?c ph? thông dành cho b?n d?c tr? ? Vi?t Nam.')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (4, N'Mộ Nhan Ca', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (5, N'Rob Eastaway', NULL, N'Rob Eastaway là m?t tác gi? n?i ti?ng trong linh v?c toán h?c thu?ng th?c. Sinh tru?ng ? Anh và t?t nghi?p d?i h?c Cambridge danh ti?ng, ông dã dành r?t nhi?u tâm huy?t nh?m ph? bi?n toán h?c và logic d?n v?i t?t c? m?i ngu?i. Ông là giám d?c chuong trình toán h?c qu?c gia dành cho thi?u niên, Maths Inspiration, và t?ng là ch? t?ch Hi?p h?i Toán h?c Vuong qu?c Anh khóa 2007-2008. Ông dã cho xu?t b?n nh?ng cu?n sách d?c bi?t cu?n hút nhung vô cùng d? hi?u v? toán nhu Why Do Buses Come in Threes? hay Maths for Mums and Dads, du?c dông d?o d?c gi? d? m?i l?a tu?i vui thích dón nh?n. Nam 2017, Rob Eastaway du?c trao t?ng huân chuong Zeeman cho nh?ng thành t?u xu?t s?c c?a mình trong vi?c truy?n bá toán h?c.')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (6, N'Jeremy Wyndham', NULL, N'Jeremy Wyndham hi?n là giám d?c c?a m?t công ty nghiên c?u th? tru?ng hàng d?u ? London. Ông cung r?t say mê toán h?c và mong mu?n môn khoa h?c tuy?t v?i này du?c áp d?ng nhi?u hon trong cu?c s?ng.')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (7, N'Sato tsutomu', NULL, N'Sato Tsutomu sinh nam 19XX t?i m?t mi?n quê h?o lánh c?a Nh?t B?n. Anh t?ng xem th? lo?i khoa h?c vi?n tu?ng v? vu tr? là luong th?c d? s?ng qua th?i niên thi?u. Th?i thanh niên Sato Tsutomu chuy?n sang dam mê th? lo?i gi? tu?ng và ti?u thuy?t truy?n k?. Sau khi t?t nghi?p, anh bán linh h?n cho th? gi?i hi?n th?c trong vai trò m?t chi?n binh công s? (dù ch? là lính lác). Nam 2011, anh tr? l?i th? gi?i gi? tu?ng trên cuong v? m?t nhà van cho tu?i teen ra m?t mu?n màng.')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (8, N'Nguyễn Dương Quỳnh', NULL, N'Tên thật là Nguyễn Dương Quỳnh Anh. Sinh năm 1990, quê gốc tại Núi Thành, Quảng Nam.
 
Tốt nghiệp cử nhân Product Design tại Đại học Kỹ thuật Nanyang (Nanyang Technological University, Singapore).
Hiện đang công tác tại Đại học Bách khoa TP HCM.
Là fan hâm mộ của game Final Fantasy, Touhou Project, Nightwish và Hideaki Sorachi.')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (9, N'Zihua Nguyễn', NULL, N'Zihua Nguyễn Tên thật: Nguyễn Văn Toán Ngày sinh: 22/6/1989 Tốt nghiệp: Đại học Bách khoa Hà Nội Về bút danh Zihua Nguyễn: Zihua là chữ cái đầu của Zihuatanejo - tên một hòn đảo nằm bên bờ Thái Bình Dương, được nhắc đến trong bộ phim Shawshank Redemption. Hòn đảo này không có quá khứ, không có kỷ niệm, chỉ có hiện tại và tương lai. Facebook: https://www.facebook.com/ToanNguyenBK')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (10, N'Phan Việt', NULL, N'Phan Việt là một cái tên yêu thích của nhiều độc giả Việt Nam.
 Nhà văn nữ sinh năm 1978  này là tác giả các tập truyện ngắn Phù phiếm truyện (2005, Giải Nhì cuộc Vận động sáng tác văn học tuổi 20 lần III); Nước Mỹ, nước Mỹ (2009); tiểu thuyết Tiếng người (2008); và bộ sách Bất hạnh là một tài sản (2013). Sau khi tốt nghiệp Đại học Ngoại thương Hà Nội, chị lấy bằng tiến sỹ tại Đại học Chicago và hiện là phó giáo sư, giảng dạy đại học tại Mỹ.
 
Ngoài viết văn, Phan Việt còn viết báo, dịch, hiệu đính, và biên tập sách. Chị là đồng sáng lập tủ sách Cánh cửa mở rộng với nhà toán học Ngô Bảo Châu và Nhà xuất bản Trẻ nhằm dịch và giới thiệu sách hay tới bạn đọc Việt Nam.')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (11, N'Helene Delforge Quentin Greban', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (12, N'Trần Trọng Vũ', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (13, N'Đặng Hoàng Giang', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (14, N'Đặng Thùy Trâm', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (15, N'Blog của May', NULL, N'“Từ bài blog đầu tiên đăng trên một trang tin của báo Thanh Niên năm 2012, tình yêu vẫn luôn là nguồn cảm hứng bất tận trong các trang viết của May. Luôn luôn, đó là một tình yêu chân thực và lãng mạn, đơn giản mà sâu sắc. Dù với bất kỳ tính cách nào, những cô gái trong tình yêu của May vẫn luôn hiện lên thật kiêu hãnh và xứng được nâng niu.” Sách đã xuất bản: - Blog của May - Đừng chỉ hôn lên môi (Tản văn) - Blog của May - Anh là gia vị đời em (Tản văn) - Tro của hoa hồng (Tiểu thuyết) - Trường ca ế chồng (Tản văn viết chung) - Fanpage: Blog của May')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (16, N'BS Vân Hương', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (17, N'BS Lê Duy Minh', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (18, N'Miura Shion', NULL, NULL)
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (19, N'Gills Legardinier', NULL, N'Tác giả người Pháp sinh năm 1965')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (20, N'Lee Child', NULL, N'Lee Child là tác giả của mười một cuốn truyện trinh thám về nhân vật Jack Reacher, bao gồm cả những cuốn bestseller của New York Times, “Persuader” (tạm dịch là Kẻ thuyết phục) và “The Enemy” (Kẻ thù). Tác phẩm đầu tiên của ông “Killing Floor” (Sàn nhà thảm sát) đoạt cả hai giải Anthony và Barry dành cho truyện trinh thám đầu tay hay nhất. Bản quyền nước ngoài trong loạt truyện Jack Reacher được bán ra ba mươi chín quốc gia. Child người gốc Anh, nguyên là nhà văn viết cho truyền hình, sống tại New York và ở đây đang viết cuốn truyện thứ mười hai về Jack Reacher. “Nothing to lose” (Không còn gì để mất). Website của tác giả là: www.leechild.com')
INSERT [dbo].[TacGia] ([Id], [TenTacGia], [Link], [GioiThieu]) VALUES (21, N'Millie Marotta', N'millie-marotta', N'Nữ tác giả người Anh các cuốn sách tô màu bán chạy nhất trên thế giới trong năm 2015')
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_ChiTietHD_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
