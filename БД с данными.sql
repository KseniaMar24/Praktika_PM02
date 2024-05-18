GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[login] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[ip] [nvarchar](255) NULL,
	[lastenter] [date] NULL,
	[services] [nvarchar](255) NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[���������]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[���������](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[��������������������������������] [int] NULL,
	[����������] [int] NULL,
	[id_user] [int] NULL,
 CONSTRAINT [PK_���������] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[����������� ����� ��������� ��������]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[����������� ����� ��������� ��������](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[�������� ��������� ��������] [int] NULL,
	[�����] [money] NULL,
 CONSTRAINT [PK_����������� ����� ��������� ��������] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[������ �����������]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[������ �����������](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[��������] [nvarchar](255) NULL,
 CONSTRAINT [PK_������ � ������ �����������] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[������ ����������]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[������ ����������](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[����������] [int] NULL,
	[id_user] [int] NULL,
 CONSTRAINT [PK_������ ����������] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[�����������������������]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[�����������������������](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[insurance_name] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[insurance_address] [nvarchar](255) NULL,
	[insurance_inn] [int] NULL,
	[ipadress] [nvarchar](255) NULL,
	[insurance_p/c] [int] NULL,
	[insurance_bik] [int] NULL,
 CONSTRAINT [PK_�����������������������] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[�����]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[�����](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[patient] [int] NULL,
	[barcode] [varbinary](max) NULL,
	[date] [datetime] NULL,
	[accepted] [bit] NOT NULL,
	[status] [nvarchar](255) NULL,
	[finished] [datetime] NULL,
	[service] [int] NULL,
 CONSTRAINT [PK_�����] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[�������������]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[�������������](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service] [int] NULL,
	[result] [float] NULL,
	[analyzer] [int] NULL,
	[user] [int] NULL,
 CONSTRAINT [PK_�������������] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[�������]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[�������](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[login] [nvarchar](255) NULL,
	[pwd] [nvarchar](255) NULL,
	[birthdate] [date] NULL,
	[passport_s] [int] NULL,
	[passport_n] [int] NULL,
	[phone] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[social_sec_number] [int] NULL,
	[ein] [nvarchar](255) NULL,
	[��������� ��������] [int] NULL,
	[guid] [nvarchar](255) NULL,
 CONSTRAINT [PK_�������] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[����]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[����](
	[id_����] [int] NOT NULL,
	[������������] [nvarchar](50) NULL,
 CONSTRAINT [PK_����] PRIMARY KEY CLUSTERED 
(
	[id_����] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[������_�����������]    Script Date: 08.05.2024 8:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[������_�����������](
	[id] [int] NOT NULL,
	[������������] [varchar](max) NULL,
	[���������] [money] NULL,
	[���� ����������] [nvarchar](50) NULL,
	[������� ����������] [int] NULL,
 CONSTRAINT [PK_������_�����������] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (1, N'Clareta Hacking', N'4tzqHdkqzo4', N'4tzqHdkqzo4', N'147.231.50.234', NULL, N'[{"code":557},{"code":836},{"code":287}]', 1)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (2, N'Northrop Mably', N'nmably1', N'ukM0e6', N'22.32.15.211', NULL, N'[{"code":855},{"code":619},{"code":557},{"code":836},{"code":548}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (3, N'Fabian Rolf', N'frolf2', N'7QpCwac0yi', N'113.92.142.29', NULL, N'[{"code":543},{"code":836}]', 1)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (4, N'Lauree Raden', N'lraden3', N'5Ydp2mz', N'39.24.146.52', NULL, N'[{"code":855},{"code":258}]', 1)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (5, N'Barby Follos', N'bfollos4', N'ckmAJPQV', N'87.232.97.3', NULL, N'[{"code":543},{"code":415},{"code":619},{"code":557}]', 1)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (6, N'Mile Enterle', N'menterle5', N'0PRom6i', N'85.121.209.6', NULL, N'[{"code":557},{"code":836},{"code":229}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (7, N'Midge Peaker', N'mpeaker6', N'0Tc5oRc', N'196.39.132.128', NULL, N'[{"code":287},{"code":619},{"code":548},{"code":346}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (8, N'Manon Robichon', N'mrobichon7', N'LEwEjMlmE5X', N'143.159.207.105', NULL, N'[{"code":415},{"code":311},{"code":176},{"code":855}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (9, N'Stavro Robken', N'srobken8', N'Cbmj3Yi', N'12.154.73.196', NULL, N'[{"code":323},{"code":548},{"code":346}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (10, N'Bryan Tidmas', N'btidmas9', N'dYDHbBQfK', N'24.42.134.21', NULL, N'[{"code":229},{"code":346},{"code":501},{"code":548}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (11, N'Jeannette Fussie', N'jfussiea', N'EGxXuLQ9', N'98.194.112.137', NULL, N'[{"code":287}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (12, N'Stephen Antonacci', N'santonaccib', N'YcXAhY3Pja', N'198.146.255.15', NULL, N'[{"code":619},{"code":258},{"code":229},{"code":557},{"code":797}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (13, N'Niccolo Bountiff', N'nbountiffc', N'5xfyjS9ZULGA', N'231.78.246.229', NULL, N'[{"code":323},{"code":311},{"code":557}]', 1)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (14, N'Clemente Benjefield', N'cbenjefieldd', N'tQOsP0ei9TuD', N'88.126.93.246', NULL, N'[{"code":855},{"code":176},{"code":176},{"code":855}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (15, N'Orlan Corbyn', N'ocorbyne', N'bG1ZIzwIoU', N'232.175.48.179', NULL, N'[{"code":229},{"code":836},{"code":287},{"code":619}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (16, N'Coreen Stickins', N'cstickinsf', N'QRYADbgNj', N'64.30.175.158', NULL, N'[{"code":557}]', 1)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (17, N'Daveta Clarage', N'dclarageg', N'Yp59ZIDnWe', N'139.88.229.111', NULL, N'[{"code":346},{"code":836},{"code":346}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (18, N'Javier McCawley', N'jmccawleyh', N'g58zLcmCYON', N'14.199.67.32', NULL, N'[{"code":619},{"code":258}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (19, N'Daile Band', N'dbandi', N'yFAaYuVW', N'206.105.148.56', NULL, N'[{"code":176},{"code":543},{"code":855},{"code":258}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (20, N'Angil Buttery', N'abutteryj', N'ttOFbWWGtD', N'192.158.7.138', NULL, N'[{"code":323},{"code":855},{"code":659},{"code":287}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (21, N'Kyla Kinman', N'kkinmank', N'qUr6fdWP6L5G', N'134.99.243.113', NULL, N'[{"code":346},{"code":855},{"code":323},{"code":557},{"code":501}]', 1)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (22, N'Selena Skepper', N'sskepperl', N'jHYN0v3', N'52.90.89.126', NULL, N'[{"code":855},{"code":287}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (23, N'Alyson Yeoland', N'ayeolandm', N'QQezRBV9', N'239.7.55.187', NULL, N'[{"code":836},{"code":836},{"code":229},{"code":258},{"code":836}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (24, N'Claudie Speeding', N'cspeedingn', N'UCLYITfw2Vo', N'127.37.194.127', NULL, N'[{"code":548},{"code":557},{"code":176}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (25, N'Alaric Scarisbrick', N'ascarisbricko', N'fzBcv6GbyCp', N'97.227.15.172', NULL, N'[{"code":543},{"code":836}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (26, N'Marie Thurby', N'mthurbyp', N'wg0uIskqei', N'94.70.148.135', NULL, N'[{"code":548},{"code":855}]', 1)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (27, N'Cloe Roxbrough', N'croxbroughq', N'67CVVym', N'185.110.201.36', NULL, N'[{"code":501},{"code":797},{"code":797}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (28, N'Pegeen McCotter', N'pmccotterr', N'QG5tdzRpGZJ2', N'22.179.187.229', NULL, N'[{"code":176},{"code":855}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (29, N'Iggie Calleja', N'icallejas', N'aeDvZk8o9', N'67.237.123.227', NULL, N'[{"code":836},{"code":176},{"code":619},{"code":258}]', 2)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (30, N'Nelle Brosch', N'nbroscht', N'DmPJt2', N'251.1.59.65', NULL, N'[{"code":346}]', 3)
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (31, N'Shae Allsepp', N'sallseppu', N't0ko0854Cpvv', N'88.20.74.85', NULL, N'[{"code":548},{"code":229},{"code":258},{"code":619}]', 2)


GO
INSERT [dbo].[users] ([id], [name], [login], [password], [ip], [lastenter], [services], [type]) VALUES (100, N'Vance Boots', N'vboots2r', N'bgJfSDEVEQm6', N'91.73.40.29', CAST(N'2020-07-09' AS Date), N'[{"code":548},{"code":346},{"code":311}]', 2)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[������ �����������] ON 

INSERT [dbo].[������ �����������] ([id], [��������]) VALUES (1, N'1')
SET IDENTITY_INSERT [dbo].[������ �����������] OFF
GO
SET IDENTITY_INSERT [dbo].[�����������������������] ON 

INSERT [dbo].[�����������������������] ([id], [insurance_name], [country], [insurance_address], [insurance_inn], [ipadress], [insurance_p/c], [insurance_bik]) VALUES (1, N'1', N'1', N'1', 1, N'1', 1, 1)
SET IDENTITY_INSERT [dbo].[�����������������������] OFF
GO
SET IDENTITY_INSERT [dbo].[�����] ON 

INSERT [dbo].[�����] ([id], [patient], [barcode], [date], [accepted], [status], [finished], [service]) VALUES (5, 3, NULL, CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'1', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[�����] ([id], [patient], [barcode], [date], [accepted], [status], [finished], [service]) VALUES (6, NULL, 0x313233, CAST(N'2024-05-07T18:02:54.123' AS DateTime), 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[�����] OFF
GO
SET IDENTITY_INSERT [dbo].[�������������] ON 

INSERT [dbo].[�������������] ([id], [service], [result], [analyzer], [user]) VALUES (5, 176, 1, 1, 2)
SET IDENTITY_INSERT [dbo].[�������������] OFF
GO
SET IDENTITY_INSERT [dbo].[�������] ON 

INSERT [dbo].[�������] ([id], [Name], [login], [pwd], [birthdate], [passport_s], [passport_n], [phone], [email], [social_sec_number], [ein], [��������� ��������], [guid]) VALUES (3, N'1', N'1', N'1', CAST(N'2001-01-01' AS Date), 1, 1, N'1', N'1', 1, N'1', 1, N'1')
SET IDENTITY_INSERT [dbo].[�������] OFF
GO
INSERT [dbo].[����] ([id_����], [������������]) VALUES (1, N'�������������')
INSERT [dbo].[����] ([id_����], [������������]) VALUES (2, N'��������')
INSERT [dbo].[����] ([id_����], [������������]) VALUES (3, N'���������')
GO
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (176, N'��������� �����', 102.8500, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (229, N'����', 341.7800, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (258, N'���������', 143.2200, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (287, N'����������� �������������', 290.1100, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (311, N'�������', 361.8800, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (323, N'�������', 447.6500, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (346, N'����� �����', 396.0300, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (415, N'������� �����', 419.9000, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (501, N'������� �', 176.8300, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (543, N'������� �', 289.9900, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (548, N'��������', 234.0900, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (557, N'���', 490.7700, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (619, N'TSH', 262.7100, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (659, N'������� RPR', 443.6600, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (797, N'�� � �� � ��� 1/2', 370.6200, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (836, N'������', 105.3200, NULL, NULL)
INSERT [dbo].[������_�����������] ([id], [������������], [���������], [���� ����������], [������� ����������]) VALUES (855, N'����� IgM', 209.7800, NULL, NULL)
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_����] FOREIGN KEY([type])
REFERENCES [dbo].[����] ([id_����])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_����]
GO
ALTER TABLE [dbo].[���������]  WITH CHECK ADD  CONSTRAINT [FK_���������_users] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[���������] CHECK CONSTRAINT [FK_���������_users]
GO
ALTER TABLE [dbo].[���������]  WITH CHECK ADD  CONSTRAINT [FK_���������_����������� ����� ��������� ��������] FOREIGN KEY([��������������������������������])
REFERENCES [dbo].[����������� ����� ��������� ��������] ([id])
GO
ALTER TABLE [dbo].[���������] CHECK CONSTRAINT [FK_���������_����������� ����� ��������� ��������]
GO
ALTER TABLE [dbo].[����������� ����� ��������� ��������]  WITH CHECK ADD  CONSTRAINT [FK_����������� ����� ��������� ��������_�����������������������] FOREIGN KEY([�������� ��������� ��������])
REFERENCES [dbo].[�����������������������] ([id])
GO
ALTER TABLE [dbo].[����������� ����� ��������� ��������] CHECK CONSTRAINT [FK_����������� ����� ��������� ��������_�����������������������]
GO
ALTER TABLE [dbo].[������ ����������]  WITH CHECK ADD  CONSTRAINT [FK_������ ����������_users] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[������ ����������] CHECK CONSTRAINT [FK_������ ����������_users]
GO
ALTER TABLE [dbo].[������ ����������]  WITH CHECK ADD  CONSTRAINT [FK_������ ����������_������_�����������] FOREIGN KEY([����������])
REFERENCES [dbo].[������_�����������] ([id])
GO
ALTER TABLE [dbo].[������ ����������] CHECK CONSTRAINT [FK_������ ����������_������_�����������]
GO
ALTER TABLE [dbo].[�����]  WITH CHECK ADD  CONSTRAINT [FK_�����_�������������] FOREIGN KEY([service])
REFERENCES [dbo].[�������������] ([id])
GO
ALTER TABLE [dbo].[�����] CHECK CONSTRAINT [FK_�����_�������������]
GO
ALTER TABLE [dbo].[�����]  WITH CHECK ADD  CONSTRAINT [FK_�����_�������] FOREIGN KEY([patient])
REFERENCES [dbo].[�������] ([id])
GO
ALTER TABLE [dbo].[�����] CHECK CONSTRAINT [FK_�����_�������]
GO
ALTER TABLE [dbo].[�������������]  WITH CHECK ADD  CONSTRAINT [FK_�������������_������ �����������] FOREIGN KEY([analyzer])
REFERENCES [dbo].[������ �����������] ([id])
GO
ALTER TABLE [dbo].[�������������] CHECK CONSTRAINT [FK_�������������_������ �����������]
GO
ALTER TABLE [dbo].[�������������]  WITH CHECK ADD  CONSTRAINT [FK_�������������_������_�����������] FOREIGN KEY([service])
REFERENCES [dbo].[������_�����������] ([id])
GO
ALTER TABLE [dbo].[�������������] CHECK CONSTRAINT [FK_�������������_������_�����������]
GO
ALTER TABLE [dbo].[�������]  WITH CHECK ADD  CONSTRAINT [FK_�������_�����������������������] FOREIGN KEY([��������� ��������])
REFERENCES [dbo].[�����������������������] ([id])
GO
ALTER TABLE [dbo].[�������] CHECK CONSTRAINT [FK_�������_�����������������������]
GO
USE [master]
GO
ALTER DATABASE [Labarator20] SET  READ_WRITE 
GO
