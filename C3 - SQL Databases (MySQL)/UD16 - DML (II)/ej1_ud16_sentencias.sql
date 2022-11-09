select nombre from articulos;
select nombre,precio from articulos;
select nombre from articulos where precio<=200;
select * from articulos where precio between 60 and 120;
select nombre, precio*166.386 as precio_Ptas from articulos;
select avg(precio) from articulos;
select avg(precio) from articulos where fabricante = 2;
select count(precio) from articulos where precio >=180;
select nombre, precio from articulos where precio >=180 order by precio desc, nombre asc;
select * from articulos, fabricantes where articulos.fabricante = fabricantes.codigo;
select articulos.nombre, articulos.precio, fabricantes.nombre as fabricante from articulos, fabricantes where articulos.fabricante = fabricantes.codigo;
select avg(articulos.precio), fabricantes.codigo from articulos, fabricantes where articulos.fabricante = fabricantes.codigo group by codigo;
select avg(articulos.precio), fabricantes.nombre from articulos, fabricantes where articulos.fabricante = fabricantes.codigo group by fabricantes.codigo;
select fabricantes.nombre from fabricantes, articulos where articulos.fabricante = fabricantes.codigo  group by fabricantes.codigo having avg(articulos.precio)>=150;
select nombre, precio from articulos where precio=(select min(precio) from articulos);
select articulos.nombre, articulos.precio, fabricantes.nombre from articulos inner join fabricantes on articulos.fabricante = fabricantes.codigo and articulos.precio =(select max(articulos.precio) from articulos where articulos.fabricante = fabricantes.codigo);
insert into articulos(codigo, nombre, precio, fabricante) values (99, "Altavoces", 70, 2);
update articulos set nombre="Impresora laser" where codigo=8;
update articulos set precio=precio*0.9;#//?
update articulos set precio=precio-10 where precio>=120;