USE [MVCDBStok]
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 15.06.2022 23:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[EmployeeAddress] [nvarchar](50) NULL,
	[EmployeeSalary] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] ON 

INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeSalary]) VALUES (1, N'Engin ÇELİK', N'İstanbul', CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeSalary]) VALUES (2, N'Ahmet ÖZTÜRK', N'Bursa', CAST(4500.00 AS Decimal(18, 2)))
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeSalary]) VALUES (3, N'Oğuzhan TOPRAK', N'HEREKE', CAST(9000.00 AS Decimal(18, 2)))
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeSalary]) VALUES (35, N'Ünsal ARSLAN', N'Kadıköy', CAST(28000.00 AS Decimal(18, 2)))
INSERT [dbo].[tblEmployee] ([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeSalary]) VALUES (37, N'Engin ÇELİK', N'İstanbul', CAST(5000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
