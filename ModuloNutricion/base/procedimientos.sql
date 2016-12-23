DELIMITER $
CREATE PROCEDURE IngresarAntecedenteMedico(IN enfermedad varchar(250) ,
									IN medicamento varchar(250) ,
                                    IN suplemento varchar(250) ,
                                   IN diarrea INT,
                                   IN flatulencia INT,
                                   IN acidez INT,
                                   IN estreñimiento INT,
                                   OUT resultado TEXT)
BEGIN
insert into antecendentes_medicos(enfermedad_actual,medicamento,suplemento,diarrea,flatulencia,acidez,estreñimiento) 
values(enfermedad,medicamento,suplemento,diarrea,flatulencia,acidez,estreñimiento);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;


GRANT EXECUTE ON PROCEDURE NutricionUsalud.IngresarAntecedenteMedico TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.IngresarAntecedenteMedico TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE IngresarEstiloVida(IN fuma INT,
									IN numero_cigarros INT,
                                    IN frec_fuma varchar(250) ,
                                   IN ejercicio INT,
                                   IN tiempo_min INT,
                                   IN frec_ejercicio varchar(250) ,
                                   IN bebida INT,
                                   IN frec_bebida varchar(250) ,
                                   OUT resultado TEXT)
BEGIN
insert into estilo_de_vida(fuma,numero_cigarros,frec_fuma,ejercicio,tiempo_min,frec_ejercicio,bebida,frec_bebida) 
values(fuma,numero_cigarros,frec_fuma,ejercicio,tiempo_min,frec_ejercicio,bebida,frec_bebida);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;
GRANT EXECUTE ON PROCEDURE NutricionUsalud.IngresarEstiloVida TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.IngresarEstiloVida TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE IngresarHabitoAlimentario(IN TDesayuno INT,
									IN TRefaccion INT,
                                    IN TAlmuerzo INT,
                                   IN TCena INT,
                                   IN NoVasoAgua INT,
                                   IN AlimentoDaño varchar(250) ,
                                   IN AlimentoNoGusta varchar(250) ,
                                   IN AlimentoPreferido varchar(250) ,
                                   OUT resultado TEXT)
BEGIN
insert into habito_alimento(TDesayuno,TRefaccion,TAlmuerzo,TCena,NoVasoAgua,AlimentoDaño,AlimentoNoGusta,AlimentoPreferido) 
values(TDesayuno,TRefaccion,TAlmuerzo,TCena,NoVasoAgua,AlimentoDaño,AlimentoNoGusta,AlimentoPreferido);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;
select * from habito_alimento;
GRANT EXECUTE ON PROCEDURE NutricionUsalud.IngresarHabitoAlimentario TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.IngresarHabitoAlimentario TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE IngresarAntropometria(IN DietaBaja varchar(45),
									IN DietaAlta varchar(45),
                                    IN talla FLOAT,
                                   IN peso FLOAT,
                                   IN CircunferenciaMuñeca FLOAT,
                                   IN ConstitucionOsea varchar(45) ,
                                   OUT resultado TEXT)
BEGIN
insert into antropometria(DietaBaja,DietaAlta,talla,peso,CircunferenciaMuñeca,ConstitucionOsea) 
values(DietaBaja,DietaAlta,talla,peso,CircunferenciaMuñeca,ConstitucionOsea);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;

GRANT EXECUTE ON PROCEDURE NutricionUsalud.IngresarAntropometria TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.IngresarAntropometria TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE IngresarRegistro(IN PorGrasa FLOAT,
									IN PorAgua FLOAT,
                                    IN PorMasaMuscular FLOAT,
                                   IN MasaOsea FLOAT,
                                   IN GrasaVisceral FLOAT,
                                   IN CinturaAbdominal FLOAT,
                                   IN plan varchar(250) ,
                                   OUT resultado TEXT)
BEGIN
insert into registro(PorGrasa,PorAgua,PorMasaMuscular,MasaOsea,GrasaVisceral,CinturaAbdominal,plan) 
values(PorGrasa,PorAgua,PorMasaMuscular,MasaOsea,GrasaVisceral,CinturaAbdominal,plan);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;

GRANT EXECUTE ON PROCEDURE NutricionUsalud.IngresarRegistro TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.IngresarRegistro TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE Registrar_fruta(IN nombre varchar(100) ,
									IN caloria integer,
                                    IN grupo integer ,
                                   OUT resultado TEXT)
BEGIN
insert into ALIMENTO(nombre,caloria,GrupoAlimenticio_idGrupoAlimenticio) 
values(nombre,caloria,grupo);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;


GRANT EXECUTE ON PROCEDURE NutricionUsalud.Registrar_fruta TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.Registrar_fruta TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE Registrar_ConsultaExterna(IN paciente integer ,
                                    IN antecedente integer,
                                    IN estilo integer ,
                                    IN habito integer ,
                                    IN antropometria integer ,
                                    IN registro integer ,
                                   OUT resultado TEXT)
BEGIN
insert into CONSULTA_EXTERNA(FECHA,PACIENTE_idPACIENTE, ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS, ESTILO_DE_VIDA_idESTILO_DE_VIDA, HABITO_ALIMENTO_idHABITO_ALIMENTO, ANTROPOMETRIA_idANTROPOMETRIA, REGISTRO_idREGISTRO)
values(CURDATE(),paciente,antecedente,estilo,habito,antropometria,registro);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;


GRANT EXECUTE ON PROCEDURE NutricionUsalud.Registrar_ConsultaExterna TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.Registrar_ConsultaExternaa TO nutricionprueba@'localhost'; 