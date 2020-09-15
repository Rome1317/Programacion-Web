DROP procedure IF EXISTS `prc_video`;

DELIMITER $$
USE `ct_db`$$
create procedure `prc_video`(
in _id_video	int, 		
in _ulr			varchar(50),
in _fk_noticia	int,
in accion		varchar(20)
)
begin
	case accion
    when 'nuevo' then
		insert into Tbl_Video (ulr, fk_noticia) values (_ulr, _fk_noticia);
	when 'editar' then
		update Tbl_Video 
        set ulr = _ulr, fk_noticia = _fk_noticia
		where id_video = _id_video;
	when 'eliminar' then
		delete from Tbl_Video 
        where id_video = _id_video;
	when 'consultar' then
		select * from Tbl_Video 
        where id_video = _id_video;
	end case;
END$$

DELIMITER ;