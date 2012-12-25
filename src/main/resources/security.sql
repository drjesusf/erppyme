CREATE TABLE USUARIO(
	CODUSUARIO integer NOT NULL AUTO_INCREMENT,
	NOMBRES varchar(50) NOT NULL,
	APELLIDOS varchar(50) NOT NULL,
	USUARIO varchar(20) NOT NULL,
	PASSWORD VARCHAR(20) NOT NULL,
	primary key(CODUSUARIO),
	unique(USUARIO)
);

INSERT INTO `erppyme`.`usuario` (`NOMBRES`, `APELLIDOS`, `USUARIO`, `PASSWORD`) VALUES ('Jesus ', 'Ramirez', 'jramirez', '1234');
INSERT INTO `erppyme`.`usuario` (`NOMBRES`, `APELLIDOS`, `USUARIO`, `PASSWORD`) VALUES ('Diego', 'Cubas', 'dcubas', '1234');

CREATE  TABLE `erppyme`.`ROL` (
  `CODROL` INT NOT NULL AUTO_INCREMENT ,
  `DESCRIPCION` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`CODROL`) 
);

INSERT INTO `erppyme`.`rol` (`DESCRIPCION`) VALUES ('ROL_ADMIN');
INSERT INTO `erppyme`.`rol` (`DESCRIPCION`) VALUES ('ROL_USER');

CREATE  TABLE `erppyme`.`ROLESPORUSUARIO` (
  `CODROLESPORUSUARIO` INT NOT NULL AUTO_INCREMENT ,
  `CODUSUARIO` INT NOT NULL ,
  `CODROL` INT NOT NULL ,
  PRIMARY KEY (`CODROLESPORUSUARIO`) 
);

INSERT INTO `erppyme`.`ROLESPORUSUARIO` (`CODUSUARIO`, `CODROL`) VALUES ('1', '1');
INSERT INTO `erppyme`.`ROLESPORUSUARIO` (`CODUSUARIO`, `CODROL`) VALUES ('2', '1');
