<<<<<<< HEAD
<<<<<<< HEAD
CREATE DATABASE  IF NOT EXISTS `erppyme` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `erppyme`;

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `CODCLIENTE` int(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(50) DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `CODTIPODOCUMENTOIDENTIFICACION` int(6) DEFAULT NULL,
  `NRODOCUMENTOIDENTIFICACION` int(15) NOT NULL,
  `TELEFONO` int(15) DEFAULT NULL,
  `CELULAR` int(11) DEFAULT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODCLIENTE`),
  KEY `FK_TIPODOCIDENT_idx` (`CODTIPODOCUMENTOIDENTIFICACION`),
  CONSTRAINT `FK_TIPODOCIDENT` FOREIGN KEY (`CODTIPODOCUMENTOIDENTIFICACION`) REFERENCES `tipodocumentoidentificacion` (`CODTIPODOCUMENTOIDENTIFICACION`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Clientes';

INSERT INTO `clientes` VALUES (1,'1','1','1',1,1,1,1,'ACT');

DROP TABLE IF EXISTS `detallesdocumentoventaproducto`;
CREATE TABLE `detallesdocumentoventaproducto` (
  `CODPRODUCTO` int(6) NOT NULL,
  `CODDOCUMENTOVENTA` int(6) NOT NULL,
  `CANTIDADUNIDADESPRODUCTO` int(11) NOT NULL,
  `PRECIOPRODUCTO` decimal(10,2) NOT NULL,
  `ESTADO` varchar(3) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  `CODDETALLESDOCUMENTOVENTAPRODUCTO` int(11) NOT NULL,
  PRIMARY KEY (`CODDETALLESDOCUMENTOVENTAPRODUCTO`),
  KEY `CODPRODUCTO` (`CODPRODUCTO`),
  KEY `CODDOCUMENTOVENTA` (`CODDOCUMENTOVENTA`),
  CONSTRAINT `detallesdocumentoventaproducto_ibfk_1` FOREIGN KEY (`CODDOCUMENTOVENTA`) REFERENCES `documentosventas` (`CODVENTA`),
  CONSTRAINT `detallesdocumentoventaproducto_ibfk_2` FOREIGN KEY (`CODPRODUCTO`) REFERENCES `productos` (`CODPRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta tabla guarda el detalle de los documentos generados en una venta';

DROP TABLE IF EXISTS `documentosventas`;
CREATE TABLE `documentosventas` (
  `CODDOCUMENTOVENTA` int(6) NOT NULL AUTO_INCREMENT,
  `CODVENTA` int(6) NOT NULL,
  `CODTIPODOCUMENTOVENTA` int(6) NOT NULL,
  `NRODOCUMENTO` varchar(50) DEFAULT NULL,
  `FECHAEMISION` datetime NOT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODDOCUMENTOVENTA`),
  KEY `CODVENTA` (`CODVENTA`),
  KEY `CODTIPODOCUMENTOVENTA` (`CODTIPODOCUMENTOVENTA`),
  CONSTRAINT `DOCUMENTOSVENTAS_ibfk_1` FOREIGN KEY (`CODVENTA`) REFERENCES `ventas` (`CODVENTA`),
  CONSTRAINT `DOCUMENTOSVENTAS_ibfk_2` FOREIGN KEY (`CODTIPODOCUMENTOVENTA`) REFERENCES `tiposdocumentoventa` (`CODTIPODOCUMENTOVENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla donde se guardan los tipos de documentos que se generan en vent';

DROP TABLE IF EXISTS `productos`;
=======
CREATE DATABASE  IF NOT EXISTS `ERPPYME` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `erppyme`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86
DROP TABLE IF EXISTS `tipodocumentoidentificacion`;

CREATE TABLE `tipodocumentoidentificacion` (
  `CODTIPODOCUMENTOIDENTIFICACION` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CODTIPODOCUMENTOIDENTIFICACION`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tiposdocumentoventa`;

CREATE TABLE `tiposdocumentoventa` (
  `CODTIPODOCUMENTOVENTA` int(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODTIPODOCUMENTOVENTA`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta tabla guarda los tipos de documento de venta (factura, guia, recibo, etc)';

DROP TABLE IF EXISTS `productos`;

>>>>>>> 3ff8fb3f5c757fb66c1b840014827a32313c52fb
CREATE TABLE `productos` (
  `CODPRODUCTO` int(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL,
  `CODUNIDADMEDIDA` int(6) NOT NULL,
  `ESTADO` varchar(3) NOT NULL,
<<<<<<< HEAD
  `PRECIOREFERENCIAL` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CODPRODUCTO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Productos';

INSERT INTO `productos` VALUES (2,'2','2',2,'ACT',2.00),(3,'3','3',3,'ACT',3.00),(4,'4','4',4,'ACT',4.00),(5,'11','11',11,'ACT',11.00);

DROP TABLE IF EXISTS `tipocliente`;
CREATE TABLE `tipocliente` (
  `CODTIPOCLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`CODTIPOCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla que guarda los tipos de clientes';


DROP TABLE IF EXISTS `tipodocumentoidentificacion`;
CREATE TABLE `tipodocumentoidentificacion` (
  `CODTIPODOCUMENTOIDENTIFICACION` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CODTIPODOCUMENTOIDENTIFICACION`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `tipodocumentoidentificacion` VALUES (1,'1');

DROP TABLE IF EXISTS `tiposdocumentoventa`;
CREATE TABLE `tiposdocumentoventa` (
  `CODTIPODOCUMENTOVENTA` int(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODTIPODOCUMENTOVENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta tabla guarda los tipos de documento de venta (factura, guia, recibo, etc)';

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
=======
  PRIMARY KEY (`CODPRODUCTO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Productos';


DROP TABLE IF EXISTS `CLIENTES`;

CREATE TABLE `CLIENTES` (
  `CODCLIENTE` int(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(50) DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `CODTIPODOCUMENTOIDENTIFICACION` int(6) DEFAULT NULL,
  `NRODOCUMENTOIDENTIFICACION` int(15) NOT NULL,
  `TELEFONO` int(15) DEFAULT NULL,
  `CELULAR` int(11) DEFAULT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODCLIENTE`),
  KEY `FK_TIPODOCIDENT_idx` (`CODTIPODOCUMENTOIDENTIFICACION`),
  CONSTRAINT `FK_TIPODOCIDENT` FOREIGN KEY (`CODTIPODOCUMENTOIDENTIFICACION`) REFERENCES `tipodocumentoidentificacion` (`CODTIPODOCUMENTOIDENTIFICACION`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Clientes';

DROP TABLE IF EXISTS `ventas`; 

CREATE TABLE IF NOT EXISTS `ventas` (
>>>>>>> 3ff8fb3f5c757fb66c1b840014827a32313c52fb
  `CODVENTA` int(6) NOT NULL AUTO_INCREMENT,
  `CODCLIENTE` int(6) NOT NULL,
  `FECHAVENTA` datetime DEFAULT NULL,
  `MONTOBRUTO` decimal(10,2) NOT NULL,
  `MONTONETO` decimal(10,2) NOT NULL,
  `DESCUENTO` decimal(10,2) NOT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODVENTA`),
  KEY `CODCLIENTE` (`CODCLIENTE`),
<<<<<<< HEAD
  CONSTRAINT `VENTAS_ibfk_1` FOREIGN KEY (`CODCLIENTE`) REFERENCES `clientes` (`CODCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Clientes';


=======
  CONSTRAINT `VENTAS_ibfk_1` FOREIGN KEY (`CODCLIENTE`) REFERENCES `CLIENTES` (`CODCLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Clientes';;


DROP TABLE IF EXISTS `DOCUMENTOSVENTAS`;

CREATE TABLE `DOCUMENTOSVENTAS` (
  `CODDOCUMENTOVENTA` int(6) NOT NULL AUTO_INCREMENT,
  `CODVENTA` int(6) NOT NULL,
  `CODTIPODOCUMENTOVENTA` int(6) NOT NULL,
  `NRODOCUMENTO` varchar(50) DEFAULT NULL,
  `FECHAEMISION` datetime NOT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODDOCUMENTOVENTA`),
  KEY `CODVENTA` (`CODVENTA`),
  KEY `CODTIPODOCUMENTOVENTA` (`CODTIPODOCUMENTOVENTA`),
  CONSTRAINT `DOCUMENTOSVENTAS_ibfk_2` FOREIGN KEY (`CODTIPODOCUMENTOVENTA`) REFERENCES `tiposdocumentoventa` (`CODTIPODOCUMENTOVENTA`),
  CONSTRAINT `DOCUMENTOSVENTAS_ibfk_1` FOREIGN KEY (`CODVENTA`) REFERENCES `ventas` (`CODVENTA`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla donde se guardan los tipos de documentos que se generan en vent';


DROP TABLE IF EXISTS `detallesdocumentoventaproducto`;

CREATE TABLE `detallesdocumentoventaproducto` (
  `CODPRODUCTO` int(6) NOT NULL,
  `CODDOCUMENTOVENTA` int(6) NOT NULL,
  `CANTIDADUNIDADESPRODUCTO` int(11) NOT NULL,
  `PRECIOPRODUCTO` decimal(10,2) NOT NULL,
  `ESTADO` int(11) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  KEY `CODPRODUCTO` (`CODPRODUCTO`),
  KEY `CODDOCUMENTOVENTA` (`CODDOCUMENTOVENTA`),
  CONSTRAINT `detallesdocumentoventaproducto_ibfk_1` FOREIGN KEY (`CODDOCUMENTOVENTA`) REFERENCES `documentosventas` (`CODVENTA`),
  CONSTRAINT `detallesdocumentoventaproducto_ibfk_2` FOREIGN KEY (`CODPRODUCTO`) REFERENCES `productos` (`CODPRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta tabla guarda el detalle de los documentos generados en una venta';
/*!40101 SET character_set_client = @saved_cs_client */;

>>>>>>> 3ff8fb3f5c757fb66c1b840014827a32313c52fb
=======
CREATE DATABASE  IF NOT EXISTS `ERPPYME` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `erppyme`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86
DROP TABLE IF EXISTS `tipodocumentoidentificacion`;
 
CREATE TABLE `tipodocumentoidentificacion` (
  `CODTIPODOCUMENTOIDENTIFICACION` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CODTIPODOCUMENTOIDENTIFICACION`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tiposdocumentoventa`;

CREATE TABLE `tiposdocumentoventa` (
  `CODTIPODOCUMENTOVENTA` int(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODTIPODOCUMENTOVENTA`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta tabla guarda los tipos de documento de venta (factura, guia, recibo, etc)';

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `CODPRODUCTO` int(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL,
  `CODUNIDADMEDIDA` int(6) NOT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODPRODUCTO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Productos';


DROP TABLE IF EXISTS `CLIENTES`;

CREATE TABLE `CLIENTES` (
  `CODCLIENTE` int(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(50) DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `CODTIPODOCUMENTOIDENTIFICACION` int(6) DEFAULT NULL,
  `NRODOCUMENTOIDENTIFICACION` int(15) NOT NULL,
  `TELEFONO` int(15) DEFAULT NULL,
  `CELULAR` int(11) DEFAULT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODCLIENTE`),
  KEY `FK_TIPODOCIDENT_idx` (`CODTIPODOCUMENTOIDENTIFICACION`),
  CONSTRAINT `FK_TIPODOCIDENT` FOREIGN KEY (`CODTIPODOCUMENTOIDENTIFICACION`) REFERENCES `tipodocumentoidentificacion` (`CODTIPODOCUMENTOIDENTIFICACION`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Clientes';

DROP TABLE IF EXISTS `ventas`; 

CREATE TABLE IF NOT EXISTS `ventas` (
  `CODVENTA` int(6) NOT NULL AUTO_INCREMENT,
  `CODCLIENTE` int(6) NOT NULL,
  `FECHAVENTA` datetime DEFAULT NULL,
  `MONTOBRUTO` decimal(10,2) NOT NULL,
  `MONTONETO` decimal(10,2) NOT NULL,
  `DESCUENTO` decimal(10,2) NOT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODVENTA`),
  KEY `CODCLIENTE` (`CODCLIENTE`),
  CONSTRAINT `VENTAS_ibfk_1` FOREIGN KEY (`CODCLIENTE`) REFERENCES `CLIENTES` (`CODCLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla de Clientes';;


DROP TABLE IF EXISTS `DOCUMENTOSVENTAS`;

CREATE TABLE `DOCUMENTOSVENTAS` (
  `CODDOCUMENTOVENTA` int(6) NOT NULL AUTO_INCREMENT,
  `CODVENTA` int(6) NOT NULL,
  `CODTIPODOCUMENTOVENTA` int(6) NOT NULL,
  `NRODOCUMENTO` varchar(50) DEFAULT NULL,
  `FECHAEMISION` datetime NOT NULL,
  `ESTADO` varchar(3) NOT NULL,
  PRIMARY KEY (`CODDOCUMENTOVENTA`),
  KEY `CODVENTA` (`CODVENTA`),
  KEY `CODTIPODOCUMENTOVENTA` (`CODTIPODOCUMENTOVENTA`),
  CONSTRAINT `DOCUMENTOSVENTAS_ibfk_2` FOREIGN KEY (`CODTIPODOCUMENTOVENTA`) REFERENCES `tiposdocumentoventa` (`CODTIPODOCUMENTOVENTA`),
  CONSTRAINT `DOCUMENTOSVENTAS_ibfk_1` FOREIGN KEY (`CODVENTA`) REFERENCES `ventas` (`CODVENTA`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='Esta es la tabla donde se guardan los tipos de documentos que se generan en vent';


DROP TABLE IF EXISTS `detallesdocumentoventaproducto`;

CREATE TABLE `detallesdocumentoventaproducto` (
  `CODPRODUCTO` int(6) NOT NULL,
  `CODDOCUMENTOVENTA` int(6) NOT NULL,
  `CANTIDADUNIDADESPRODUCTO` int(11) NOT NULL,
  `PRECIOPRODUCTO` decimal(10,2) NOT NULL,
  `ESTADO` int(11) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  KEY `CODPRODUCTO` (`CODPRODUCTO`),
  KEY `CODDOCUMENTOVENTA` (`CODDOCUMENTOVENTA`),
  CONSTRAINT `detallesdocumentoventaproducto_ibfk_1` FOREIGN KEY (`CODDOCUMENTOVENTA`) REFERENCES `documentosventas` (`CODVENTA`),
  CONSTRAINT `detallesdocumentoventaproducto_ibfk_2` FOREIGN KEY (`CODPRODUCTO`) REFERENCES `productos` (`CODPRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta tabla guarda el detalle de los documentos generados en una venta';
/*!40101 SET character_set_client = @saved_cs_client */;

>>>>>>> eb62229372cdb2111dd42ccd27331aa6b8a70022