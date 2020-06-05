-- Poblado de tablas con informacion de entradas y salidas --

Insert into inventario values (1001,'ENTRADA','2020-04-05',25)
Insert into inventario values (1002,'ENTRADA','2020-15-05',12)
Insert into inventario values (1003,'ENTRADA','2020/25/05',15)
Insert into inventario values (1004,'ENTRADA','2020/04/06',10)												
Insert into inventario values (1005,'ENTRADA','2020/04/05',25)
Insert into inventario values (1006,'ENTRADA','2020/15/05',12)
Insert into inventario values (1007,'ENTRADA','2020/25/05',15)
Insert into inventario values (1008,'ENTRADA','2020/04/06',10)												
Insert into inventario values (1009,'ENTRADA','2020/04/05',25)
Insert into inventario values (1010,'ENTRADA','2020/15/05',12)
Insert into inventario values (1011,'ENTRADA','2020/25/05',15)
Insert into inventario values (1012,'ENTRADA','2020/04/06',10)												
Insert into inventario values (1013,'ENTRADA','2020/04/05',25)
Insert into inventario values (1014,'ENTRADA','2020/15/05',12)
Insert into inventario values (1015,'ENTRADA','2020/25/05',15)
Insert into inventario values (1016,'ENTRADA','2020/04/06',10)

select * from inventario

select * from producto p
join inventario i on p.IdProducto = i.IdProducto