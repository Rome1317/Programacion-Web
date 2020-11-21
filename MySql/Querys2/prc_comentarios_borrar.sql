CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_comentarios_borrar`(
in _id_comentario int
)
BEGIN
	delete from Tbl_Comentario
    where id_comentario = _id_comentario;
END