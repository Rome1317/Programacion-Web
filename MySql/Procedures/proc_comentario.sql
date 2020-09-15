USE `ct_db`;
DROP procedure IF EXISTS `prc_comentario`;

DELIMITER $$
USE `ct_db`$$
create procedure `prc_comentario`(
in _id_comentario	int, 		
in _comentario		varchar(200),
in _fk_usuario		varchar(50),
in _fk_noticia		int,
in accion		varchar(20)
)
begin
	case accion
    when 'nuevo' then
		insert into Tbl_Comentario (comentario, fk_usuario, fk_noticia) values (_comentario, _fk_usuario, _fk_noticia);
	when 'editar' then
		update Tbl_Comentario 
        set comentario = _comentario, fk_usuario = _fk_usuario, fk_noticia = _fk_noticia
		where id_comentario = _id_comentario;
	when 'eliminar' then
		delete from Tbl_Comentario 
        where id_comentario = _id_comentario;
	when 'consultar' then
		select * from Tbl_Comentario 
        where id_comentario = _id_comentario;
	end case;
END$$

DELIMITER ;