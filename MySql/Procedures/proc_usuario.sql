USE `ct_db`;
DROP procedure IF EXISTS `prc_usuario`;

DELIMITER $$
USE `ct_db`$$
CREATE PROCEDURE `prc_usuario` (
in _email 		varchar(50),
in _username 	varchar(50),
in _pass		varchar(50),
in _facebook	varchar(50),
in _twitter		varchar(50),
in _imagen		varchar(50),
in _rol			varchar(50),
in accion		varchar(20)
)
BEGIN
case accion
    when 'nuevo' then
		insert into Tbl_Usuario (email, username, pass, facebook, twitter, imagen, rol)
					values (_email, _username, _pass, _facebook, _twitter, _imagen, _rol);
	when 'editar' then
		update Tbl_Usuario 
        set email = _email, username = _username, pass = _pass, facebook = _facebook,
			twitter = _twitter, imagen =_imagen, rol = _rol
		where email = _email;
	when 'eliminar' then
		delete from Tbl_Usuario 
        where email = _email;
	when 'consultar' then
		select * from Tbl_Usuario 
        where email = _email;
	when 'login' then
		select * from Tbl_Usuario 
        where email = _email and pass = _pass;
end case;
END$$

DELIMITER ;
