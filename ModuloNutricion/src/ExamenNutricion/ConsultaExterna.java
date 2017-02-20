package ExamenNutricion;

import java.io.IOException;
import java.io.PrintWriter;
import ConexionBD.Conexion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ConsultaExterna
 */
@WebServlet("/ConsultaExterna")
public class ConsultaExterna extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultaExterna() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public String validar_horario(String marca,String hora){
		System.out.println(hora);
		if(marca.equals("0")){
			hora="11:48 AM";
		}
		return hora;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		
		String accion = request.getParameter("a"); //accion
		
		
		
		if(accion.equalsIgnoreCase("guardar")){
			String carnet = request.getParameter("carnet");
			String p1 = request.getParameter("p1");// Enfermedad
			String p2 = request.getParameter("p2");// Medicamento
			String p3 = request.getParameter("p3");// Suplemento
			String p4 = request.getParameter("p4");// Diarrea
			String p5 = request.getParameter("p5");// Flatulencia
			String p6 = request.getParameter("p6");// Acides
			String p7 = request.getParameter("p7");// Estreņinimiento
			
			String p8 = request.getParameter("p8");// Fuma check
			String p9 = request.getParameter("p9");// Numero de cigarros
			String p10 = request.getParameter("p10");// frecuencia fumar
			String p11 = request.getParameter("p11");// Ejercicio check
			String p12 = request.getParameter("p12");// Tiempo ejercicio
			String p13 = request.getParameter("p13");// Frecuencia ejercicio
			String p14 = request.getParameter("p14");// Bebida alcoholica check
			String p15 = request.getParameter("p15");// frecuencia bebida alcoholica
			
			//String p16 = request.getParameter("p16");// Tiempo desayuno check %%% BORRAR
			String p17 = request.getParameter("p17");// Hora desayuno
			//String p18 = request.getParameter("p18");// Tiempo Refaccion AM check %%% BORRAR
			String p19 = request.getParameter("p19");// Hora refaccion AM
			String p20 = request.getParameter("p20");// Diagnostico
			
			String p21 = request.getParameter("p21");// Hora almuero
			//String p22 = request.getParameter("p22");// Tiempo refaccion PM check %%% BORRAR
			String p23 = request.getParameter("p23");// Hora refaccion PM
			
			String p25 = request.getParameter("p25");// Hora cena
			
			String p26 = request.getParameter("p26");// Lugar casa check
			String p27 = request.getParameter("p27");// Lugar trabajo check
			String p28 = request.getParameter("p28");// Lugar otro check
			String p29 = request.getParameter("p29");// Origen casa check
			String p30 = request.getParameter("p30");// Origen cafeterica check
			String p31 = request.getParameter("p31");// Origen caseta check
			String p32 = request.getParameter("p32");// Origen chiclero check
			
			String p33 = request.getParameter("p33");// Tiempo min desayuno
			String p34 = request.getParameter("p34");// Tiempo min refaccion
			String p35 = request.getParameter("p35");// Tiempo min almuero
			String p24 = request.getParameter("p24");// Min Refa PM
			String p36 = request.getParameter("p36");// Tiempo min cena
			String p37 = request.getParameter("p37");// vasos de agua
			String p38 = request.getParameter("p38");// Alimentos daņinos
			String p39 = request.getParameter("p39");// Alimentos no gustan
			String p40 = request.getParameter("p40");// Alimentos preferidos
			
			String p41 = request.getParameter("p41");// Dieta baja
			String p42 = request.getParameter("p42");// Dieta alta
			String p43 = request.getParameter("p43");// talla
			String p44 = request.getParameter("p44");// peso usual
			String p45 = request.getParameter("p45");// circunferencia
			String p46 = request.getParameter("p46");// edad metabolica
			
			String p47 = request.getParameter("p47");// % grasa
			String p48 = request.getParameter("p48");// % de agua
			String p49 = request.getParameter("p49");// % masa muscular
			String p50 = request.getParameter("p50");// masa osea
			String p51 = request.getParameter("p51");// grasa visceral
			String p52 = request.getParameter("p52");// cintura abdominal
			String p53 = request.getParameter("p53");// planificacion
			
			String p54 = request.getParameter("p54");// verdura
			String p55 = request.getParameter("p55");// fruta
			String p56 = request.getParameter("p56");// pollo
			String p57 = request.getParameter("p57");// lacteo
			String p58 = request.getParameter("p58");// hamburguesa
			String p59 = request.getParameter("p59");// snack
			String p60 = request.getParameter("p60");// refresco
			
			String p61 = request.getParameter("p61");// galleta
			String p62 = request.getParameter("p62");// dulce
			String p63 = request.getParameter("p63");// embutido
			String p64 = request.getParameter("p64");// sopa
			String p65 = request.getParameter("p65");// fritura
			String p66 = request.getParameter("p66");// tortilla
			String p67 = request.getParameter("p67");// papa
			String p68 = request.getParameter("p68");// pasta
			String p69 = request.getParameter("p69");// arro
			String p70 = request.getParameter("p70");// frijol
			
			String p71 = request.getParameter("p71");// pan 
			String p72 = request.getParameter("p72");// huevo
			
			String p73 = request.getParameter("p73");// huevo
			String ResultadoInsertar="";
			String result="";
			Conexion query = new Conexion();
			
			String p90 = request.getParameter("busqueda");// busqueda
			String p100 = request.getParameter("p100");// ID USUARIO
			if(p90.equalsIgnoreCase("false")){
				String p74 = request.getParameter("p74");// nombre
				String p75 = request.getParameter("p75");// sexo
				String p76 = request.getParameter("p76");// fecha nac
				
				String p141 = request.getParameter("p141");// cui
				String p142 = request.getParameter("p142");// tipo de paciente
				String p143 = request.getParameter("p143");// correo 
				String p144 = request.getParameter("p144");// telefono
				
				String Sfi[]=p76.split("/");
	  			
	  			String fini=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
	  			
	  			String aux=",CUI";
	  			String aux1="";
	  			
	  			if(p141.equalsIgnoreCase("")){
	  				aux1=","+0+"";
	  			}else{
	  				
	  				aux1=","+p141+"";
	  			}
	  			
				String p77 = request.getParameter("p77");// facultad
				//String query2="insert into PACIENTE(idPACIENTE,nombre,fecha_nacimiento,sexo,FACULTAD_idFACULTAD) "
					//	+"values("+carnet+",'"+p74+"','"+fini+"','"+p75+"',"+p77+");";
				
				String query2="insert into PACIENTE(idPACIENTE,nombre,fecha_nacimiento,sexo,FACULTAD_idFACULTAD,correo,telefono,TipoPaciente"+aux+") "
						+"values("+carnet+",'"+p74+"','"+fini+"','"+p75+"',"+p77+",'"+p143+"',"+p144+",'"+p142+"'"+aux1+");";
				
				query.Insertar(query2);
			}
			
			String IDAntecedente=query.UltimoIDAntecedenteMedico(p1,p2,p3,p4,p5,p6,p7);
			//System.out.println("++++++++++ ID Antecedente: "+IDAntecedente+"++++++++");
			String IDEstiloVida=query.UltimoIDEstiloVida(p8,p9,p10,p11,p12,p13,p14,p15);
			//System.out.println("++++++++++ ID Estilo: "+IDEstiloVida+"++++++++");
			String IDHabitoAlimentario=query.UltimoIDHabitoAlimentario(p33,p34,p35,p24,p36,p37,p38,p39,p40);
			//System.out.println("++++++++++ ID Habito: "+IDHabitoAlimentario+"++++++++");
			String IDAntropometria=query.UltimoIDAntropometria(p41,p42,p43,p44,p45,p46);
			//System.out.println("++++++++++ ID Antropometria: "+IDAntropometria+"++++++++");
			String IDRegistro=query.UltimoIDRegistro(p47,p48,p49,p50,p51,p52,p53);
			//System.out.println("++++++++++ ID Registro: "+IDRegistro+"++++++++");
			String IDConsultaExterna=query.RegistrarConsultaExterna(carnet,IDAntecedente,IDEstiloVida,IDHabitoAlimentario,IDAntropometria,IDRegistro,p100,p20);
			
			
			//System.out.println("++++++++++ ID Consulta: "+IDConsultaExterna+"++++++++");
			
			String consulta="insert into ESTABLECIMIENTO_has_CONSULTA_EXTERNA(ESTABLECIMIENTO_idESTABLECIMIENTO, CONSULTA_EXTERNA_idCONSULTA_EXTERNA, marca)" 
					+"values(1,"+IDConsultaExterna+","+p26+"),(2,"+IDConsultaExterna+","+p27+"),(3,"+IDConsultaExterna+","+p28+"),(4,"+IDConsultaExterna+","+p29+"),(5,"+IDConsultaExterna+","+p30+"),(6,"+IDConsultaExterna+","+p31+"),(7,"+IDConsultaExterna+","+p32+");";
			query.Insertar(consulta);
			
			consulta="insert into FRECUENCIA_CONSUMO(ALIMENTO_FRECUENCIA_idALIMENTO_FRECUENCIA, CONSULTA_EXTERNA_idCONSULTA_EXTERNA, frecuencia) "
					+"values(1,"+IDConsultaExterna+",'"+p54+"'),(2,"+IDConsultaExterna+",'"+p55+"'),(3,"+IDConsultaExterna+",'"+p56+"'),(4,"+IDConsultaExterna+",'"+p57+"'),(5,"+IDConsultaExterna+",'"+p58+"'),(6,"+IDConsultaExterna+",'"+p59+"'),(7,"+IDConsultaExterna+",'"+p60+"')" +
					",(8,"+IDConsultaExterna+",'"+p61+"'),(9,"+IDConsultaExterna+",'"+p62+"'),(10,"+IDConsultaExterna+",'"+p63+"'),(11,"+IDConsultaExterna+",'"+p64+"'),(12,"+IDConsultaExterna+",'"+p65+"'),(13,"+IDConsultaExterna+",'"+p66+"'),(14,"+IDConsultaExterna+",'"+p67+"'),(15,"+IDConsultaExterna+",'"+p68+"')" +
					",(16,"+IDConsultaExterna+",'"+p69+"'),(17,"+IDConsultaExterna+",'"+p70+"'),(18,"+IDConsultaExterna+",'"+p71+"'),(19,"+IDConsultaExterna+",'"+p72+"');";
			query.Insertar(consulta);
			
			consulta="insert into CONSULTA_EXTERNA_has_TIEMPO_COMIDA(CONSULTA_EXTERNA_idCONSULTA_EXTERNA, TIEMPO_COMIDA_idTIEMPO_COMIDA, horario) "
					+"values("+IDConsultaExterna+",1,STR_TO_DATE('"+p17+"', '%h:%i %p')),("+IDConsultaExterna+",2,STR_TO_DATE('"+p19+"', '%h:%i %p')),("+IDConsultaExterna+",3,STR_TO_DATE('"+p21+"', '%h:%i %p')),("+IDConsultaExterna+",4,STR_TO_DATE('"+p23+"', '%h:%i %p')),("+IDConsultaExterna+",5,STR_TO_DATE('"+p25+"', '%h:%i %p'));";
			
			
			ResultadoInsertar=query.InsertarRegistro(consulta);
			
			
			//System.out.println("recordatorio: "+p73);
			String tcomida="";
			String idTcomida="";
			String idAlim="";
			String idPorcion="";
			
	        String[] TiempoComidaArray = p73.split("%");
	        for (int i = 0; i < TiempoComidaArray.length; i++) {
	        	if(TiempoComidaArray[i].equals("")){
	        		
	        	}else{
	        		String[] TiempoComidaArray2 = TiempoComidaArray[i].split("!");
	    	        for (int j = 0; j < TiempoComidaArray2.length; j++) {
	    	        	if(TiempoComidaArray2[j].equals("")){
	    	        		
	    	        	}else{
	    	        		String[] TiempoComidaArray3 = TiempoComidaArray2[j].split(",");
	    	        		if(j==0){
	    	        			
	    	        			tcomida=TiempoComidaArray3[0];
	    	        		}
	    	        		if(TiempoComidaArray3.length>1){
	    	        			//System.out.println("tiempo comida:"+tcomida);
	    	        			//System.out.println("alimento:"+TiempoComidaArray3[1]+",cantidad"+TiempoComidaArray3[2]+"meetrica:"+TiempoComidaArray3[3]);
	    	        			
	    	        			idTcomida="(SELECT idTIEMPO_COMIDA FROM TIEMPO_COMIDA where comida='"+tcomida+"')";
	    	        			idAlim="(select idALIMENTO from ALIMENTO where nombre='"+TiempoComidaArray3[1]+"')";
	    	        			//idPorcion="(select idPORCION from PORCION where nombre='"+TiempoComidaArray3[3]+"')";
	    	        			
	    	        			consulta="insert into RECORDATORIO(CONSULTA_EXTERNA_idCONSULTA_EXTERNA, ALIMENTO_idALIMENTO, TIEMPO_COMIDA_idTIEMPO_COMIDA, cantidad) "
	    	        						+"values("+IDConsultaExterna+","+idAlim+","+idTcomida+","+TiempoComidaArray3[2]+");";
	    	        			query.Insertar(consulta);
	    	        		}
	    	        		
	    	        	}
	    	            
	    	        }
	        	}
	            
	        }
	        
	        String p80 = request.getParameter("p80");// enfermedades
	        String idenfermedad="";
	        String[] EnfermedadArray = p80.split("%");
	        for (int i = 0; i < EnfermedadArray.length; i++) {
	        	if(EnfermedadArray[i].equals("")){}else{
	        		idenfermedad="(SELECT idENFERMEDAD FROM ENFERMEDAD WHERE NOMBRE='"+EnfermedadArray[i]+"')";
	        		consulta="INSERT INTO REGISTRO_ENFERMEDAD(CONSULTA_EXTERNA_idCONSULTA_EXTERNA, ENFERMEDAD_idENFERMEDAD) VALUES("+IDConsultaExterna+","+idenfermedad+")";
	        		query.Insertar(consulta);
	        	}
	        }
	        
	        if(ResultadoInsertar.equals("0")){
	        	HttpSession misession= request.getSession(true);
	        	misession.setAttribute("idCE2", IDConsultaExterna);
	        	result="{\"resultado\":\"OK\",\"ID\":\""+IDConsultaExterna+"\",\"mensaje\":\"Registro almacenado correctamente\",\"b\":\"1\"}";
			}else{
				result=ResultadoInsertar;
			}
			out.println(result);
		}else if(accion.equalsIgnoreCase("modificar")){
			String carnet = request.getParameter("carnet");
			String p1 = request.getParameter("p1");// Enfermedad
			String p2 = request.getParameter("p2");// Medicamento
			String p3 = request.getParameter("p3");// Suplemento
			String p4 = request.getParameter("p4");// Diarrea
			String p5 = request.getParameter("p5");// Flatulencia
			String p6 = request.getParameter("p6");// Acides
			String p7 = request.getParameter("p7");// Estreņinimiento
			
			String p8 = request.getParameter("p8");// Fuma check
			String p9 = request.getParameter("p9");// Numero de cigarros
			String p10 = request.getParameter("p10");// frecuencia fumar
			String p11 = request.getParameter("p11");// Ejercicio check
			String p12 = request.getParameter("p12");// Tiempo ejercicio
			String p13 = request.getParameter("p13");// Frecuencia ejercicio
			String p14 = request.getParameter("p14");// Bebida alcoholica check
			String p15 = request.getParameter("p15");// frecuencia bebida alcoholica
			
			//String p16 = request.getParameter("p16");// Tiempo desayuno check
			String p17 = request.getParameter("p17");// Hora desayuno
			//String p18 = request.getParameter("p18");// Tiempo Refaccion AM check
			String p19 = request.getParameter("p19");// Hora refaccion AM
			String p20 = request.getParameter("p20");// Diagnostico
			
			String p21 = request.getParameter("p21");// Hora almuero
			//String p22 = request.getParameter("p22");// Tiempo refaccion PM check
			String p23 = request.getParameter("p23");// Hora refaccion PM
			//String p24 = request.getParameter("p24");// Tiempo cena check
			String p25 = request.getParameter("p25");// Hora cena
			
			String p26 = request.getParameter("p26");// Lugar casa check
			String p27 = request.getParameter("p27");// Lugar trabajo check
			String p28 = request.getParameter("p28");// Lugar otro check
			String p29 = request.getParameter("p29");// Origen casa check
			String p30 = request.getParameter("p30");// Origen cafeterica check
			String p31 = request.getParameter("p31");// Origen caseta check
			String p32 = request.getParameter("p32");// Origen chiclero check
			
			String p33 = request.getParameter("p33");// Tiempo min desayuno
			String p34 = request.getParameter("p34");// Tiempo min refaccion
			String p35 = request.getParameter("p35");// Tiempo min almuero
			String p24 = request.getParameter("p24");// Tiempo min refa pm
			String p36 = request.getParameter("p36");// Tiempo min cena
			String p37 = request.getParameter("p37");// vasos de agua
			String p38 = request.getParameter("p38");// Alimentos daņinos
			String p39 = request.getParameter("p39");// Alimentos no gustan
			String p40 = request.getParameter("p40");// Alimentos preferidos
			
			String p41 = request.getParameter("p41");// Dieta baja
			String p42 = request.getParameter("p42");// Dieta alta
			String p43 = request.getParameter("p43");// talla
			String p44 = request.getParameter("p44");// peso usual
			String p45 = request.getParameter("p45");// circunferencia
			String p46 = request.getParameter("p46");// EdadMetabolica
			
			String p47 = request.getParameter("p47");// % grasa
			String p48 = request.getParameter("p48");// % de agua
			String p49 = request.getParameter("p49");// % masa muscular
			String p50 = request.getParameter("p50");// masa osea
			String p51 = request.getParameter("p51");// grasa visceral
			String p52 = request.getParameter("p52");// cintura abdominal
			String p53 = request.getParameter("p53");// planificacion
			
			String p54 = request.getParameter("p54");// verdura
			String p55 = request.getParameter("p55");// fruta
			String p56 = request.getParameter("p56");// pollo
			String p57 = request.getParameter("p57");// lacteo
			String p58 = request.getParameter("p58");// hamburguesa
			String p59 = request.getParameter("p59");// snack
			String p60 = request.getParameter("p60");// refresco
			
			String p61 = request.getParameter("p61");// galleta
			String p62 = request.getParameter("p62");// dulce
			String p63 = request.getParameter("p63");// embutido
			String p64 = request.getParameter("p64");// sopa
			String p65 = request.getParameter("p65");// fritura
			String p66 = request.getParameter("p66");// tortilla
			String p67 = request.getParameter("p67");// papa
			String p68 = request.getParameter("p68");// pasta
			String p69 = request.getParameter("p69");// arro
			String p70 = request.getParameter("p70");// frijol
			
			String p71 = request.getParameter("p71");// pan 
			String p72 = request.getParameter("p72");// huevo
			
			String p73 = request.getParameter("p73");// huevo
			
			String ID = request.getParameter("ID");// ID
			if(ID.equals("undefined")){
				HttpSession misession2= (HttpSession) request.getSession();
				ID=misession2.getAttribute("idCE2").toString();
			}
			String ResultadoInsertar="";
			String result="";
			Conexion con = new Conexion();
			
			String query3="UPDATE ANTECENDENTES_MEDICOS SET enfermedad_actual='"+p1+"', medicamento='"+p2+"', suplemento='"+p3+"', diarrea='"+p4+"', flatulencia='"+p5+"', acidez='"+p6+"', estreņimiento='"+p7+"' "
						+" WHERE idANTECENDENTES_MEDICOS=(SELECT idCONSULTA_EXTERNA "
						+" FROM CONSULTA_EXTERNA"
						+" WHERE ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS="+ID+");";
			
			ResultadoInsertar=con.InsertarRegistro(query3);
			
			query3="UPDATE ESTILO_DE_VIDA SET fuma="+p8+", numero_cigarros="+p9+", frec_fuma='"+p10+"', "
			+" ejercicio="+p11+", tiempo_min="+p12+", frec_ejercicio='"+p13+"', bebida="+p14+", frec_bebida='"+p15+"'"
			+" WHERE idESTILO_DE_VIDA=(SELECT ESTILO_DE_VIDA_idESTILO_DE_VIDA"
			+" FROM CONSULTA_EXTERNA"
			+" WHERE idCONSULTA_EXTERNA="+ID+");";
		
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="UPDATE CONSULTA_EXTERNA SET IMC='"+p20+"' WHERE idCONSULTA_EXTERNA="+ID;
				
				    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="UPDATE HABITO_ALIMENTO SET TDesayuno="+p33+", TRefaccion="+p34+", TAlmuerzo="+p35+",TRefaccionPM="+p24+" ,TCena="+p36+", NoVasoAgua="+p37+", AlimentoDaņo='"+p38+"', AlimentoNoGusta='"+p39+"', AlimentoPreferido='"+p40+"'"
				+" WHERE idHABITO_ALIMENTO=(SELECT HABITO_ALIMENTO_idHABITO_ALIMENTO"
				+" FROM CONSULTA_EXTERNA"
				+" WHERE idCONSULTA_EXTERNA="+ID+");";
				
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="UPDATE ANTROPOMETRIA SET DietaBaja='"+p41+"', DietaAlta='"+p42+"', talla="+p43+", peso="+p44+", CircunferenciaMuņeca="+p45+", EdadMetabolica='"+p46+"'"
					+" WHERE idANTROPOMETRIA=(SELECT ANTROPOMETRIA_idANTROPOMETRIA"
					+" FROM CONSULTA_EXTERNA"
					+" WHERE idCONSULTA_EXTERNA="+ID+");";
					
			ResultadoInsertar=con.InsertarRegistro(query3);
			
			 query3="UPDATE REGISTRO SET PorGrasa="+p47+", PorAgua="+p48+", PorMasaMuscular="+p49+", MasaOsea="+p50+", GrasaVisceral="+p51+", CinturaAbdominal="+p52+", plan='"+p53+"'"
					+" WHERE idREGISTRO=(SELECT REGISTRO_idREGISTRO"
					+" FROM CONSULTA_EXTERNA"
					+" WHERE idCONSULTA_EXTERNA="+ID+");";
						
			 ResultadoInsertar=con.InsertarRegistro(query3);
			 
			 query3="DELETE FROM ESTABLECIMIENTO_has_CONSULTA_EXTERNA WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
							
		     ResultadoInsertar=con.InsertarRegistro(query3);
			 
			 query3="insert into ESTABLECIMIENTO_has_CONSULTA_EXTERNA(ESTABLECIMIENTO_idESTABLECIMIENTO, CONSULTA_EXTERNA_idCONSULTA_EXTERNA, marca)" 
					 +" values(1,"+ID+","+p26+"),(2,"+ID+","+p27+"),(3,"+ID+","+p28+"),(4,"+ID+","+p29+"),(5,"+ID+","+p30+"),(6,"+ID+","+p31+"),(7,"+ID+","+p32+");";
							
			ResultadoInsertar=con.InsertarRegistro(query3);
			//System.out.println(query3);
			
			query3="DELETE FROM CONSULTA_EXTERNA_has_TIEMPO_COMIDA WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
			 
			query3="insert into CONSULTA_EXTERNA_has_TIEMPO_COMIDA(CONSULTA_EXTERNA_idCONSULTA_EXTERNA, TIEMPO_COMIDA_idTIEMPO_COMIDA, horario) "
						+"values("+ID+",1,STR_TO_DATE('"+p17+"', '%h:%i %p')),("+ID+",2,STR_TO_DATE('"+p19+"', '%h:%i %p')),("+ID+",3,STR_TO_DATE('"+p21+"', '%h:%i %p')),("+ID+",4,STR_TO_DATE('"+p23+"', '%h:%i %p')),("+ID+",5,STR_TO_DATE('"+p25+"', '%h:%i %p'));";
				
			ResultadoInsertar=con.InsertarRegistro(query3);
			
			query3="DELETE FROM FRECUENCIA_CONSUMO WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
			 
			query3="insert into FRECUENCIA_CONSUMO(ALIMENTO_FRECUENCIA_idALIMENTO_FRECUENCIA, CONSULTA_EXTERNA_idCONSULTA_EXTERNA, frecuencia) "
					+"values(1,"+ID+",'"+p54+"'),(2,"+ID+",'"+p55+"'),(3,"+ID+",'"+p56+"'),(4,"+ID+",'"+p57+"'),(5,"+ID+",'"+p58+"'),(6,"+ID+",'"+p59+"'),(7,"+ID+",'"+p60+"')" +
					",(8,"+ID+",'"+p61+"'),(9,"+ID+",'"+p62+"'),(10,"+ID+",'"+p63+"'),(11,"+ID+",'"+p64+"'),(12,"+ID+",'"+p65+"'),(13,"+ID+",'"+p66+"'),(14,"+ID+",'"+p67+"'),(15,"+ID+",'"+p68+"')" +
					",(16,"+ID+",'"+p69+"'),(17,"+ID+",'"+p70+"'),(18,"+ID+",'"+p71+"'),(19,"+ID+",'"+p72+"');";
			
			ResultadoInsertar=con.InsertarRegistro(query3);
			
			query3="DELETE FROM RECORDATORIO WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
			String tcomida="";
			String idTcomida="";
			String idAlim="";
			String idPorcion="";
			
	        String[] TiempoComidaArray = p73.split("%");
	        for (int i = 0; i < TiempoComidaArray.length; i++) {
	        	if(TiempoComidaArray[i].equals("")){
	        		
	        	}else{
	        		String[] TiempoComidaArray2 = TiempoComidaArray[i].split("!");
	    	        for (int j = 0; j < TiempoComidaArray2.length; j++) {
	    	        	if(TiempoComidaArray2[j].equals("")){
	    	        		
	    	        	}else{
	    	        		String[] TiempoComidaArray3 = TiempoComidaArray2[j].split(",");
	    	        		if(j==0){
	    	        			
	    	        			tcomida=TiempoComidaArray3[0];
	    	        		}
	    	        		if(TiempoComidaArray3.length>1){
	    	        			//System.out.println("tiempo comida:"+tcomida);
	    	        			//System.out.println("alimento:"+TiempoComidaArray3[1]+",cantidad"+TiempoComidaArray3[2]+"meetrica:"+TiempoComidaArray3[3]);
	    	        			
	    	        			idTcomida="(SELECT idTIEMPO_COMIDA FROM TIEMPO_COMIDA where comida='"+tcomida+"')";
	    	        			idAlim="(select idALIMENTO from ALIMENTO where nombre='"+TiempoComidaArray3[1]+"')";
	    	        			//idPorcion="(select idPORCION from PORCION where nombre='"+TiempoComidaArray3[3]+"')";
	    	        			
	    	        			query3="insert into RECORDATORIO(CONSULTA_EXTERNA_idCONSULTA_EXTERNA, ALIMENTO_idALIMENTO, TIEMPO_COMIDA_idTIEMPO_COMIDA, cantidad) "
	    	        						+"values("+ID+","+idAlim+","+idTcomida+","+TiempoComidaArray3[2]+");";
	    	        			//query.Insertar(consulta);
	    	        			ResultadoInsertar=con.InsertarRegistro(query3);
	    	        		}
	    	        		
	    	        	}
	    	            
	    	        }
	        	}
	            
	        }
	        query3="DELETE FROM REGISTRO_ENFERMEDAD WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
	        String p80 = request.getParameter("p80");// enfermedades
	        String consulta="";
	        String idenfermedad="";
	        String[] EnfermedadArray = p80.split("%");
	        for (int i = 0; i < EnfermedadArray.length; i++) {
	        	if(EnfermedadArray[i].equals("")){}else{
	        		idenfermedad="(SELECT idENFERMEDAD FROM ENFERMEDAD WHERE NOMBRE='"+EnfermedadArray[i]+"')";
	        		consulta="INSERT INTO REGISTRO_ENFERMEDAD(CONSULTA_EXTERNA_idCONSULTA_EXTERNA, ENFERMEDAD_idENFERMEDAD) VALUES("+ID+","+idenfermedad+")";
	        		con.Insertar(consulta);
	        	}
	        }
			
			if(ResultadoInsertar.equals("0")){
				result="{\"resultado\":\"OK\",\"ID\":\""+ID+"\",\"mensaje\":\"Registro modificado correctamente\",\"b\":\"1\"}";
				//result="{\"resultado\":\"OK\",\"ID\":\""+ID+"\",\"mensaje\":\"Registro almacenado correctamente\",\"b\":\"1\"}";
				
			}else{
				result=ResultadoInsertar;
			}
			
			out.println(result);
		}else if(accion.equalsIgnoreCase("CargaEdicion")){
			String ID = request.getParameter("ID");// ID
			//System.out.println("MID:"+MID);
			Conexion con =new Conexion();
			
			String result="";
			String cuerpo=con.CargaConsultaExterna(ID);
			String Est=con.CargaLugarEstablecimiento(ID);
			String Tcom=con.CargaTiemposComi(ID);
			String AlF = con.CargaFrecComida(ID);
			String Pac = con.DatosPacientejso(ID);
			String Reco = con.CargarRecordatorio(ID);
			String Enf = con.CargarListaEnfermedad(ID);
			String aux="(SELECT PACIENTE_idPACIENTE FROM CONSULTA_EXTERNA WHERE idCONSULTA_EXTERNA="+ID+")";
			String Regs =con.ObtenerRegistrosConsultaExterna(aux);
			String fin="}";
			result=cuerpo+Est+Tcom+AlF+Pac+Reco+Enf+Regs+fin;
			//System.out.println(result);
			HttpSession misession= request.getSession(true);
        	misession.setAttribute("idCE2", ID);
			out.println(result);
		}else if(accion.equalsIgnoreCase("eliminardato")){
			String ID = request.getParameter("idCONSULTA_EXTERNA");
			String result="";
			Conexion con =new Conexion();
			
			String query3="DELETE FROM RECONSULTA WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    String ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM VET_DIETA WHERE CALCULOS_VET_idCALCULOS_VET IN (SELECT idCALCULOS_VET FROM CALCULOS_VET WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+")";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM CALCULOS_VET WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM ESTABLECIMIENTO_has_CONSULTA_EXTERNA WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM FRECUENCIA_CONSUMO WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM CONSULTA_EXTERNA_has_TIEMPO_COMIDA WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM RECORDATORIO WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM REGISTRO_ENFERMEDAD WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    String IDCEX=con.ObtenerIDCEX(ID);
		    
		    query3="DELETE FROM CONSULTA_EXTERNA WHERE idCONSULTA_EXTERNA="+ID+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    String[] IDEL = IDCEX.split(",");
		    
		    query3="DELETE FROM ANTECENDENTES_MEDICOS WHERE idANTECENDENTES_MEDICOS="+IDEL[0]+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM ESTILO_DE_VIDA WHERE idESTILO_DE_VIDA="+IDEL[1]+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM HABITO_ALIMENTO WHERE idHABITO_ALIMENTO="+IDEL[2]+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM ANTROPOMETRIA WHERE idANTROPOMETRIA="+IDEL[3]+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    query3="DELETE FROM REGISTRO WHERE idREGISTRO="+IDEL[4]+"; ";
			
		    ResultadoInsertar=con.InsertarRegistro(query3);
		    
		    
		    
		    if(ResultadoInsertar.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro eliminado\",\"b\":\"2\"}";
			}else{
				result=ResultadoInsertar;
			}
			out.println(result);
		}else if(accion.equalsIgnoreCase("eliminardato23")){
			String result="{\"resultado\":\"OK\"}";
			String ID = request.getParameter("idCONSULTA_EXTERNA");
			Conexion con =new Conexion();
			String ResultadoInsertar=con.ObtenerIDCEX(ID);
			String texto="1,2,3,4,5";
			
			String[] IDEL = ResultadoInsertar.split(",");
			//System.out.println(IDEL[0]+","+IDEL[1]+","+IDEL[2]+","+IDEL[3]+","+IDEL[4]);
			out.println(result);
		}
		
	}

}
