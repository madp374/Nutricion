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
		
		if(marca.equals("0")){
			hora="0:00";
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
			String p7 = request.getParameter("p7");// Estreñinimiento
			
			String p8 = request.getParameter("p8");// Fuma check
			String p9 = request.getParameter("p9");// Numero de cigarros
			String p10 = request.getParameter("p10");// frecuencia fumar
			String p11 = request.getParameter("p11");// Ejercicio check
			String p12 = request.getParameter("p12");// Tiempo ejercicio
			String p13 = request.getParameter("p13");// Frecuencia ejercicio
			String p14 = request.getParameter("p14");// Bebida alcoholica check
			String p15 = request.getParameter("p15");// frecuencia bebida alcoholica
			
			String p16 = request.getParameter("p16");// Tiempo desayuno check
			String p17 = validar_horario(p16,request.getParameter("p17"));// Hora desayuno
			String p18 = request.getParameter("p18");// Tiempo Refaccion AM check
			String p19 = validar_horario(p18,request.getParameter("p19"));// Hora refaccion AM
			String p20 = request.getParameter("p20");// Tiempo almuero check
			
			String p21 = validar_horario(p20,request.getParameter("p21"));// Hora almuero
			String p22 = request.getParameter("p22");// Tiempo refaccion PM check
			String p23 = validar_horario(p22,request.getParameter("p23"));// Hora refaccion PM
			String p24 = request.getParameter("p24");// Tiempo cena check
			String p25 = validar_horario(p24,request.getParameter("p25"));// Hora cena
			
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
			String p36 = request.getParameter("p36");// Tiempo min cena
			String p37 = request.getParameter("p37");// vasos de agua
			String p38 = request.getParameter("p38");// Alimentos dañinos
			String p39 = request.getParameter("p39");// Alimentos no gustan
			String p40 = request.getParameter("p40");// Alimentos preferidos
			
			String p41 = request.getParameter("p41");// Dieta baja
			String p42 = request.getParameter("p42");// Dieta alta
			String p43 = request.getParameter("p43");// talla
			String p44 = request.getParameter("p44");// peso usual
			String p45 = request.getParameter("p45");// circunferencia
			String p46 = request.getParameter("p46");// constitucion osea
			
			String p47 = request.getParameter("p47");// % grasa
			String p48 = request.getParameter("p48");// % masa muscular
			String p49 = request.getParameter("p49");// % de agua
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
			if(p90.equalsIgnoreCase("false")){
				String p74 = request.getParameter("p74");// nombre
				String p75 = request.getParameter("p75");// sexo
				String p76 = request.getParameter("p76");// fecha nac
				String p77 = request.getParameter("p77");// facultad
				String query2="insert into PACIENTE(idPACIENTE,usuario,password,nombre,fecha_nacimiento,sexo,estado,FACULTAD_idFACULTAD) "
						+"values("+carnet+",'prueba3','prueba5','"+p74+"','"+p76+"','"+p75+"','activo',"+p77+");";
				
				query.Insertar(query2);
			}
			
			String IDAntecedente=query.UltimoIDAntecedenteMedico(p1,p2,p3,p4,p5,p6,p7);
			//System.out.println("++++++++++ ID Antecedente: "+IDAntecedente+"++++++++");
			String IDEstiloVida=query.UltimoIDEstiloVida(p8,p9,p10,p11,p12,p13,p14,p15);
			//System.out.println("++++++++++ ID Estilo: "+IDEstiloVida+"++++++++");
			String IDHabitoAlimentario=query.UltimoIDHabitoAlimentario(p33,p34,p35,p36,p37,p38,p39,p40);
			//System.out.println("++++++++++ ID Habito: "+IDHabitoAlimentario+"++++++++");
			String IDAntropometria=query.UltimoIDAntropometria(p41,p42,p43,p44,p45,p46);
			//System.out.println("++++++++++ ID Antropometria: "+IDAntropometria+"++++++++");
			String IDRegistro=query.UltimoIDRegistro(p47,p48,p49,p50,p51,p52,p53);
			//System.out.println("++++++++++ ID Registro: "+IDRegistro+"++++++++");
			String IDConsultaExterna=query.RegistrarConsultaExterna(carnet,IDAntecedente,IDEstiloVida,IDHabitoAlimentario,IDAntropometria,IDRegistro);
			
			
			//System.out.println("++++++++++ ID Consulta: "+IDConsultaExterna+"++++++++");
			
			String consulta="insert into ESTABLECIMIENTO_HAS_CONSULTA_EXTERNA(ESTABLECIMIENTO_idESTABLECIMIENTO, CONSULTA_EXTERNA_idCONSULTA_EXTERNA, marca)" 
					+"values(1,"+IDConsultaExterna+","+p26+"),(2,"+IDConsultaExterna+","+p27+"),(3,"+IDConsultaExterna+","+p28+"),(4,"+IDConsultaExterna+","+p29+"),(5,"+IDConsultaExterna+","+p30+"),(6,"+IDConsultaExterna+","+p31+"),(7,"+IDConsultaExterna+","+p32+");";
			query.Insertar(consulta);
			
			consulta="insert into FRECUENCIA_CONSUMO(ALIMENTO_FRECUENCIA_idALIMENTO_FRECUENCIA, CONSULTA_EXTERNA_idCONSULTA_EXTERNA, frecuencia) "
					+"values(1,"+IDConsultaExterna+",'"+p54+"'),(2,"+IDConsultaExterna+",'"+p55+"'),(3,"+IDConsultaExterna+",'"+p56+"'),(4,"+IDConsultaExterna+",'"+p57+"'),(5,"+IDConsultaExterna+",'"+p58+"'),(6,"+IDConsultaExterna+",'"+p59+"'),(7,"+IDConsultaExterna+",'"+p60+"')" +
					",(8,"+IDConsultaExterna+",'"+p61+"'),(9,"+IDConsultaExterna+",'"+p62+"'),(10,"+IDConsultaExterna+",'"+p63+"'),(11,"+IDConsultaExterna+",'"+p64+"'),(12,"+IDConsultaExterna+",'"+p65+"'),(13,"+IDConsultaExterna+",'"+p66+"'),(14,"+IDConsultaExterna+",'"+p67+"'),(15,"+IDConsultaExterna+",'"+p68+"')" +
					",(16,"+IDConsultaExterna+",'"+p69+"'),(17,"+IDConsultaExterna+",'"+p70+"'),(18,"+IDConsultaExterna+",'"+p71+"'),(19,"+IDConsultaExterna+",'"+p72+"');";
			query.Insertar(consulta);
			
			consulta="insert into CONSULTA_EXTERNA_HAS_TIEMPO_COMIDA(CONSULTA_EXTERNA_idCONSULTA_EXTERNA, TIEMPO_COMIDA_idTIEMPO_COMIDA, horario) "
					+"values("+IDConsultaExterna+",1,'"+p17+"'),("+IDConsultaExterna+",2,'"+p19+"'),("+IDConsultaExterna+",3,'"+p21+"'),("+IDConsultaExterna+",4,'"+p23+"'),("+IDConsultaExterna+",5,'"+p25+"');";
			
			
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
	    	        			idPorcion="(select idPORCION from PORCION where nombre='"+TiempoComidaArray3[3]+"')";
	    	        			
	    	        			consulta="insert into RECORDATORIO(CONSULTA_EXTERNA_idCONSULTA_EXTERNA, ALIMENTO_idALIMENTO, TIEMPO_COMIDA_idTIEMPO_COMIDA, cantidad, PORCION_idPORCION) "
	    	        						+"values("+IDConsultaExterna+","+idAlim+","+idTcomida+","+TiempoComidaArray3[2]+","+idPorcion+");";
	    	        			query.Insertar(consulta);
	    	        		}
	    	        		
	    	        	}
	    	            
	    	        }
	        	}
	            
	        }
	        
	        if(ResultadoInsertar.equals("0")){
	        	HttpSession misession= request.getSession(true);
	        	misession.setAttribute("idCE2", IDConsultaExterna);
	        	result="{\"resultado\":\"OK\",\"ID\":\""+IDConsultaExterna+"\"}";
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
			String Reco = con.CargarRecordatorio(ID);
			String fin="}";
			result=cuerpo+Est+Tcom+AlF+Reco+fin;
			System.out.println(result);
			HttpSession misession= request.getSession(true);
        	misession.setAttribute("idCE2", ID);
			out.println(result);
		}
		
	}

}
