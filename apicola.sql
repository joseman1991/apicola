drop database if exists apicola;

create database apicola; 

use apicola;

create table usuarios(
 idusuario int auto_increment primary key,
 email varchar(35) unique,
 clave varchar(16),
 nombre varchar(35),
 apellido varchar(35) 
);


-- ----------------------------------------------------------------
create table provincias (
 idprovincia varchar(2) primary key,
 nombreprovincia varchar(45)
);

-- ----------------------------------------------------------------


CREATE TABLE IF NOT EXISTS sector (
  idsector INT NOT NULL AUTO_INCREMENT primary key,
  nombre VARCHAR(45) NOT NULL,
  idprovincia VARCHAR(2) NOT NULL,
  rcto VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  email VARCHAR(50) NOT NULL,
  observacion LONGTEXT NOT NULL,
  responsable VARCHAR(50) NOT NULL,
  constraint fk_provincia_sector foreign key (idprovincia) references provincias(idprovincia) on update cascade on delete restrict
  );


-- ----------------------------------------------------------------

create table origen(
 idorigen int primary key,
 descripcion varchar(10)
);


 insert into origen values(1,'COMPRA');
 insert into origen values (2,'CAPTURA');
 
 -- ----------------------------------------------------------------

CREATE TABLE IF NOT EXISTS colmena (
  idcolmena INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idarea INT NOT NULL,
  nmarcos INT NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  nalza INT NOT NULL,
  idorigen int NOT NULL,
  precio float not null,
  fecha DATE NOT NULL,
  idreina INT NOT NULL,
  fechareina DATE NOT NULL, 
  CONSTRAINT fk_colmena_sector
    FOREIGN KEY (idarea)
    REFERENCES sector (idsector)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    constraint fk_colmena_origen 
    foreign key (idorigen) 
	 references origen(idorigen) on update cascade on delete restrict    
   );

-- ----------------------------------------------------------------

CREATE TABLE IF NOT EXISTS division (
  iddivision INT NOT NULL AUTO_INCREMENT,
  idcolmena INT NOT NULL,
  fecha DATE NOT NULL,
  PRIMARY KEY (iddivision),  
  CONSTRAINT fk_division_colmena
    FOREIGN KEY (idcolmena)
    REFERENCES colmena (idcolmena)
    ON DELETE restrict
    ON UPDATE CASCADE
);

-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS mantenimiento (
  idmantenimiento INT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(45) NOT NULL,
  fecha DATE NOT NULL,
  idobrero INT NOT NULL,
  idcolmena INT NOT NULL,
  alimentacion TINYINT NOT NULL,
  PRIMARY KEY (idmantenimiento),  
  CONSTRAINT fk_mantenimiento_colmena
    FOREIGN KEY (idcolmena)
    REFERENCES colmena (idcolmena)
    ON DELETE restrict
    ON UPDATE cascade
	);
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS cosecha (
  idcosecha INT NOT NULL AUTO_INCREMENT,
  idcolmena INT NOT NULL,
  idobrero INT NOT NULL,
  marcos INT NOT NULL,
  pesovacio float NOT NULL,
  pesolleno float NOT NULL,
  fecha DATE NOT NULL,
  tipoalza VARCHAR(45) NOT NULL,
  PRIMARY KEY (idcosecha),  
  CONSTRAINT fk_cosecha_colmena
    FOREIGN KEY (idcolmena)
    REFERENCES colmena (idcolmena)
    ON DELETE restrict
    ON UPDATE cascade
	 );
-- ----------------------------------------------------------------
  
insert into provincias values('01','AZUAY');
insert into provincias values('02','BOLIVAR');
insert into provincias values('03','CAÑAR');
insert into provincias values('04','CARCHI');
insert into provincias values('05','COTOPAXI');
insert into provincias values('06','CHIMBORAZO');
insert into provincias values('07','EL ORO');
insert into provincias values('08','ESMERALDAS');
insert into provincias values('09','GUAYAS');
insert into provincias values('10','IMBABURA');
insert into provincias values('11','LOJA');
insert into provincias values('12','LOS RÍOS');
insert into provincias values('13','MANABI');
insert into provincias values('14','MORONA SANTIAGO');
insert into provincias values('15','NAPO');
insert into provincias values('16','PASTAZA');
insert into provincias values('17','PICHINCHA');
insert into provincias values('18','TUNGURAHUA');
insert into provincias values('19','ZAMORA CHINCHIPE');
insert into provincias values('20','GALAPAGOS');
insert into provincias values('21','SUCUMBIOS');
insert into provincias values('22','ORELLANA');
insert into provincias values('23','SANTO DOMINGO DE LOS TSACHILAS');
insert into provincias values('24','SANTA ELENA');
insert into provincias values('90','ZONAS NO DELIMITADAS');
  
  