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

insert into PORCION(nombre) values('U'),('ml');
INSERT INTO TRIFOLIAR(estado, titulo, descripcion, contenido, archivo, fecha_inicio, fecha_fin) 
VALUES('activo','Prueba Mensaje','Resumen nutricion','La nutricion es alimento','home algo','2017-01-10','2017-01-20');
