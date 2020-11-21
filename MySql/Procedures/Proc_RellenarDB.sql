use CT_DB;

select * from Tbl_Usuario;
select * from Tbl_Noticia;
select * from Tbl_Imagen;
select * from Tbl_Categoria;
select * from Tbl_Not_Cat;
select * from Tbl_Guardadas;
select * from Tbl_Comentario;
    
truncate table Tbl_Guardadas;

drop table Tbl_Imagen;
drop table Tbl_Not_Cat;
drop table Tbl_Video;
drop table Tbl_categoria;
drop table Tbl_comentario;
drop table Tbl_guardadas;
drop table Tbl_Usuario;
drop table Tbl_Noticia;


/*Categorias*/
insert into Tbl_Categoria (nombre,descripcion)values ("Clima y ambiente","Noticias referentes sobre el clima y ambiente en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Ciencia","Noticias referentes sobre el ciencia en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Multimedia","Noticias referentes sobre multimedia en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Tips Tecnologicos","Noticias referentes sobre tips tecnologicos en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Videojuegos","Noticias referentes sobre los videojuegos en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Autos","Noticias referentes sobre autos en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Ciberseguridad","Noticias referentes sobre ciberseguridad en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Realidad Virtual","Noticias referentes sobre realidad virtual en el mundo");
insert into Tbl_Categoria (nombre,descripcion)values ("Inteligencia Artificial","Noticias referentes sobre la inteligencia artificial en el mundo");


/*ADMINISTRADORES*/
insert into Tbl_Usuario (email,username,pass,facebook,rol)
values ("edgar_donato@outlook.com", "Donas", "123" , "https://www.facebook.com/edgar.calvillo2/", "Administrador");
insert into Tbl_Usuario (email,username,pass,facebook,rol)
values ("rome_gs@outlook.com", "RomeGlz", "123" , "https://www.facebook.com/Romeesponja", "Registrada");
insert into Tbl_Usuario (email,username,pass,facebook,rol)
values ("gera@outlook.com", "Becerras", "123" , "https://www.facebook.com/Romeesponja", "Moderador");
insert into Tbl_Usuario (email,username,pass,facebook,rol)
values ("dani@outlook.com", "ElDani", "123" , "https://www.facebook.com/Romeesponja", "Creador Contenido");
insert into Tbl_Usuario (email,username,pass,facebook,rol)
values ("Jerson@outlook.com", "Jersongas", "123" , "https://www.facebook.com/Romeesponja", "Editor");
insert into Tbl_Usuario (email,username,pass,facebook,rol)
values ("Anonimo", "Anonimo", "123" , "", "Registrada");
select * from Tbl_Usuario order by email;
/*----------------*/

/*NOTICIAS HOME*/
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("XBOX SERIES X", "Nueva generacion de consolas de xbox", "El día en que Microsoft confirmó la Xbox Series S —después de que se filtrara un video— Xbox la mostró en un video y mencionó 
algunas de sus características como tiempos de carga más rápidos, mayor velocidad, desempeño de última generación, entre otros. Te decimos todo lo que sabemos hasta ahora de la Xbox Series S. 
Sin embargo, popular franquicia, Halo Infinite, no acompañará a las consolas en su lanzamiento, ya que en agosto Microsoft dijo que necesitará más tiempo para terminar 'el trabajo crítico'
 del videojuego. Un tuit en la cuenta oficial de Halo explica que: 'La decisión de retrasar el lanzamiento es el resultado de muchos factores que han contribuido a cambios en el desarrollo,
 incluyendo el impacto que la pandemia de COVID-19 ha tenido en nosotros durante todo este año'. Halo Infinite, uno de sus juegos más anticipados en años, no llegará con la consola sino hasta 2021.",
 1 , "edgar_donato@outlook.com" , 100,
 "La próxima consola de Microsoft, incluida la Xbox Series S, ya tiene precio oficial, fecha de preventa y de lanzamiento. Te contamos todo lo que sabemos de la llegada de la Xbox Series X.
 Es oficial, la Xbox Series X cuesta US$499, su preventa inició el 22 de septiembre y su lanzamiento oficial es el 10 de noviembre. Microsoft también confirmó la existencia y costo de la Xbox Series S,
 la versión más barata y pequeña de Xbox Series X, la cual costará US$299, y al igual que su hermana mayor, está disponible en preventa desde el 22 de septiembre.");

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("PLAYSTATION 5", "PlayStation 5 ya tiene su primera baja y un youtuber se despidió de su consola", "Un reporte de VG24/7 compartió lo sucedido con el PS5 del youtuber Jeremy Penter, conocido en la plataforma 
de video como ACG, quien hace unos días se preparó para hacer la reseña de la nueva consola de Sony, pero lamentablemente y sin motivo alguno, dejó de funcionar. De acuerdo con Penter, su consola presentó problemas 
desde el inicio, pero en un momento estos escalaron hasta dejarla inservible, de hecho mencionó que la consola 'murió' justo cuando estaba en contacto con un representante de servicio técnico de Sony para encontrar una solución.
Aunque la necesidad de cumplir con sus fans para brindarles la esperada reseña del PS5 llevó a Penter a comprar de inmediato otra unidad, Sony se puso en contacto con él para tratar los términos del remplazo de la unidad por una 
nueva que, de acuerdo con el youtuber, funciona sin problemas y le permitió crear el contenido para su canal.",
 1,"edgar_donato@outlook.com",150, "La tecnología no está libre de fallas y cualquier pieza 
de hardware puede presentar problemas, así se trate de un producto recién salido al mercado. Aunque cierto sector espera alguna falla por parte de PlayStation 5 o Xbox Series X|S para incendiar las redes,
 lo cierto es que un problema así no es nuevo en una consola y no es motivo para entrar en pánico ni sacarlo de proporción en caso de que suceda. En ese sentido, PS5 ya presentó su primera baja y un youtuber fue el primer afectado.");

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("CIBERESTAFA BANCARIA", "Cómo reconocer una ciberestafa bancaria", "Los cibercriminales no atacan por amor al arte; sino buscando algún tipo de beneficio económico. Independientemente de que secuestren
 a una empresa con un virus de tipo « ransomware», o de que intenten engañar a los usuarios para que revelen sus credenciales de la banca online. Algo bastante habitual en las amenazas de tipo  phishing, en las que los delincuentes suplantan
 a un tercero, como podría ser una empresa conocida o una entidad bancaria, y emplean ingeniería social para que el internauta entregue, sin darse cuenta, sus datos personales: contraseñas, número de tarjeta bancaria o claves de acceso, entre otras cosas.
Este tipo de estafas son bastante habituales y suelen realizarse a través de correo electrónico, páginas web maliciosas o mensajes de tipo SMS o WhatsApp.", 1 ,
 "edgar_donato@outlook.com" , 80, "El phishing es una de las principales amenazas a las que hace frente el usuario en la red. Para no caer en la trampa, y evitar perder el control de datos personales o las claves del banco, es importante saber
 cómo funcionan las campañas en las que se utiliza");

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("CALENTAMIENTO GLOBAL", "Los polos se derriten", "Mucho texto sobre la contaminacion", 1,"edgar_donato@outlook.com",85, "resumen de los polos");

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("FACEBOOK VS PANDEMIA", "El 84% de las noticias falsas sobre el coronavirus burlan los filtros de seguridad redes sociales", "Mucho texto sobre Facebook", 1,"edgar_donato@outlook.com",45, "La pandemia ha multiplicado las manipulaciones 
informativas, las teorías conspiratorias, los contenidos intencionadamente descontextualizados y los embustes. Y Facebook ha contribuido a su dispersión, como demuestra un reciente estudio de la fundación estadounidense Avaaz. En él se sostiene que 
durante los últimos meses el algoritmo de esta red social ha estado promocionando la desinformación sobre la Covid-19.");

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("¿COMO SABER SI TE ESTAN ROBANDO WIFI?", "Que un tercero acceda a tu conexión de internet es un riesgo de seguridad", 
"Los fallos en una red WiFi pueden deberse a una amplia variedad de razones. Desde un simple problema de conexión, hasta una mala ubicación del router. Sin embargo, cuando notamos que
 la velocidad de internet no es la esperada, también es posible que alguno de nuestros vecinos haya conseguido acceder a la conexión y la esté utilizando sin permiso.", 1,"edgar_donato@outlook.com",12, "Resumen de wifi");

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("WHATSAPP INTRODUCE MENSAJES QUE SE AUTODESTUYEN", "En una semana lo que hayas comentado desaparecerá.", "Esta es la premisa básica con la que trabaja WhatsApp, conocida aplicación de mensajería,
 para detallar, tras meses de rumores, una de sus funciones más esperadas: la posibilidad de mandar mensajes que se autodestruyen. A pesar de darlo a conocer, el servicio no funcionará como se esperaba.", 
 1,"edgar_donato@outlook.com",52, "Resumen de whats app");

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("AGE OF EMPIRES III: MAS QUE UNA ADAPTACION", "El videojuego presenta jugosos cambios sin perder la esencia del título original.", 
"Quince años dan para mucho. Para mejorar texturas, para renovar el acabado visual y (lo más importante) para ofrecer una segunda oportunidad a un clásico que, aunque no pudo superar a su antecesor, vendió la friolera de dos
 millones de copias en tres veranos. Casi nada… Con «Age of Empires III: Definitive Edition», los estudios Tantalus Media y Forgotten Empires pueden presumir de haber dado un lavado de cara a la saga, pero también de haber 
 implementado cambios que mejoran la experiencia de juego y de haber incluido jugosas novedades capaces de completar un título ya en su momento profundo y extenso.", 1,"edgar_donato@outlook.com",44
 , "Resumen de AGE OF EMPIRES III");

insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes,resumen)
values("HUMANOS VIVEN DURANTE 20 AÑOS EN EL ESPACIO", 
"Estación Espacial Internacional: 20 años de tradición", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",150, "Resumen de humanos que viven en el espacio");
 
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes,resumen)
values("ROBOTS QUE SE INTEGRAN A LA VIDA COTIDIANA", 
"Estos robots están diseñados para hacer nuestras vidas más fáciles", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",130, "Resumen de robots");
 
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("CIENTÍFICOS PREDICEN CLIMA EN PLANETA DE LAVA", 
"Océanos de lava, lluvia de rocas y vientos supersónico", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",180, "Resumen de cientificos");
 
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("LOS SECRETOS DE UN METEORITO QUE CAYÓ EN 2018", 
"Un meteorito «fireball» que cayó en 2018 contiene «compuestos orgánicos extraterrestres»", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",200, "Resumen de Noticias");
 
insert into Tbl_Noticia (titulo,descripcion,noticia,aprovado,fk_usuario,likes, resumen)
values("NOTICIA DE PRUEBA 1", 
"Un meteorito «fireball» que cayó en 2018 contiene «compuestos orgánicos extraterrestres»", "Mucho texto sobre la nueva tecnologia de ultima generacion",
 1,"edgar_donato@outlook.com",200, "Resumen de Noticias");
 
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

insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (13,2);

insert into Tbl_Not_Cat(fk_noticia,fk_categoria) values (6,1);
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

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/meteoritos.jpg",6);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/1.jpg",6);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/3.jpg",6);

insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/aoeIII.jpg",13);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/aoeIII2.jpg",13);
insert into Tbl_Imagen(extencion,fk_noticia) values ("assets/Recursos/Images/aoeIII3.jpg",13);
/*--------------------------------------------------------------------------------------------------*/

/*Favoritos*/
insert into Tbl_Guardadas (etiqueta,fk_usuario,fk_noticia) values ("Favoritos","edgar_donato@outlook.com", 1);
insert into Tbl_Guardadas (etiqueta,fk_usuario,fk_noticia) values ("Favoritos","edgar_donato@outlook.com", 2);
insert into Tbl_Guardadas (etiqueta,fk_usuario,fk_noticia) values ("Favoritos","edgar_donato@outlook.com", 3);

/*Ver Mas tarde*/
insert into Tbl_Guardadas (etiqueta,fk_usuario,fk_noticia) values ("Despues","Jerson@outlook.com", 1);
insert into Tbl_Guardadas (etiqueta,fk_usuario,fk_noticia) values ("Despues","Jerson@outlook.com", 2);
insert into Tbl_Guardadas (etiqueta,fk_usuario,fk_noticia) values ("Despues","Jerson@outlook.com", 3);
