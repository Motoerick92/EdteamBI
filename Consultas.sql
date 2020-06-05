
-- Consulta de la facturacion de un cliente en especifico --
select * from facturacion f
join cliente c on f.IdCliente = c.IdCliente
where c.IdCliente = 5

-- Consulta de la facturacion de un producto en especifico --
select * from facturacion f 
join producto p on f.IdProducto = p.IdProducto
where p.varProducto = 'nike'

-- Consulta de la facturacion de un rango de fechas --
select * from facturacion f 
where dtmFechaFactura >= '2020-01-05' and dtmFechaFactura <= '2020-05-06'  

-- Consulta de clientes unicos que han comprado --
select distinct f.IdCliente,c.varNombreCliente from facturacion f
join cliente c on f.IdCliente = c.IdCliente

--Consulta de la factura total con impuestos--
select f.IdFactura,
	   f.IdCliente,
	   f.IdProducto,
	   f.dtmFechaFactura,
	   f.mnyImpuestos,	      	   
	   p.varProducto,
	   p.varPresentacion,
	   p.mnyValor,
	   'Total' = p.mnyvalor * f.mnyImpuestos + (p.mnyvalor)
 from facturacion f
join producto p on f.IdProducto = p.IdProducto

 