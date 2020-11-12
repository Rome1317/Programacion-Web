use CT_DB;

select * from Tbl_Usuario;
select * from Tbl_Noticia;
select * from Tbl_Imagen;
select *from Tbl_Categoria;
select * from Tbl_Not_Cat;

truncate table Tbl_Imagen;
truncate table Tbl_Noticia;
truncate table Tbl_Usuario;

/*Categorias*/
insert into Tbl_Categoria (nombre,descripcion) values ("Clima y ambiente","Noticias referentes sobre el clima y ambiente en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Ciencia","Noticias referentes sobre el ciencia en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Multimedia","Noticias referentes sobre multimedia en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Tips Tecnologicos","Noticias referentes sobre tips tecnologicos en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Videojuegos","Noticias referentes sobre los videojuegos en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Autos","Noticias referentes sobre autos en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Ciberseguridad","Noticias referentes sobre ciberseguridad en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Realidad Virtual","Noticias referentes sobre realidad virtual en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Inteligencia Artificial","Noticias referentes sobre la inteligencia artificial en el mundo");


/*ADMINISTRADORES*/
insert into Tbl_Usuario values ("edgar_donato@outlook.com", "Donato Calvillo", "reycena99" , "https://www.facebook.com/edgar.calvillo2/", null, null, "Administrador");
insert into Tbl_Usuario values ("rome_gs@outlook.com", "RomeGlz", "itsjhoncena17" , "https://www.facebook.com/Romeesponja", null, null, "Administrador");
select * from Tbl_Usuario;
/*----------------*/

/*NOTICIAS HOME*/
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("XBOX SERIES X", "Nueva generacion de consolas de xbox", "Mucho texto sobre la nueva tecnologia de ultima generacion", 1,"edgar_donato@outlook.com",100);
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("PLAYSTATION 5", "Nueva generacion de consolas de Playstation", "Mucho texto sobre la nueva tecnologia de ultima generacion", 1,"edgar_donato@outlook.com",150);
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("CHIPS EN EL CEREBRO", "Nuevos chips para el cerebro", "Mucho texto sobre la nueva tecnologia de chips", 1,"edgar_donato@outlook.com",80);
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("CALENTAMIENTO GLOBAL", "Los polos se derriten", "Mucho texto sobre la contaminacion", 1,"edgar_donato@outlook.com",85);

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("FACEBOOK: LA EXEMPLEADA QUE DENUNCIA", "Exempleada denuncia la responsabilidad de la red en las campañas de manipulación de todo el mundo", "Mucho texto sobre Facebook", 1,"edgar_donato@outlook.com",45);

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("¿COMO SABER SI TE ESTAN ROBANDO WIFI?", "Que un tercero acceda a tu conexión de internet es un riesgo de seguridad", 
"Los fallos en una red WiFi pueden deberse a una amplia variedad de razones. Desde un simple problema de conexión, hasta una mala ubicación del router. Sin embargo, cuando notamos que
 la velocidad de internet no es la esperada, también es posible que alguno de nuestros vecinos haya conseguido acceder a la conexión y la esté utilizando sin permiso.", 1,"edgar_donato@outlook.com",12);

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("WHATSAPP INTRODUCE MENSAJES QUE SE AUTODESTUYEN", "En una semana lo que hayas comentado desaparecerá.", "Esta es la premisa básica con la que trabaja WhatsApp, conocida aplicación de mensajería,
 para detallar, tras meses de rumores, una de sus funciones más esperadas: la posibilidad de mandar mensajes que se autodestruyen. A pesar de darlo a conocer, el servicio no funcionará como se esperaba.", 
 1,"edgar_donato@outlook.com",52);

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("AGE OF EMPIRES III: MAS QUE UNA ADAPTACION", "El videojuego presenta jugosos cambios sin perder la esencia del título original.", 
"Quince años dan para mucho. Para mejorar texturas, para renovar el acabado visual y (lo más importante) para ofrecer una segunda oportunidad a un clásico que, aunque no pudo superar a su antecesor, vendió la friolera de dos
 millones de copias en tres veranos. Casi nada… Con «Age of Empires III: Definitive Edition», los estudios Tantalus Media y Forgotten Empires pueden presumir de haber dado un lavado de cara a la saga, pero también de haber 
 implementado cambios que mejoran la experiencia de juego y de haber incluido jugosas novedades capaces de completar un título ya en su momento profundo y extenso.", 1,"edgar_donato@outlook.com",44);

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("HUMANOS VIVEN DURANTE 20 AÑOS EN EL ESPACIO", 
"Estación Espacial Internacional: 20 años de tradición", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",150);
 
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("ROBOTS QUE SE INTEGRAN A LA VIDA COTIDIANA", 
"Estos robots están diseñados para hacer nuestras vidas más fáciles", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",130);
 
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("CIENTÍFICOS PREDICEN CLIMA EN PLANETA DE LAVA", 
"Océanos de lava, lluvia de rocas y vientos supersónico", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",180);
 
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes)
values("LOS SECRETOS DE UN METEORITO QUE CAYÓ EN 2018", 
"Un meteorito «fireball» que cayó en 2018 contiene «compuestos orgánicos extraterrestres»", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",200);
 
 /*Noticia/Categoria*/
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (1,5);
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (2,5);
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (3,2);
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (4,1);

insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (5,3);

insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (7,4);
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (7,7);

insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (8,4);
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (9,5);
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (10,2);
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (11,2);

insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (12,1);
insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (12,2);

insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (13,1);
/*-------------------------------------------------------------*/

/*Imagenes*/
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/xboxSeriesX.jpg",1);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/xboxSeriesX2.jpg",1);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/xboxSeriesX3.jpg",1);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/Playstation5.jpg",2);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/Playstation52.jpg",2);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/Playstation53.jpg",2);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/ia3.jpg",3);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/ia1.jpg",3);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/ia2.jpg",3);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/clima5.jpg",4);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/clima1.jpg",4);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/clima4.jpg",4);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/facebook.jpg",5);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/facebook2.jpg",5);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/facebook3.jpg",5);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/wifi.jpg",7);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/wifi2.jpg",7);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/wifi3.jpg",7);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/whatsapp.jpeg",8);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/whatsapp2.jpg",8);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/whatsapp3.jpg",8);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/aoeIII.jpg",9);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/aoeIII2.jpg",9);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/aoeIII3.jpg",9);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/estacionespacial.jpg",10);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/ciencia4.jpg",10);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/ciencia5.jpg",10);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/robots.jpg",11);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/rv1.jpg",11);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/rv2.jpg",11);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/planetalava.jpg",12);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/planetalava.jpg",12);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/planetalava.jpg",12);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/meteoritos.jpg",13);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/1.jpg",13);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/3.jpg",13);
/*--------------------------------------------------------------------------------------------------*/

select * from Tbl_Noticia noti
inner join Tbl_Categ