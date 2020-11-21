CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_comentarios_nuevo`(
in _email varchar(50),
in _id_noticia int,
in _comentario varchar(200),
in _id_padre int
)
BEGIN
	insert into Tbl_Comentario (comentario, fk_usuario, fk_noticia, id_padre)
    values (_comentario, _email, _id_noticia, _id_padre);
END