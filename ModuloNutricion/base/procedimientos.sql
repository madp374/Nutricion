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
insert into ANTECENDENTES_MEDICOS(enfermedad_actual,medicamento,suplemento,diarrea,flatulencia,acidez,estreñimiento) 
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
insert into ESTILO_DE_VIDA(fuma,numero_cigarros,frec_fuma,ejercicio,tiempo_min,frec_ejercicio,bebida,frec_bebida) 
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
                                    IN TRefaccionPM INT,
                                   IN TCena INT,
                                   IN NoVasoAgua INT,
                                   IN AlimentoDaño varchar(250) ,
                                   IN AlimentoNoGusta varchar(250) ,
                                   IN AlimentoPreferido varchar(250) ,
                                   OUT resultado TEXT)
BEGIN
insert into HABITO_ALIMENTO(TDesayuno,TRefaccion,TAlmuerzo,TRefaccionPM,TCena,NoVasoAgua,AlimentoDaño,AlimentoNoGusta,AlimentoPreferido) 
values(TDesayuno,TRefaccion,TAlmuerzo,TRefaccionPM,TCena,NoVasoAgua,AlimentoDaño,AlimentoNoGusta,AlimentoPreferido);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;
GRANT EXECUTE ON PROCEDURE NutricionUsalud.IngresarHabitoAlimentario TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.IngresarHabitoAlimentario TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE IngresarAntropometria(IN DietaBaja varchar(45),
									IN DietaAlta varchar(45),
                                    IN talla FLOAT,
                                   IN peso FLOAT,
                                   IN CircunferenciaMuñeca FLOAT,
                                   IN EdadMetabolica FLOAT ,
                                   OUT resultado TEXT)
BEGIN
insert into ANTROPOMETRIA(DietaBaja,DietaAlta,talla,peso,CircunferenciaMuñeca,EdadMetabolica) 
values(DietaBaja,DietaAlta,talla,peso,CircunferenciaMuñeca,EdadMetabolica);
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
insert into REGISTRO(PorGrasa,PorAgua,PorMasaMuscular,MasaOsea,GrasaVisceral,CinturaAbdominal,plan) 
values(PorGrasa,PorAgua,PorMasaMuscular,MasaOsea,GrasaVisceral,CinturaAbdominal,plan);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;

GRANT EXECUTE ON PROCEDURE NutricionUsalud.IngresarRegistro TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.IngresarRegistro TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE Registrar_fruta(IN nombres varchar(100) ,
									IN caloria integer,
                                    IN grupo integer,
                                    IN metrica integer,
                                   OUT resultado TEXT)
BEGIN

set @valor=(SELECT nombre FROM ALIMENTO where nombre=nombres);

IF @valor = nombres THEN
    SET resultado = 'ERROR';
ELSE 
     insert into ALIMENTO(nombre,caloria,GrupoAlimenticio_idGrupoAlimenticio,PORCION_idPORCION) 
     values(nombres,caloria,grupo,metrica);
     SET resultado = (select LAST_INSERT_ID());
END IF;

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
                                    IN usuario integer,
                                    IN imc varchar(45),
                                   OUT resultado TEXT)
BEGIN
insert into CONSULTA_EXTERNA(FECHA,PACIENTE_idPACIENTE, ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS, ESTILO_DE_VIDA_idESTILO_DE_VIDA, HABITO_ALIMENTO_idHABITO_ALIMENTO, ANTROPOMETRIA_idANTROPOMETRIA, REGISTRO_idREGISTRO,USUARIO_idUSUARIO,IMC)
values(CURDATE(),paciente,antecedente,estilo,habito,antropometria,registro,usuario,imc);
SET resultado = (select LAST_INSERT_ID());
END $
DELIMITER ;


GRANT EXECUTE ON PROCEDURE NutricionUsalud.Registrar_ConsultaExterna TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.Registrar_ConsultaExternaa TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE Registrar_enfermedad(IN nombres varchar(45),
                                   OUT resultado TEXT)
BEGIN

set @valor=(SELECT nombre FROM ENFERMEDAD where nombre=nombres);

IF @valor = nombres THEN
    SET resultado = 'ERROR';
ELSE 
     insert into ENFERMEDAD(nombre) 
     values(nombres);
     SET resultado = (select LAST_INSERT_ID());
END IF;

END $
DELIMITER ;


GRANT EXECUTE ON PROCEDURE NutricionUsalud.Registrar_enfermedad TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.Registrar_enfermedad TO nutricionprueba@'localhost'; 

DELIMITER $
CREATE PROCEDURE Tomar_TallaPeso(IN carnets integer ,
                                   OUT resultado TEXT)
BEGIN

set @valorCE=(select E.idCONSULTA_EXTERNA
                from CONSULTA_EXTERNA E, ANTROPOMETRIA A, PACIENTE P, FACULTAD F
                where E.PACIENTE_idPACIENTE=P.idPACIENTE
                AND E.ANTROPOMETRIA_idANTROPOMETRIA=A.idANTROPOMETRIA
                AND P.FACULTAD_idFACULTAD=F.idFACULTAD
                AND E.PACIENTE_idPACIENTE=carnets
                ORDER BY E.idCONSULTA_EXTERNA DESC limit 1);

set @valorRE=(SELECT E.idCONSULTA_EXTERNA
                FROM RECONSULTA A, CONSULTA_EXTERNA E, PACIENTE P, FACULTAD F
                where E.PACIENTE_idPACIENTE=carnets 
                AND A.CONSULTA_EXTERNA_idCONSULTA_EXTERNA=E.idCONSULTA_EXTERNA
                AND E.PACIENTE_idPACIENTE=P.idPACIENTE
                AND P.FACULTAD_idFACULTAD=F.idFACULTAD
                ORDER BY A.idRECONSULTA DESC limit 1);

IF @valorCE = @valorRE THEN
    SET resultado = (SELECT CONCAT(P.idPACIENTE,',',P.nombre,',',F.nombre,',',A.talla,',',A.peso,',',YEAR(CURDATE())-YEAR(P.fecha_nacimiento) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(P.fecha_nacimiento,'%m-%d'), 0, -1),',',P.sexo,',',P.fecha_nacimiento ) AS DATOS
                    FROM RECONSULTA A, CONSULTA_EXTERNA E, PACIENTE P, FACULTAD F
                    where E.PACIENTE_idPACIENTE=carnets
                    AND A.CONSULTA_EXTERNA_idCONSULTA_EXTERNA=E.idCONSULTA_EXTERNA
                    AND E.PACIENTE_idPACIENTE=P.idPACIENTE
                    AND P.FACULTAD_idFACULTAD=F.idFACULTAD
                    ORDER BY A.idRECONSULTA DESC limit 1);
ELSE 
     SET resultado = (select CONCAT(P.idPACIENTE,',',P.nombre,',',F.nombre,',',A.talla,',',A.peso,',',YEAR(CURDATE())-YEAR(P.fecha_nacimiento) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(P.fecha_nacimiento,'%m-%d'), 0, -1),',',P.sexo,',',P.fecha_nacimiento) AS DATOS 
                        from CONSULTA_EXTERNA E, ANTROPOMETRIA A, PACIENTE P, FACULTAD F
                        where E.PACIENTE_idPACIENTE=P.idPACIENTE
                        AND E.ANTROPOMETRIA_idANTROPOMETRIA=A.idANTROPOMETRIA
                        AND P.FACULTAD_idFACULTAD=F.idFACULTAD
                        AND E.PACIENTE_idPACIENTE=carnets
                        ORDER BY E.idCONSULTA_EXTERNA DESC limit 1);
END IF;

END $
DELIMITER ;
GRANT EXECUTE ON PROCEDURE NutricionUsalud.Tomar_TallaPeso TO 'nutricionprueba'@'localhost';
GRANT ALL ON NutricionUsalud.Tomar_TallaPeso TO nutricionprueba@'localhost'; 
