USE [master]
GO
/****** Object:  Database [Furniture]    Script Date: 20.03.2022 12:20:25 ******/
CREATE DATABASE [Furniture]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Furniture', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Furniture.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Furniture_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Furniture_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Furniture] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Furniture].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Furniture] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Furniture] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Furniture] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Furniture] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Furniture] SET ARITHABORT OFF 
GO
ALTER DATABASE [Furniture] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Furniture] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Furniture] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Furniture] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Furniture] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Furniture] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Furniture] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Furniture] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Furniture] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Furniture] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Furniture] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Furniture] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Furniture] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Furniture] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Furniture] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Furniture] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Furniture] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Furniture] SET RECOVERY FULL 
GO
ALTER DATABASE [Furniture] SET  MULTI_USER 
GO
ALTER DATABASE [Furniture] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Furniture] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Furniture] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Furniture] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Furniture] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Furniture] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Furniture', N'ON'
GO
ALTER DATABASE [Furniture] SET QUERY_STORE = OFF
GO
USE [Furniture]
GO
/****** Object:  User [User0]    Script Date: 20.03.2022 12:20:25 ******/
CREATE USER [User0] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 20.03.2022 12:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 20.03.2022 12:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ManagerId] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 20.03.2022 12:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[ClientId] [int] NOT NULL,
	[ManagerId] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.03.2022 12:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MakePrice] [decimal](12, 3) NOT NULL,
	[SellPrice] [decimal](12, 3) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
	[SellAmount] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 20.03.2022 12:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOrder](
	[ProductOrderId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_ProductOrder] PRIMARY KEY CLUSTERED 
(
	[ProductOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 20.03.2022 12:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeId] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20.03.2022 12:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (1, N'Кузнецов', N'Григорий', N'Куприянович', N'89055371676')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (2, N'Симонов', N'Сергей', N'Владленович', N'89867720945')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (3, N'Мухина', N'Таисия', N'Онисимовна', N'89055371676')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (4, N'Николаева', N'Алевтина', N'Игоревна', N'89319597543')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (5, N'Андреева', N'Варвара', N'Фёдоровна', N'89727448486')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (6, N'Исаева', N'Надежда', N'Парфеньевна', N'89883250162')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (7, N'Мартынов', N'Даниил', N'Алексеевич', N'89598750223')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (8, N'Веселов', N'Анатолий', N'Антонинович', N'89777127821')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (9, N'Кулагина', N'Венера', N'Евгеньевна', N'89812431315')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (10, N'Новиков', N'Дмитрий', N'Русланович', N'89377358015')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (11, N'Кондратьева', N'Юлия', N'Якововна', N'89323575482')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (12, N'Русаков', N'Илья', N'Богданович', N'89105877488')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (13, N'Шаров', N'Серапион', N'Павлович', N'89055371676')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (14, N'Быков', N'Сергей', N'Васильевич', N'89594592565')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (15, N'Фокина', N'Ульяна', N'Антоновна', N'89044299239')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (16, N'Федосеев', N'Матвей', N'Никитевич', N'89504911639')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (17, N'Родионов', N'Игорь', N'Вячеславович', N'89972408928')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (18, N'Вишнякова', N'Эмилия', N'Альбертовна', N'89675176382')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (19, N'Степанова', N'Жанна', N'Геласьевна', N'89339360971')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (20, N'Веселова', N'Любовь', N'Аркадьевна', N'89390747684')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (21, N'Гурьев', N'Альвиан', N'Варламович', N'89541580319')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (22, N'Казакова', N'Василиса', N'Ростиславовна', N'89387779602')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (23, N'Гусева', N'Марфа', N'Ростиславовна', N'89598750223')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (24, N'Куликов', N'Юрий', N'Мэлсович', N'89763654824')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (25, N'Муравьёв', N'Василий', N'Анатольевич', N'89323575482')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (26, N'Терентьева', N'София', N'Ивановна', N'89319557393')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (27, N'Шашкова', N'Людмила', N'Владимировна', N'89590106217')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (28, N'Семёнов', N'Богдан', N'Степанович', N'89294417686')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (29, N'Гаврилов', N'Федосей', N'Ростиславович', N'89617425872')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (30, N'Тарасова', N'Елизавета', N'Мартыновна', N'89731755240')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (31, N'Фёдорова', N'Венера', N'Вадимовна', N'89777127821')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (32, N'Юдин', N'Лаврентий', N'Валерьевич', N'89680823215')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (33, N'Гурьев', N'Валерий', N'Мэлорович', N'89078260395')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (34, N'Уваров', N'Руслан', N'Евгеньевич', N'89515859752')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (35, N'Игнатов', N'Матвей', N'Ефимович', N'89563855275')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (36, N'Колесникова', N'Надежда', N'Константиновна', N'89323575482')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (37, N'Дмитриев', N'Василий', N'Викторович', N'89650071928')
INSERT [dbo].[Client] ([ClientId], [Surname], [Name], [Patronymic], [Phone]) VALUES (38, N'Шарова', N'Ангелина', N'Вадимовна', N'89384822574')
GO
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([ManagerId], [Surname], [Name], [Patronymic]) VALUES (1, N'Шакирова', N'Эльза', N'Алексеевна')
INSERT [dbo].[Manager] ([ManagerId], [Surname], [Name], [Patronymic]) VALUES (2, N'Иванова', N'Алина', N'Петровна')
INSERT [dbo].[Manager] ([ManagerId], [Surname], [Name], [Patronymic]) VALUES (3, N'Курагина', N'Ольга', N'Борисовна')
INSERT [dbo].[Manager] ([ManagerId], [Surname], [Name], [Patronymic]) VALUES (4, N'Лопухова', N'Анастасия', N'Васильевна')
SET IDENTITY_INSERT [dbo].[Manager] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (1, CAST(N'2018-01-09' AS Date), 1, 1)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (2, CAST(N'2018-01-09' AS Date), 3, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (3, CAST(N'2018-01-10' AS Date), 4, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (4, CAST(N'2018-01-10' AS Date), 5, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (5, CAST(N'2018-01-11' AS Date), 6, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (6, CAST(N'2018-01-11' AS Date), 7, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (7, CAST(N'2018-01-15' AS Date), 8, 4)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (8, CAST(N'2018-01-15' AS Date), 10, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (9, CAST(N'2018-01-16' AS Date), 9, 1)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (10, CAST(N'2018-01-16' AS Date), 6, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (11, CAST(N'2018-01-16' AS Date), 11, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (12, CAST(N'2018-01-17' AS Date), 12, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (13, CAST(N'2018-01-21' AS Date), 14, 4)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (14, CAST(N'2018-01-21' AS Date), 15, 1)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (15, CAST(N'2018-01-25' AS Date), 16, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (16, CAST(N'2018-01-25' AS Date), 17, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (17, CAST(N'2018-01-28' AS Date), 18, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (18, CAST(N'2018-01-31' AS Date), 19, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (19, CAST(N'2018-02-02' AS Date), 20, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (20, CAST(N'2018-02-04' AS Date), 2, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (21, CAST(N'2018-02-04' AS Date), 21, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (22, CAST(N'2018-02-07' AS Date), 13, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (23, CAST(N'2018-02-11' AS Date), 23, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (24, CAST(N'2018-02-12' AS Date), 24, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (25, CAST(N'2018-02-12' AS Date), 25, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (26, CAST(N'2018-02-12' AS Date), 26, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (27, CAST(N'2018-02-15' AS Date), 27, 1)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (28, CAST(N'2018-02-15' AS Date), 28, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (29, CAST(N'2018-02-19' AS Date), 2, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (30, CAST(N'2018-02-22' AS Date), 29, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (31, CAST(N'2018-02-25' AS Date), 30, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (32, CAST(N'2018-03-01' AS Date), 31, 2)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (33, CAST(N'2018-03-06' AS Date), 32, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (34, CAST(N'2018-03-06' AS Date), 13, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (35, CAST(N'2018-03-09' AS Date), 33, 1)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (36, CAST(N'2018-03-13' AS Date), 34, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (37, CAST(N'2018-03-15' AS Date), 35, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (38, CAST(N'2018-03-16' AS Date), 35, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (39, CAST(N'2018-03-17' AS Date), 36, 1)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (40, CAST(N'2018-03-19' AS Date), 37, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (41, CAST(N'2018-03-15' AS Date), 35, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (42, CAST(N'2018-03-16' AS Date), 35, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (43, CAST(N'2018-03-17' AS Date), 36, 1)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (44, CAST(N'2018-03-19' AS Date), 37, 3)
INSERT [dbo].[Order] ([OrderId], [OrderDate], [ClientId], [ManagerId]) VALUES (45, CAST(N'2018-03-19' AS Date), 38, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (1, 2, N'3213', CAST(3.000 AS Decimal(12, 3)), CAST(12.000 AS Decimal(12, 3)), N'048f98b40690b44714aedf326a9042df.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (2, 2, N'Афина СБ-2236 Пуфик', CAST(848.000 AS Decimal(12, 3)), CAST(2120.000 AS Decimal(12, 3)), N'2.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (3, 3, N'Макарена СБ-2615 Стенка', CAST(10576.000 AS Decimal(12, 3)), CAST(26440.000 AS Decimal(12, 3)), N'3.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (4, 4, N'Амалия СБ-999/1 Кровать', CAST(5649.600 AS Decimal(12, 3)), CAST(14124.000 AS Decimal(12, 3)), N'4.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (5, 5, N'Лира СБ-2276 Прихожая', CAST(6392.000 AS Decimal(12, 3)), CAST(15980.000 AS Decimal(12, 3)), N'5.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (6, 6, N'Ника СБ-2527 Кровать 900', CAST(1992.000 AS Decimal(12, 3)), CAST(4980.000 AS Decimal(12, 3)), N'6.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (7, 7, N'Дионис СБ-2356 Стол компьютерный', CAST(3592.000 AS Decimal(12, 3)), CAST(8980.000 AS Decimal(12, 3)), N'7.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (8, 8, N'Тумба с раковиной Акватон Америна 60', CAST(4158.400 AS Decimal(12, 3)), CAST(10396.000 AS Decimal(12, 3)), N'8.jpg', 3)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (9, 3, N'Прадо СБ-2224 Стенка', CAST(7036.000 AS Decimal(12, 3)), CAST(17590.000 AS Decimal(12, 3)), N'9.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (10, 2, N'Корсика диван', CAST(16240.000 AS Decimal(12, 3)), CAST(40600.000 AS Decimal(12, 3)), N'10.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (11, 4, N'Палермо СБ-2060 Шкаф-купе ', CAST(10516.000 AS Decimal(12, 3)), CAST(26290.000 AS Decimal(12, 3)), N'11.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (12, 1, N'Орион СБ-2520/1 Табурет', CAST(490.000 AS Decimal(12, 3)), CAST(1225.000 AS Decimal(12, 3)), N'12.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (13, 1, N'Ангелина-200 Кухонный гарнитур ', CAST(9490.000 AS Decimal(12, 3)), CAST(23725.000 AS Decimal(12, 3)), N'13.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (14, 2, N'Версаль СБ-2320 Пуфик', CAST(1172.000 AS Decimal(12, 3)), CAST(2930.000 AS Decimal(12, 3)), N'14.jpg', 3)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (15, 3, N'Корсика диван-кровать', CAST(15841.600 AS Decimal(12, 3)), CAST(39604.000 AS Decimal(12, 3)), N'15.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (16, 5, N'Палермо СБ-2060 Шкаф-купе ', CAST(10116.000 AS Decimal(12, 3)), CAST(25290.000 AS Decimal(12, 3)), N'16.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (17, 6, N'Симба СН-13 Кровать 2-х ярусная', CAST(10605.200 AS Decimal(12, 3)), CAST(26513.000 AS Decimal(12, 3)), N'17.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (18, 2, N'Клео СБ-2019 Пуфик', CAST(1000.000 AS Decimal(12, 3)), CAST(2500.000 AS Decimal(12, 3)), N'18.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (19, 4, N'Кито СБ-2347 Комод', CAST(2120.000 AS Decimal(12, 3)), CAST(5300.000 AS Decimal(12, 3)), N'19.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (20, 1, N'Столешница К1', CAST(1072.000 AS Decimal(12, 3)), CAST(2680.000 AS Decimal(12, 3)), N'20.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (21, 5, N'Медея СБ-2454 Комод', CAST(3992.000 AS Decimal(12, 3)), CAST(9980.000 AS Decimal(12, 3)), N'21.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (22, 4, N'Ника СБ-2528 Тумба прикроватная', CAST(1192.000 AS Decimal(12, 3)), CAST(2980.000 AS Decimal(12, 3)), N'22.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (23, 2, N'Кристина СБ-1831 Пуфик', CAST(1064.000 AS Decimal(12, 3)), CAST(2660.000 AS Decimal(12, 3)), N'23.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (24, 2, N'Гретта СБ-1635 Пуфик', CAST(1256.000 AS Decimal(12, 3)), CAST(3140.000 AS Decimal(12, 3)), N'24.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (25, 7, N'Персей СБ-1987 Стол', CAST(4466.800 AS Decimal(12, 3)), CAST(11167.000 AS Decimal(12, 3)), N'25.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (26, 6, N'Мамбо СБ-2752 Комод', CAST(3592.000 AS Decimal(12, 3)), CAST(8980.000 AS Decimal(12, 3)), N'26.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (27, 5, N'Афина СБ-2245 Обувница ', CAST(2652.000 AS Decimal(12, 3)), CAST(6630.000 AS Decimal(12, 3)), N'27.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (28, 3, N'Ронда СБ-2742 Шкаф 3-х дверный', CAST(6500.000 AS Decimal(12, 3)), CAST(16250.000 AS Decimal(12, 3)), N'28.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (29, 8, N'Тумба с раковиной СанТа Омега Люкс 90', CAST(5294.000 AS Decimal(12, 3)), CAST(13235.000 AS Decimal(12, 3)), N'29.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (30, 4, N'Сидней СБ-2582 Зеркало', CAST(712.000 AS Decimal(12, 3)), CAST(1780.000 AS Decimal(12, 3)), N'30.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (31, 7, N'Дионис СБ-2447 Стеллаж', CAST(1992.000 AS Decimal(12, 3)), CAST(4980.000 AS Decimal(12, 3)), N'31.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (32, 6, N'Ника СБ-2545 Шкаф-купе', CAST(4392.000 AS Decimal(12, 3)), CAST(10980.000 AS Decimal(12, 3)), N'32.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (33, 1, N'Оля М2 Витрина', CAST(5493.600 AS Decimal(12, 3)), CAST(13734.000 AS Decimal(12, 3)), N'33.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (34, 6, N'Персей СБ-1987 Стол', CAST(4466.800 AS Decimal(12, 3)), CAST(11167.000 AS Decimal(12, 3)), N'34.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (35, 5, N'Ника СБ-2336 Вешалка', CAST(1192.000 AS Decimal(12, 3)), CAST(2980.000 AS Decimal(12, 3)), N'35.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (36, 8, N'Шкаф-пенал СанТа Стандарт 50', CAST(2646.000 AS Decimal(12, 3)), CAST(6615.000 AS Decimal(12, 3)), N'36.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (37, 2, N'Афина СБ-2237 Пуфик 1180', CAST(1244.000 AS Decimal(12, 3)), CAST(3110.000 AS Decimal(12, 3)), N'37.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (38, 7, N'Палермо СБ-2060 Шкаф-купе ', CAST(10516.000 AS Decimal(12, 3)), CAST(26290.000 AS Decimal(12, 3)), N'38.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (39, 4, N'Кито СБ-2163 Стеллаж', CAST(720.000 AS Decimal(12, 3)), CAST(1800.000 AS Decimal(12, 3)), N'39.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (40, 6, N'Ника СБ-2343 Полка', CAST(792.000 AS Decimal(12, 3)), CAST(1980.000 AS Decimal(12, 3)), N'40.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (41, 3, N'Терра СБ-2797 Шкаф 3-х дверный Венге', CAST(3110.800 AS Decimal(12, 3)), CAST(7777.000 AS Decimal(12, 3)), N'41.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (42, 5, N'Сидней СБ-2587 Стеллаж', CAST(1592.000 AS Decimal(12, 3)), CAST(3980.000 AS Decimal(12, 3)), N'42.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (43, 1, N'Оля М7 Полка торцевая', CAST(2240.000 AS Decimal(12, 3)), CAST(5600.000 AS Decimal(12, 3)), N'43.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (44, 8, N'Шкаф-пенал Misty Балтика 35 ', CAST(1572.000 AS Decimal(12, 3)), CAST(3930.000 AS Decimal(12, 3)), N'44.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (45, 5, N'Сидней СБ-2582 Зеркало', CAST(712.000 AS Decimal(12, 3)), CAST(1780.000 AS Decimal(12, 3)), N'45.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (46, 7, N'Тесса СБ-2737 Стеллаж со столом ', CAST(4092.400 AS Decimal(12, 3)), CAST(10231.000 AS Decimal(12, 3)), N'46.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (47, 3, N'Фокус СБ-2293 Стол раскладной', CAST(3356.000 AS Decimal(12, 3)), CAST(8390.000 AS Decimal(12, 3)), N'47.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (48, 8, N'Зеркало-шкаф СанТа Стандарт 80', CAST(2055.200 AS Decimal(12, 3)), CAST(5138.000 AS Decimal(12, 3)), N'48.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (49, 7, N'Ника СБ-2342 Полка', CAST(792.000 AS Decimal(12, 3)), CAST(1980.000 AS Decimal(12, 3)), N'49.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (50, 6, N'Мамбо СБ-2794 Стеллаж', CAST(4392.000 AS Decimal(12, 3)), CAST(10980.000 AS Decimal(12, 3)), N'50.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (51, 8, N'Зеркало-шкаф СанТа Омега', CAST(2038.400 AS Decimal(12, 3)), CAST(5096.000 AS Decimal(12, 3)), N'51.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (52, 1, N'Надежда НП-260 Полка', CAST(935.200 AS Decimal(12, 3)), CAST(2338.000 AS Decimal(12, 3)), N'52.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (53, 7, N'Стул ИЗИДА', CAST(876.000 AS Decimal(12, 3)), CAST(2190.000 AS Decimal(12, 3)), N'53.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (54, 3, N'Берлин СБ-2600 Тумба ТВ', CAST(3326.800 AS Decimal(12, 3)), CAST(8317.000 AS Decimal(12, 3)), N'54.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (55, 8, N'Тумба СанТа Омега ТН 60', CAST(1836.000 AS Decimal(12, 3)), CAST(4590.000 AS Decimal(12, 3)), N'55.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (56, 4, N'Полка Дионис СБ-2364', CAST(472.000 AS Decimal(12, 3)), CAST(1180.000 AS Decimal(12, 3)), N'56.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (57, 2, N'13123', CAST(2131.000 AS Decimal(12, 3)), CAST(123.000 AS Decimal(12, 3)), N'2 (1).jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (58, 5, N'Абоба', CAST(0.000 AS Decimal(12, 3)), CAST(0.000 AS Decimal(12, 3)), N'default.png', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (59, 5, N'21312', CAST(0.000 AS Decimal(12, 3)), CAST(0.000 AS Decimal(12, 3)), N'default.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (1057, 7, N'ТоварДорогой', CAST(5.000 AS Decimal(12, 3)), CAST(1.000 AS Decimal(12, 3)), N'02.jpg', 0)
INSERT [dbo].[Product] ([ProductId], [ProductTypeId], [Name], [MakePrice], [SellPrice], [Photo], [SellAmount]) VALUES (1058, 7, N'авыфа', CAST(0.000 AS Decimal(12, 3)), CAST(0.000 AS Decimal(12, 3)), N'0048f98b40690b44714aedf326a9042df.jpg', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductOrder] ON 

INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (1, 2, 1, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (2, 3, 1, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (3, 5, 2, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (4, 6, 2, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (5, 7, 3, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (6, 8, 4, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (7, 8, 5, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (8, 8, 6, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (9, 10, 7, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (10, 11, 7, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (11, 12, 8, 4)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (12, 12, 9, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (13, 14, 10, 5)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (14, 14, 11, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (15, 14, 12, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (16, 15, 12, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (17, 17, 13, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (18, 18, 14, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (19, 20, 18, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (20, 21, 19, 4)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (21, 22, 20, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (22, 22, 21, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (23, 23, 21, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (24, 25, 22, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (25, 26, 22, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (26, 28, 23, 4)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (27, 29, 24, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (28, 31, 26, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (29, 32, 26, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (30, 34, 27, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (31, 34, 28, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (32, 35, 29, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (33, 35, 30, 4)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (34, 36, 31, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (35, 37, 32, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (36, 39, 33, 0)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (37, 41, 34, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (38, 42, 34, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (39, 43, 35, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (40, 45, 36, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (41, 46, 36, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (42, 47, 37, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (43, 48, 38, 3)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (44, 50, 39, 1)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (45, 50, 40, 4)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (46, 52, 41, 0)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (47, 54, 42, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (48, 54, 43, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (49, 56, 44, 2)
INSERT [dbo].[ProductOrder] ([ProductOrderId], [ProductId], [OrderId], [Amount]) VALUES (50, 56, 45, 4)
SET IDENTITY_INSERT [dbo].[ProductOrder] OFF
GO
INSERT [dbo].[ProductType] ([ProductTypeId], [Name]) VALUES (1, N'Мебель для кухни')
INSERT [dbo].[ProductType] ([ProductTypeId], [Name]) VALUES (2, N'Мягкая мебель')
INSERT [dbo].[ProductType] ([ProductTypeId], [Name]) VALUES (3, N'Мебель для гостиной')
INSERT [dbo].[ProductType] ([ProductTypeId], [Name]) VALUES (4, N'Мебель для спальни')
INSERT [dbo].[ProductType] ([ProductTypeId], [Name]) VALUES (5, N'Мебель для прихожей')
INSERT [dbo].[ProductType] ([ProductTypeId], [Name]) VALUES (6, N'Мебель для детской')
INSERT [dbo].[ProductType] ([ProductTypeId], [Name]) VALUES (7, N'Мебель для офиса')
INSERT [dbo].[ProductType] ([ProductTypeId], [Name]) VALUES (8, N'Мебель для ванной')
GO
INSERT [dbo].[User] ([UserId], [Login], [Password]) VALUES (1, N'manager', N'q1w2e3')
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Photo]  DEFAULT (N'default.jpg') FOR [Photo]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Manager] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Manager] ([ManagerId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Manager]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([ProductTypeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [FK_ProductOrder_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [FK_ProductOrder_Order]
GO
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [FK_ProductOrder_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [FK_ProductOrder_Product]
GO
/****** Object:  Trigger [dbo].[SellAmountAdd]    Script Date: 20.03.2022 12:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[SellAmountAdd] on [dbo].[ProductOrder]
after insert as 
update Product set SellAmount=SellAmount+1
where ProductId = (select ProductId from inserted)
GO
ALTER TABLE [dbo].[ProductOrder] ENABLE TRIGGER [SellAmountAdd]
GO
USE [master]
GO
ALTER DATABASE [Furniture] SET  READ_WRITE 
GO
