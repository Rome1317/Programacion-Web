DROP procedure IF EXISTS `prc_not_cat`;

DELIMITER $$
USE `ct_db`$$
create procedure `prc_not_cat`(
in _id_not_cat		int,
in _fk_noticia		int,
in _fk_categoria	int,
in accion		varchar(20)
)
begin
	case accion
    when 'nuevo' then
		insert into Tbl_Not_Cat (fk_noticia, fk_categoria)
					values (_fk_noticia, _fk_categoria);
	when 'editar' then
		update Tbl_Not_Cat 
        set fk_noticia = _fk_noticia, fk_categoria = _fk_categoria
		where id_not_cat = _id_not_cat;
	when 'eliminar' then
		delete from Tbl_Not_Cat 
        where id_not_cat = _id_not_cat;
	when 'consultar' then
		select * from Tbl_Not_Cat 
       where id_not_cat = _id_not_cat;
	end case;
END$$

DELIMITER ;