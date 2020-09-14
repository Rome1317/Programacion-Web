use CT_DB;

create procedure prc_guardadas(
in _id_guardadas	int, 		
in _etiqueta		varchar(50),
in _fk_usuario		varchar(50),
in _fk_noticia		int,
in accion		varchar(20)
)
begin
	case accion
    when 'nuevo' then
		insert into Tbl_Guardadas (etiqueta, fk_usuario, fk_noticia) values (_etiqueta, _fk_usuario, _fk_noticia);
	when 'editar' then
		update Tbl_Guardadas 
        set etiqueta = _etiqueta, fk_usuario = _fk_usuario, fk_noticia = _fk_noticia
		where id_guardadas = _id_guardadas
	when 'eliminar' then
		delete from Tbl_Guardadas 
        where id_guardadas = _id_guardadas
	when 'consultar' then
		select * from Tbl_Guardadas 
        where id_guardadas = _id_guardadas
	end case
end
