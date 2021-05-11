USE [test]
GO
/****** Object:  Table [dbo].[customer_tbl]    Script Date: 11/05/2021 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_tbl](
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[CustomerID] [varchar](50) NOT NULL,
	[pass] [varchar](70) NOT NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_tbl]    Script Date: 11/05/2021 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_tbl](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductPrice] [float] NULL,
	[ProductName] [varchar](40) NULL,
	[ProductQuantity] [int] NULL,
	[CategoryID] [int] NULL,
	[ProductDescription] [varchar](100) NULL,
	[ImagePath] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testCart2]    Script Date: 11/05/2021 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testCart2](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CartCustomerID] [varchar](50) NOT NULL,
	[CartDate] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testCartItems]    Script Date: 11/05/2021 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testCartItems](
	[CartItemID] [int] IDENTITY(1,1) NOT NULL,
	[CartProductID] [int] NULL,
	[CartQuantity] [int] NULL,
	[CartPrice] [decimal](18, 0) NULL,
	[CartID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CartItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testOrderedItems_tbl]    Script Date: 11/05/2021 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testOrderedItems_tbl](
	[OrderItemID] [int] IDENTITY(1,1) NOT NULL,
	[OrderProductID] [int] NULL,
	[OrderItemQuantity] [int] NULL,
	[OrderItemPrice] [float] NULL,
	[OrderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testOrders2_tbl]    Script Date: 11/05/2021 8:15:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testOrders2_tbl](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [varchar](50) NULL,
	[OrderTotalprice] [float] NULL,
	[PaymentMethod] [varchar](20) NULL,
	[OrderStatus] [varchar](15) NULL,
	[CustomerID] [varchar](50) NULL,
	[ValidCancelDate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[customer_tbl] ([FirstName], [LastName], [Street], [City], [Phone], [CustomerID], [pass], [Email]) VALUES (N'asdasda', N'dasdasda', N'asdasd', N'asdasd', N'09090123131', N'asfe4', N'AKVr9WbYEJxToSgIq7neSWxFqOHilRxP4oEAzv1Y2szhNBTOaJe4HTlw8xhJNov2UA==', N'asdasdasd@gmail.com')
INSERT [dbo].[customer_tbl] ([FirstName], [LastName], [Street], [City], [Phone], [CustomerID], [pass], [Email]) VALUES (N'Jay Rafael', N'Galit', N'812 Basilio St', N'Sampaloc, Manila', N'09278592912', N'Jay2020', N'AKFEB9380lKUuD3vSrQhgrgiP4F5C2Cy3J4fehLCGU1dZ5qE8f50DA4Ugndmnc9jfQ==', N'jayrafael@gmail.com')
INSERT [dbo].[customer_tbl] ([FirstName], [LastName], [Street], [City], [Phone], [CustomerID], [pass], [Email]) VALUES (N'Jay', N'Galit', N'812 Basilio Street', N'Sampaloc, Manila', N'09278592912', N'Jay26', N'AKLYKsQR2049fOB0uRTLE+e1+KcNpt2JVYkRNhYsm0rM3XaP4u485XO3N5sshlPlSw==', N'jayrafaelgalit26@gmail.com')
INSERT [dbo].[customer_tbl] ([FirstName], [LastName], [Street], [City], [Phone], [CustomerID], [pass], [Email]) VALUES (N'Nyeric', N'Jerbax', N'812 Basilio Street', N'Sampaloc, Manila', N'09278592912', N'jeric', N'AEoRCYXcN5ZD8EdAaw2ANrnYEuFKG8oR04aDa6+fVGgerWXo9ovKq3f1hje4WaP5dQ==', N'jericrivel@tite.com')
INSERT [dbo].[customer_tbl] ([FirstName], [LastName], [Street], [City], [Phone], [CustomerID], [pass], [Email]) VALUES (N'Jay Rafael', N'Galit', N'812 Basilio St', N'Sampaloc, Manila', N'09278592912', N'Rafael', N'ADtHa4/+3ePWpDAa6GcuhTAvotweEEdfED3SjhKktDudbG+zpu+FTF0kmf9QQqq+dg==', N'jayrafael@gmail.com')
INSERT [dbo].[customer_tbl] ([FirstName], [LastName], [Street], [City], [Phone], [CustomerID], [pass], [Email]) VALUES (N'Jay Rafael', N'Galit', N'812 Basilio St', N'Sampaloc, Manila', N'09123456789', N'Rafael09', N'AMfDMumE3xonuDlZEF2aKeq/DyHlBxm+Jas6mwpdxLwf1dUSSCQ5H/5SEDXOeyAW4Q==', N'jayrafael@gmail.com')
INSERT [dbo].[customer_tbl] ([FirstName], [LastName], [Street], [City], [Phone], [CustomerID], [pass], [Email]) VALUES (N'Jay Rafael', N'Galit', N'812 Basilio St', N'Sampaloc, Manila', N'09278592912', N'Rafael26', N'AP3ReNx73WOvE9saZsbufRV2lYuCcM0gqFwVjNldAn5ATQ3rP/TtK/gl+N6wack5Rw==', N'jayrafael@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[products_tbl] ON 

INSERT [dbo].[products_tbl] ([ProductID], [ProductPrice], [ProductName], [ProductQuantity], [CategoryID], [ProductDescription], [ImagePath]) VALUES (1, 175, N'Chicken Tocino', 40, 1, N'450 Grams of Chicken Tocino.', N'../images/chickentocino.jpg')
INSERT [dbo].[products_tbl] ([ProductID], [ProductPrice], [ProductName], [ProductQuantity], [CategoryID], [ProductDescription], [ImagePath]) VALUES (2, 120, N'Chicken Longganisa', 50, 1, N'10 Pieces of Chicken Longganisa', N'../images/chickenlongganisa.jpg')
INSERT [dbo].[products_tbl] ([ProductID], [ProductPrice], [ProductName], [ProductQuantity], [CategoryID], [ProductDescription], [ImagePath]) VALUES (3, 130, N'Chicken Thighs', 34, 1, N'Chicken Thighs Sample', N'../images/chicknthigh.png')
INSERT [dbo].[products_tbl] ([ProductID], [ProductPrice], [ProductName], [ProductQuantity], [CategoryID], [ProductDescription], [ImagePath]) VALUES (4, 200, N'Beef Tapa', 8, 2, N'450 Grams of Beef Tapa', N'../images/beeftapa2.jpg')
INSERT [dbo].[products_tbl] ([ProductID], [ProductPrice], [ProductName], [ProductQuantity], [CategoryID], [ProductDescription], [ImagePath]) VALUES (5, 150, N'Beef Longganisa', 30, 2, N'10 Pieces of Beef Longganisa', N'../images/beeflongganisa2.jpg')
INSERT [dbo].[products_tbl] ([ProductID], [ProductPrice], [ProductName], [ProductQuantity], [CategoryID], [ProductDescription], [ImagePath]) VALUES (7, 100, N'Sukang Larahan', 29, 3, N'Sukang Larahan', N'../images/suka.jpg')
SET IDENTITY_INSERT [dbo].[products_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[testCart2] ON 

INSERT [dbo].[testCart2] ([CartID], [CartCustomerID], [CartDate]) VALUES (1010, N'Rafael09', N'07/05/2021 3:51 AM')
SET IDENTITY_INSERT [dbo].[testCart2] OFF
GO
SET IDENTITY_INSERT [dbo].[testCartItems] ON 

INSERT [dbo].[testCartItems] ([CartItemID], [CartProductID], [CartQuantity], [CartPrice], [CartID]) VALUES (5197, 1, 6, CAST(1050 AS Decimal(18, 0)), N'1009')
INSERT [dbo].[testCartItems] ([CartItemID], [CartProductID], [CartQuantity], [CartPrice], [CartID]) VALUES (5198, 2, 6, CAST(720 AS Decimal(18, 0)), N'1009')
SET IDENTITY_INSERT [dbo].[testCartItems] OFF
GO
SET IDENTITY_INSERT [dbo].[testOrderedItems_tbl] ON 

INSERT [dbo].[testOrderedItems_tbl] ([OrderItemID], [OrderProductID], [OrderItemQuantity], [OrderItemPrice], [OrderID]) VALUES (3161, 1, 9, 1575, 4)
INSERT [dbo].[testOrderedItems_tbl] ([OrderItemID], [OrderProductID], [OrderItemQuantity], [OrderItemPrice], [OrderID]) VALUES (3162, 2, 1, 120, 5)
INSERT [dbo].[testOrderedItems_tbl] ([OrderItemID], [OrderProductID], [OrderItemQuantity], [OrderItemPrice], [OrderID]) VALUES (3163, 1, 9, 1575, 6)
INSERT [dbo].[testOrderedItems_tbl] ([OrderItemID], [OrderProductID], [OrderItemQuantity], [OrderItemPrice], [OrderID]) VALUES (3164, 2, 2, 240, 6)
INSERT [dbo].[testOrderedItems_tbl] ([OrderItemID], [OrderProductID], [OrderItemQuantity], [OrderItemPrice], [OrderID]) VALUES (3165, 1, 1, 175, 7)
INSERT [dbo].[testOrderedItems_tbl] ([OrderItemID], [OrderProductID], [OrderItemQuantity], [OrderItemPrice], [OrderID]) VALUES (3166, 2, 1, 120, 7)
INSERT [dbo].[testOrderedItems_tbl] ([OrderItemID], [OrderProductID], [OrderItemQuantity], [OrderItemPrice], [OrderID]) VALUES (3167, 1, 10, 1750, 8)
INSERT [dbo].[testOrderedItems_tbl] ([OrderItemID], [OrderProductID], [OrderItemQuantity], [OrderItemPrice], [OrderID]) VALUES (3168, 3, 1, 130, 9)
SET IDENTITY_INSERT [dbo].[testOrderedItems_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[testOrders2_tbl] ON 

INSERT [dbo].[testOrders2_tbl] ([OrderID], [OrderDate], [OrderTotalprice], [PaymentMethod], [OrderStatus], [CustomerID], [ValidCancelDate]) VALUES (4, N'06/05/2021 2:59 AM', 1575, N'Cash on Delivery', N'Canceled', N'Rafael09', N'07/05/2021 2:59 AM')
INSERT [dbo].[testOrders2_tbl] ([OrderID], [OrderDate], [OrderTotalprice], [PaymentMethod], [OrderStatus], [CustomerID], [ValidCancelDate]) VALUES (5, N'06/05/2021 3:14 AM', 120, N'Pick-up', N'Canceled', N'Rafael09', N'07/05/2021 3:14 AM')
INSERT [dbo].[testOrders2_tbl] ([OrderID], [OrderDate], [OrderTotalprice], [PaymentMethod], [OrderStatus], [CustomerID], [ValidCancelDate]) VALUES (6, N'07/05/2021 3:27 AM', 1815, N'Pick-up', N'Returned', N'Rafael09', N'08/05/2021 3:27 AM')
INSERT [dbo].[testOrders2_tbl] ([OrderID], [OrderDate], [OrderTotalprice], [PaymentMethod], [OrderStatus], [CustomerID], [ValidCancelDate]) VALUES (7, N'08/05/2021 7:51 PM', 295, N'Pick-up', N'Canceled', N'Rafael09', N'09/05/2021 7:51 PM')
INSERT [dbo].[testOrders2_tbl] ([OrderID], [OrderDate], [OrderTotalprice], [PaymentMethod], [OrderStatus], [CustomerID], [ValidCancelDate]) VALUES (8, N'08/05/2021 8:30 PM', 1750, N'Pick-up', N'Completed', N'Rafael09', N'09/05/2021 8:30 PM')
INSERT [dbo].[testOrders2_tbl] ([OrderID], [OrderDate], [OrderTotalprice], [PaymentMethod], [OrderStatus], [CustomerID], [ValidCancelDate]) VALUES (9, N'08/05/2021 8:30 PM', 130, N'Pick-up', N'Completed', N'Rafael09', N'09/05/2021 8:30 PM')
SET IDENTITY_INSERT [dbo].[testOrders2_tbl] OFF
GO
