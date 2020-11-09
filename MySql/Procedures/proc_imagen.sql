DROP procedure IF EXISTS `prc_imagen`;
DELIMITER $$
USE `ct_db`$$
create procedure `prc_imagen`(
in _id_imagen	int, 		
in _extencion	varchar(50),
in _fk_noticia	int,
in accion		varchar(20)
)
begin
	case accion
    when 'nuevo' then
		insert into Tbl_Imagen (extencion, fk_noticia) values (_extencion, _fk_noticia);
	when 'editar' then
		update Tbl_Imagen 
        set extencion = _extencion, fk_noticia = _fk_noticia
		where id_imagen = _id_imagen;
	when 'eliminar' then
		delete from Tbl_Imagen 
        where id_imagen = _id_imagen;
	when 'consultar' then
		select * from Tbl_Imagen 
        where id_imagen = _id_imagen;
	end case;
END$$

create procedure `prc_imagen_home`(
in _fk_noticia int
)
begin
	select * from Tbl_Imagen
    where fk_noticia = _fk_noticia
    LIMIT 1;
END$$

DELIMITER ;


