use CT_DB;

create table if not exists Tbl_Usuario(
	email 		varchar(50) primary key not null,
    username 	varchar(50) not null,
    pass		varchar(50)	not null,
    facebook	varchar(50) null,
    twitter		varchar(50)	null,
    imagen		varchar(50) default 'assets/Recursos/Images/perfil.jpg',
    rol			varchar(50) not null,
    baneado		bool		default 0
);

create table if not exists Tbl_Noticia(
	id_noticia		int 			auto_increment	primary key,
	titulo			varchar(50) 	not null,
    descripcion		varchar(100) 	not null,
    noticia			varchar(1000) 	not null,
    aprovado		bool 			default 0,
    fk_usuario		varchar(50)		not null,
    likes			int				default 0 ,
    fecha			datetime		default now(),
    resumen			varchar(1000)	not null,
	foreign key (fk_usuario) references Tbl_Usuario(email)
);

create table if not exists Tbl_Categoria(
	id_categoria	int auto_increment	primary key,
    nombre			varchar(50) not null,
    descripcion		varchar(200) null
);

create table if not exists Tbl_Not_Cat(
	id_not_cat		int 	auto_increment	primary key not null,
	fk_noticia		int 	not null,
    fk_categoria	int 	not null,
    foreign key (fk_noticia) references Tbl_Noticia(id_noticia),
    foreign key (fk_categoria) references Tbl_Categoria(id_categoria)
);

create table if not exists Tbl_Imagen(
	id_imagen	int 		auto_increment	primary key,
    extencion	varchar(500) not null,
    fk_noticia	int 		not null,
	foreign key (fk_noticia) references Tbl_Noticia(id_noticia)
);

create table if not exists Tbl_Video(
	id_video	int auto_increment	primary key not null,
    ulr			varchar(50) not null,
    fk_noticia	int not null,
    foreign key (fk_noticia) references Tbl_Noticia(id_noticia)
);

create table if not exists Tbl_Comentario(
	id_comentario	int auto_increment	primary key not null,
    comentario		varchar(200) not null,
	fk_usuario		varchar(50) not null,
    fk_noticia		int not null,
	foreign key (fk_usuario) references Tbl_Usuario(email),
	foreign key (fk_noticia) references Tbl_Noticia(id_noticia)
);
alter table tbl_comentario add id_padre int default 0;
create table if not exists Tbl_Guardadas(
	id_guardadas	int auto_increment	primary key not null,
    etiqueta		varchar(50) not null, /*Favoritos o ver mas tarde*/
    fk_usuario		varchar(50) not null,
	fk_noticia		int not null,
    foreign key (fk_usuario) references Tbl_Usuario(email),
    foreign key (fk_noticia) references Tbl_Noticia(id_noticia)
);

create table if not exists Tbl_NoticiaDenegada(
	fk_noticia 		int 			primary key not null,
	comentario 		varchar(1000) 	not null,
	fk_usuario		varchar(50)		not null,
    
    foreign key (fk_usuario) references Tbl_Usuario(email),
    foreign key (fk_noticia) references Tbl_Noticia(id_noticia)

);