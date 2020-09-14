use CT_DB;

create procedure prc_noticia(
in _id_noticia		int,
in _titulo			varchar(50),
in _descripcion		varchar(100),
in _noticia			varchar(1000),
in _aprovado		bool,
in _fk_usuario		varchar(50),
in accion			varchar(20)		
)
begin
	case accion
    when 'nuevo' then
		insert into Tbl_Noticia (titulo, descripcion, noticia, aprovado, fk_usuario)
					values (_titulo, _descripcion, _noticia, _aprovado, _fk_usuario);
	when 'editar' then
		update Tbl_Noticia 
        set titulo = _titulo, descripcion = _descripcion, noticia = _noticia, aprovado = _aprovado,
			fk_usuario = _fk_usuario
		where id_noticia = _id_noticia;
	when 'eliminar' then
		delete from Tbl_Noticia 
        where id_noticia = _id_noticia;
	when 'consultar' then
		select * from Tbl_Noticia 
        where id_noticia = _id_noticia;
	end case;
end