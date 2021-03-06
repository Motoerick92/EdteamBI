USE [zapateria]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 05/06/2020 03:19:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[varNombreCliente] [varchar](50) NULL,
	[varPais] [varchar](50) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturacion]    Script Date: 05/06/2020 03:19:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturacion](
	[IdFactura] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[dtmFechaFactura] [datetime] NULL,
	[mnyImpuestos] [money] NULL,
	[decDescuentos] [decimal](18, 0) NULL,
 CONSTRAINT [PK_facturacion] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 05/06/2020 03:19:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario](
	[IdProducto] [int] NOT NULL,
	[varTipoMovimiento] [varchar](50) NULL,
	[dtmFecha] [datetime] NULL,
	[intCantidad] [int] NULL,
 CONSTRAINT [PK_inventario] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 05/06/2020 03:19:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[IdProducto] [int] IDENTITY(1001,1) NOT NULL,
	[varProducto] [varchar](50) NULL,
	[varPresentacion] [varchar](50) NULL,
	[mnyValor] [money] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cliente] ON 

INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (1, N'Erick', N'Mexico')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (2, N'Salvador', N'Mexico')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (3, N'Pedro', N'Mexico')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (4, N'Fernando', N'Mexico')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (5, N'Aron', N'Mexico')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (6, N'Yuliana', N'Mexico')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (7, N'Juan', N'Mexico')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (8, N'Cristopher', N'Mexico')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (9, N'Osvaldo', N'Alemania')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (10, N'Mariana', N'Argentina')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (11, N'Sofia', N'Brasil')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (12, N'Edith', N'Canada')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (13, N'Yesica', N'Francia')
INSERT [dbo].[cliente] ([IdCliente], [varNombreCliente], [varPais]) VALUES (14, N'Nancy', N'Portugal')
SET IDENTITY_INSERT [dbo].[cliente] OFF
SET IDENTITY_INSERT [dbo].[facturacion] ON 

INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (1, 1, 1001, CAST(N'2020-05-05T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (2, 1, 1001, CAST(N'2020-05-05T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (3, 1, 1003, CAST(N'2020-06-03T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (4, 1, 1005, CAST(N'2020-06-01T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (5, 1, 1008, CAST(N'2020-05-26T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (6, 2, 1014, CAST(N'2020-05-27T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (7, 2, 1014, CAST(N'2020-05-28T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (8, 3, 1002, CAST(N'2020-05-07T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[facturacion] ([IdFactura], [IdCliente], [IdProducto], [dtmFechaFactura], [mnyImpuestos], [decDescuentos]) VALUES (10, 5, 1016, CAST(N'2020-05-30T00:00:00.000' AS DateTime), 0.1600, CAST(0 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[facturacion] OFF
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1001, N'ENTRADA', CAST(N'2020-05-04T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1002, N'ENTRADA', CAST(N'2020-05-15T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1003, N'ENTRADA', CAST(N'2020-05-25T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1004, N'ENTRADA', CAST(N'2020-06-04T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1005, N'ENTRADA', CAST(N'2020-05-04T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1006, N'ENTRADA', CAST(N'2020-05-15T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1007, N'ENTRADA', CAST(N'2020-05-25T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1008, N'ENTRADA', CAST(N'2020-06-04T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1009, N'ENTRADA', CAST(N'2020-05-04T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1010, N'ENTRADA', CAST(N'2020-05-15T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1011, N'ENTRADA', CAST(N'2020-05-25T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1012, N'ENTRADA', CAST(N'2020-06-04T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1013, N'ENTRADA', CAST(N'2020-05-04T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1014, N'ENTRADA', CAST(N'2020-05-15T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1015, N'ENTRADA', CAST(N'2020-05-25T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[inventario] ([IdProducto], [varTipoMovimiento], [dtmFecha], [intCantidad]) VALUES (1016, N'ENTRADA', CAST(N'2020-06-04T00:00:00.000' AS DateTime), 10)
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1001, N'nike', N'color blanco', 1200.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1002, N'nike', N'color negro', 1200.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1003, N'nike', N'color rojo', 1200.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1004, N'nike', N'color azul', 1200.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1005, N'DC Shoes', N'color blanco', 1400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1006, N'DC Shoes', N'color negro', 1400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1007, N'DC Shoes', N'color rojo', 1400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1008, N'DC Shoes', N'color azul', 1400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1009, N'converse', N'color blanco', 400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1010, N'converse', N'color negro', 400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1011, N'converse', N'color rojo', 400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1012, N'converse', N'color azul', 400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1013, N'converse', N'color gris', 400.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1014, N'Reebok', N'color blanco', 1600.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1015, N'Reebok', N'color negro', 1600.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1016, N'Reebok', N'color rojo', 1600.0000)
INSERT [dbo].[producto] ([IdProducto], [varProducto], [varPresentacion], [mnyValor]) VALUES (1017, N'Reebok', N'color azul', 1600.0000)
SET IDENTITY_INSERT [dbo].[producto] OFF
ALTER TABLE [dbo].[facturacion]  WITH CHECK ADD  CONSTRAINT [FK_facturacion_cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[facturacion] CHECK CONSTRAINT [FK_facturacion_cliente]
GO
ALTER TABLE [dbo].[facturacion]  WITH CHECK ADD  CONSTRAINT [FK_facturacion_inventario] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[inventario] ([IdProducto])
GO
ALTER TABLE [dbo].[facturacion] CHECK CONSTRAINT [FK_facturacion_inventario]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[producto] ([IdProducto])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [FK_inventario_producto]
GO
