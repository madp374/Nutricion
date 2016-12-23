drop database NutricionUsalud;
create database NutricionUsalud;

GRANT ALL PRIVILEGES  ON NutricionUsalud.* TO 'nutricionprueba'@'localhost'  
IDENTIFIED BY 'nutri374!';
GRANT ALL PRIVILEGES ON NutricionUsalud.* TO 'nutricionprueba'@'127.0.0.1'  
IDENTIFIED BY 'nutri374!';

Use NutricionUsalud;


insert into PERMISO(nombre) values('insertar');
insert into ROL(nombre) values('Nutricionista');

insert into PERMISO_has_ROL(PERMISO_idPERMISO,ROL_idROL) values(1,1);

insert into USUARIO(usuario,password,nombre,correo,estado,ROL_idROL) values('may','374','Maynor De La Rosa','prueba@correo.com','activo',1);


insert into FACULTAD(nombre) values('Humanidades');

insert into PACIENTE(idPACIENTE,usuario,password,nombre,fecha_nacimiento,sexo,estado,FACULTAD_idFACULTAD) 
values(201020698,'may','374','Maynor De La Rosa','1990-12-09','M','activo',1);

insert into TIPO_EXAMEN(nombre) values('Ingreso');

insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(0,18.5,'Bajo Peso');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(18.6,24.9,'Peso Normal');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(25,29.9,'Sobrepeso');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(30,34.9,'Obesidad I');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(35,39.9,'Obesidad II');
insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(40,1000,'Obesidad III');

insert into MULTIFASICO(fecha,talla,peso,IMC,peso_ideal,peso_maximo,tricipital,subescapular,TIPO_EXAMEN_idTIPO_EXAMEN,DIAGNOSTICO_idDIAGNOSTICO,PACIENTE_idPACIENTE) 
values(CURDATE(),1,12,34,45,2,3,2,1,1,201020698);

insert into DIAGNOSTICO(rango_inicio,rango_fin,descripcion) values(0,18.5,'Bajo Peso');

insert into GrupoAlimenticio(nombre) values("Fruta");

insert into ALIMENTO(nombre,caloria,imagen,GrupoAlimenticio_idGrupoAlimenticio) values('pera',23,'im',1);
insert into ALIMENTO(nombre,caloria,imagen,GrupoAlimenticio_idGrupoAlimenticio) values('manzana',43,'im',1);
insert into ALIMENTO(nombre,caloria,imagen,GrupoAlimenticio_idGrupoAlimenticio) values('melon',53,'im',1);
insert into ALIMENTO(nombre,caloria,imagen,GrupoAlimenticio_idGrupoAlimenticio) values('platano',63,'im',1);
select LAST_INSERT_ID();

select * from ALIMENTO;

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
                        
insert into TIEMPO_COMIDA(comida) values('desayuno'),('refaccion am'),('almuerzo'),('refaccion pm'),('cena');

