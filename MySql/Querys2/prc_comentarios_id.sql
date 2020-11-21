CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_comentarios_id`(
in _id int
)
BEGIN
	select * from Tbl_comentario where fk_noticia = _id;
END