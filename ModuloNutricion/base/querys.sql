drop database NutricionUsalud;
create database NutricionUsalud;

GRANT ALL PRIVILEGES  ON NutricionUsalud.* TO 'nutricionprueba'@'localhost'  
IDENTIFIED BY 'nutri374!';
GRANT ALL PRIVILEGES ON NutricionUsalud.* TO 'nutricionprueba'@'127.0.0.1'  
IDENTIFIED BY 'nutri374!';

Use NutricionUsalud;


insert into PERMISO(nombre) values('insertar');
insert into ROL(nombre) values('Nutricionista'),('Administrador');

insert into PERMISO_has_ROL(PERMISO_idPERMISO,ROL_idROL) values(1,1);

insert into USUARIO(usuario,password,nombre,correo,estado,ROL_idROL) 
values('may','374','Maynor De La Rosa','prueba@correo.com','activo',1),
('dmorales','123','Danilo Morales','dmorales@correo.com','activo',2),
('marialopez','698','Maria Lopez','maria@correo.com','inactivo',1),
('jperez','699','Juan Perez','jperez@correo.com','inactivo',2);


insert into FACULTAD(nombre) values('Humanidades');


insert into PACIENTE(idPACIENTE,usuario,password,nombre,fecha_nacimiento,sexo,estado,FACULTAD_idFACULTAD) 
values(201020698,'may','374','Maynor De La Rosa','1990-12-09','Masculino','activo',1);

insert into TIPO_EXAMEN(nombre) values('Ingreso'),('Primera consulta'),('Reconsulta');

insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(0,18.5,'Bajo Peso');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(18.6,24.9,'Peso Normal');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(25,29.9,'Sobrepeso');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(30,34.9,'Obesidad I');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(35,39.9,'Obesidad II');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(40,1000,'Obesidad III');

insert into MULTIFASICO(fecha,talla,peso,IMC,peso_ideal,peso_maximo,tricipital,subescapular,abdomen,TIPO_EXAMEN_idTIPO_EXAMEN,DIAGNOSTICO_idDIAGNOSTICO,PACIENTE_idPACIENTE,USUARIO_idUSUARIO) 
values(CURDATE(),1,12,34,45,2,3,2,3,1,1,201020698,1);


insert into GrupoAlimenticio(nombre) values('Lacteos bajos en grasa'),('Lacteos enteros'),('Vegetales'),('Frutas')
                        ,('Cereales'),('Carnes'),('Grasa'),('Azucares');

insert into ALIMENTO(nombre,caloria,imagen,GrupoAlimenticio_idGrupoAlimenticio) values('pera',23,'im',1);
insert into ALIMENTO(nombre,caloria,imagen,GrupoAlimenticio_idGrupoAlimenticio) values('manzana',43,'im',1);
insert into ALIMENTO(nombre,caloria,imagen,GrupoAlimenticio_idGrupoAlimenticio) values('melon',53,'im',1);
insert into ALIMENTO(nombre,caloria,imagen,GrupoAlimenticio_idGrupoAlimenticio) values('platano',63,'im',1);

insert into ESTABLECIMIENTO(nombre, tipo) values('casa','lugar');
insert into ESTABLECIMIENTO(nombre, tipo) values('trabajo','lugar');
insert into ESTABLECIMIENTO(nombre, tipo) values('otros','lugar');

insert into ESTABLECIMIENTO(nombre, tipo) values('casa','origen');
insert into ESTABLECIMIENTO(nombre, tipo) values('cafeteria','origen');
insert into ESTABLECIMIENTO(nombre, tipo) values('caseta','origen');
insert into ESTABLECIMIENTO(nombre, tipo) values('chiclero','origen');

insert into ALIMENTO_FRECUENCIA(alimento) values('verdura'),('fruta'),('carne'),('lacteo'),('hamburguesa'),
                        ('snack'),('refresco'),('galleta'),('dulce'),('embutido'),
                        ('sopa'),('fritura'),('tortilla'),('papa'),('pasta'),
                        ('arroz'),('frijol'),('pan'),('huevo');
                        
insert into TIEMPO_COMIDA(comida) values('Desayuno'),('Refaccion AM'),('Almuerzo'),('Refaccion PM'),('Cena');

insert into PORCION(nombre) values('u'),('taza'),('cda/taza'),('rod'),('vaso'),('barra'),('paq'),('cda'),('onz'),('cdta'),('und'),('ml');

INSERT INTO DIETA VALUES (1,'Dietas Estandarizadas',58,18,24,'Actualizado por Keren'),(2,'Dietas Estandarizadas Hiperproteicas',54,19,27,'Actualizado por Keren'),(3,'Dietas Estandarizadas Hipograsa',62,18,20,'Actualizado por Keren');

INSERT INTO TIPO_DIETA VALUES (1,1,1200,1),(1,1,1300,1),(1,1,1400,1),(1,1,1500,1),(1,1,1600,2),(1,1,1700,2),(1,1,1800,1),(1,1,1900,2),(1,1,2000,3),(1,2,1500,1),(1,2,1600,2),(1,2,1700,2),(1,2,1800,2),(1,2,1900,2),(1,2,2000,3),(1,2,2100,3),(1,2,2200,3),(1,2,2300,2),(1,2,2400,3),(1,3,1200,1),(1,3,1400,1),(1,3,1500,1),(1,3,1600,2),(1,3,1700,2),(1,3,1800,2),(1,3,1900,2),(1,3,2000,2),(2,1,1200,0),(2,1,1300,0),(2,1,1400,0),(2,1,1500,0),(2,1,1600,0),(2,1,1700,0),(2,1,1800,0),(2,1,1900,0),(2,1,2000,0),(2,2,1500,0),(2,2,1600,0),(2,2,1700,0),(2,2,1800,0),(2,2,1900,0),(2,2,2000,0),(2,2,2100,0),(2,2,2200,0),(2,2,2300,0),(2,2,2400,0),(2,3,1200,0),(2,3,1400,0),(2,3,1500,0),(2,3,1600,0),(2,3,1700,0),(2,3,1800,0),(2,3,1900,0),(2,3,2000,0),(3,1,1200,4),(3,1,1300,4),(3,1,1400,4),(3,1,1500,6),(3,1,1600,6),(3,1,1700,5),(3,1,1800,6),(3,1,1900,8),(3,1,2000,8),(3,2,1500,4),(3,2,1600,4),(3,2,1700,5),(3,2,1800,5),(3,2,1900,5),(3,2,2000,5),(3,2,2100,6),(3,2,2200,6),(3,2,2300,7),(3,2,2400,7),(3,3,1200,4),(3,3,1400,7),(3,3,1500,8),(3,3,1600,7),(3,3,1700,8),(3,3,1800,7),(3,3,1900,6),(3,3,2000,7),(4,1,1200,4),(4,1,1300,4),(4,1,1400,4),(4,1,1500,5),(4,1,1600,4),(4,1,1700,5),(4,1,1800,5),(4,1,1900,6),(4,1,2000,6),(4,2,1500,3),(4,2,1600,5),(4,2,1700,5),(4,2,1800,5),(4,2,1900,5),(4,2,2000,6),(4,2,2100,5),(4,2,2200,7),(4,2,2300,7),(4,2,2400,7),(4,3,1200,5),(4,3,1400,5),(4,3,1500,4),(4,3,1600,5),(4,3,1700,5),(4,3,1800,6),(4,3,1900,6),(4,3,2000,7),(5,1,1200,4),(5,1,1300,6),(5,1,1400,6),(5,1,1500,5),(5,1,1600,6),(5,1,1700,6),(5,1,1800,8),(5,1,1900,6),(5,1,2000,6),(5,2,1500,8),(5,2,1600,6),(5,2,1700,6),(5,2,1800,7),(5,2,1900,7),(5,2,2000,7),(5,2,2100,8),(5,2,2200,7),(5,2,2300,8),(5,2,2400,8),(5,3,1200,5),(5,3,1400,6),(5,3,1500,7),(5,3,1600,7),(5,3,1700,7),(5,3,1800,7),(5,3,1900,8),(5,3,2000,8),(6,1,1200,4),(6,1,1300,4),(6,1,1400,5),(6,1,1500,5),(6,1,1600,5),(6,1,1700,5),(6,1,1800,6),(6,1,1900,6),(6,1,2000,5),(6,2,1500,6),(6,2,1600,6),(6,2,1700,6),(6,2,1800,7),(6,2,1900,7),(6,2,2000,7),(6,2,2100,7),(6,2,2200,8),(6,2,2300,9),(6,2,2400,9),(6,3,1200,4),(6,3,1400,4),(6,3,1500,4),(6,3,1600,4),(6,3,1700,4),(6,3,1800,5),(6,3,1900,6),(6,3,2000,6),(7,1,1200,2),(7,1,1300,2),(7,1,1400,2),(7,1,1500,3),(7,1,1600,3),(7,1,1700,4),(7,1,1800,4),(7,1,1900,3),(7,1,2000,4),(7,2,1500,3),(7,2,1600,3),(7,2,1700,3),(7,2,1800,3),(7,2,1900,4),(7,2,2000,4),(7,2,2100,4),(7,2,2200,4),(7,2,2300,4),(7,2,2400,4),(7,3,1200,1),(7,3,1400,2),(7,3,1500,2),(7,3,1600,2),(7,3,1700,3),(7,3,1800,2),(7,3,1900,2),(7,3,2000,2),(8,1,1200,3),(8,1,1300,2),(8,1,1400,3),(8,1,1500,3),(8,1,1600,3),(8,1,1700,3),(8,1,1800,2),(8,1,1900,4),(8,1,2000,4),(8,2,1500,2),(8,2,1600,2),(8,2,1700,2),(8,2,1800,2),(8,2,1900,2),(8,2,2000,2),(8,2,2100,3),(8,2,2200,2),(8,2,2300,2),(8,2,2400,2),(8,3,1200,1),(8,3,1400,1),(8,3,1500,2),(8,3,1600,1),(8,3,1700,2),(8,3,1800,3),(8,3,1900,3),(8,3,2000,3);

INSERT INTO TRIFOLIAR(estado, titulo, descripcion, contenido, archivo, fecha_inicio, fecha_fin) 
VALUES('activo','Prueba Mensaje','Resumen nutricion','La nutricion es alimento','home algo','2017-01-10','2017-01-20');
