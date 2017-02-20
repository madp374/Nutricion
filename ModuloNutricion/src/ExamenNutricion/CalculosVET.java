package ExamenNutricion;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ConexionBD.Conexion;
/**
 * Servlet implementation class CalculosVET
 */
@WebServlet("/CalculosVET")
public class CalculosVET extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculosVET() {
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
	public String validar_vacio(String entrada){
		if(entrada==null){
			entrada="";
		}
		return entrada;
	}
	public String validar_numero(String entrada){
		if(entrada==null){
			entrada="0";
		}
		return entrada;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession misession= request.getSession(true);
		
		String idCE = validar_numero(request.getParameter("ID"));
		String accion = validar_vacio(request.getParameter("a")); //accion
		String result="{\"resultado\":\"error\"}";
		
		
		if(accion.equalsIgnoreCase("CargarTallaPeso")){
			Conexion query = new Conexion();
			result=query.ObtenerMedidaPaciente(idCE);
			result+=query.ObtenerRegistrosCalculosVET(idCE)+"}";
			//System.out.println(result);
			misession.setAttribute("idCE2", idCE);
			out.println(result);
			
		}else if(accion.equalsIgnoreCase("CargarEdicion")){
			Conexion query = new Conexion();
			result=query.CargaCalculosVET(idCE);
			result+=query.ObtenerDistribucion(idCE);
			out.println(result);
		}else if(accion.equalsIgnoreCase("CargarDatosGeneralesCarnet")){
			String carnet = validar_numero(request.getParameter("carnet"));
			Conexion query = new Conexion();
			result=query.LlamadaUltimoTallaPeso(carnet);
			
			String[] Contenido = result.split(",");
			int longitud=Contenido.length;
			String resultado="";
			String result2="";
			if(longitud>7){
				String talla="";
			    String peso="";
			    
			    String idPACIENTE="";
			    String nombre="";
			    String edad="";
			    String sexo="";
			    String facultad="";
			    String fechaNac="";
			    
			    talla=Contenido[3];
		    	peso=Contenido[4];
		    	
		    	idPACIENTE=Contenido[0];
			    nombre=Contenido[1];
			    edad=Contenido[5];
			    sexo=Contenido[6];
			    facultad=Contenido[2];
			    fechaNac=Contenido[7];
			    
			    resultado="{\"resultado\":\"OK\",\"talla\":\""+talla
			    		+"\",\"idPACIENTE\":\""+idPACIENTE
			    		+"\",\"nombre\":\""+nombre
			    		+"\",\"edad\":\""+edad
			    		+"\",\"sexo\":\""+sexo
			    		+"\",\"facultad\":\""+facultad
			    		+"\",\"peso\":\""+peso
			    		+"\",\"fechaNac\":\""+fechaNac+"\"";
			    
			    result2+=query.ObtenerRegistroscvetCE(carnet);
			    result2+=query.ObtenerRegistrosReconsultacvetCE2(carnet);
			    result2=resultado+result2+"}";
			}else{
				//ERROR de carga
				result2="{\"resultado\":\"ERROR\",\"mensaje\":\"Registro eliminado\"}";
			}
			//System.out.println(result2);
			
			out.println(result2);
		}else if(accion.equalsIgnoreCase("eliminar")){
			
			String IdBorrar=request.getParameter("ID");
			String sql2 = "delete from VET_DIETA WHERE CALCULOS_VET_idCALCULOS_VET="+IdBorrar;
			

			Conexion consulta = new Conexion();	
			result=consulta.InsertarRegistro(sql2);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro eliminado\"}";
			}
			
			String sql = "delete from CALCULOS_VET where idCALCULOS_VET="+IdBorrar;
			result=consulta.InsertarRegistro(sql);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"3\"}";
			}
			out.println(result);
			
		}else if(accion.equalsIgnoreCase("modificar")){
			String p1=request.getParameter("p1"); //peso
			String p2=request.getParameter("p2"); //imc
			String p3=request.getParameter("p3"); //actividad fisica
			String p4=request.getParameter("p4"); //formula vet
			String p5=request.getParameter("p5"); //vet
			String p6=request.getParameter("p6"); //vet + actividad fisica
			String p7=request.getParameter("p7"); //Readecuacion bajo peso
			String p8=request.getParameter("p8"); //Readecuacion sobre peso
			String p9=request.getParameter("p9"); //Readecuacion obesidad
			String p10=request.getParameter("p10"); //% carbohidratos
			String p11=request.getParameter("p11"); //% proteina
			String p12=request.getParameter("p12"); //% grasa
			String p13=request.getParameter("p13"); //lacteo sin grasa
			String p14=request.getParameter("p14"); //lacteo entero
			String p15=request.getParameter("p15"); //vegetal
			String p16=request.getParameter("p16"); //fruta
			String p17=request.getParameter("p17"); //cereal
			String p18=request.getParameter("p18"); //carne
			String p19=request.getParameter("p19"); //grasa
			String p20=request.getParameter("p20"); //azucar
			
			String p21=request.getParameter("p21"); //dieta
			String p22=request.getParameter("p22"); //kcal
			
			String p30=request.getParameter("p30"); //de1
			String p31=request.getParameter("p31"); //ra1
			String p32=request.getParameter("p32"); //az1
			String p33=request.getParameter("p33"); //rp1
			String p34=request.getParameter("p34"); //ce1
			String p35=request.getParameter("p35"); //de2
			String p36=request.getParameter("p36"); //ra2
			String p37=request.getParameter("p37"); //az2
			String p38=request.getParameter("p38"); //rp2
			String p39=request.getParameter("p39"); //ce2
			
			String p40=request.getParameter("p40"); //de1
			String p41=request.getParameter("p41"); //ra1
			String p42=request.getParameter("p42"); //az1
			String p43=request.getParameter("p43"); //rp1
			String p44=request.getParameter("p44"); //ce1
			String p45=request.getParameter("p45"); //de2
			String p46=request.getParameter("p46"); //ra2
			String p47=request.getParameter("p47"); //az2
			String p48=request.getParameter("p48"); //rp2
			String p49=request.getParameter("p49"); //ce2
			
			String p50=request.getParameter("p50"); //de1
			String p51=request.getParameter("p51"); //ra1
			String p52=request.getParameter("p52"); //az1
			String p53=request.getParameter("p53"); //rp1
			String p54=request.getParameter("p54"); //ce1
			String p55=request.getParameter("p55"); //de2
			String p56=request.getParameter("p56"); //ra2
			String p57=request.getParameter("p57"); //az2
			String p58=request.getParameter("p58"); //rp2
			String p59=request.getParameter("p59"); //ce2
			
			String p60=request.getParameter("p60"); //de1
			String p61=request.getParameter("p61"); //ra1
			String p62=request.getParameter("p62"); //az1
			String p63=request.getParameter("p63"); //rp1
			String p64=request.getParameter("p64"); //ce1
			String p65=request.getParameter("p65"); //de2
			String p66=request.getParameter("p66"); //ra2
			String p67=request.getParameter("p67"); //az2
			String p68=request.getParameter("p68"); //rp2
			String p69=request.getParameter("p69"); //ce2
			
			String cadena=idCE+","+accion+",p1:"+p1+",p2:"+p2+",p3:"+p3+",p4:"+p4+",p5:"+p5
					+",p6:"+p6+",p7:"+p7+",p8:"+p8+",p9:"+p9+",p10:"+p10
					+",p11:"+p11+",p12:"+p12+",p13:"+p13+",p14:"+p14+",p15:"+p15;
			//System.out.println(cadena);
			
			String query="UPDATE CALCULOS_VET set peso="+p1+",imc="+p2+",ActividadFisica="+p3+",FormulaVet='"+p4+"',VET="+p5+",VETAF="+p6+",RBajoPeso="+p7+",RSobrePeso="+p8+",RObesidad="+p9+",carbohidrato="+p10+",proteina="+p11+",grasa="+p12+",placteosg="+p13+",placteoe="+p14+",pvegetal="+p15+",pfruta="+p16+",pcereal="+p17+",pcarne="+p18+",pgrasa="+p19+",pazucar="+p20 +",tdieta="+p21 +",distribucion='"+p22+"'" +
					" where idCALCULOS_VET="+idCE;
			
			Conexion consulta = new Conexion();
			result=consulta.InsertarRegistro(query);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro modificado correctamente\"}";
			}
			
			String sql = "delete from VET_DIETA WHERE CALCULOS_VET_idCALCULOS_VET="+idCE+"; ";
			result=consulta.InsertarRegistro(sql);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro modificado correctamente\"}";
			}
			String IDVET=idCE;
			String query2="INSERT INTO VET_DIETA(CALCULOS_VET_idCALCULOS_VET,GrupoAlimenticio_idGrupoAlimenticio,Comida,porcion)VALUES "
					+"("+IDVET+",1,'Desayuno',"+p30+"),("+IDVET+",1,'Refaccion AM',"+p31+"),("+IDVET+",1,'Almuerzo',"+p32+"),("+IDVET+",1,'Refaccion PM',"+p33+"),("+IDVET+",1,'Cena',"+p34+"), "
					+"("+IDVET+",2,'Desayuno',"+p35+"),("+IDVET+",2,'Refaccion AM',"+p36+"),("+IDVET+",2,'Almuerzo',"+p37+"),("+IDVET+",2,'Refaccion PM',"+p38+"),("+IDVET+",2,'Cena',"+p39+"), "
					+"("+IDVET+",3,'Desayuno',"+p40+"),("+IDVET+",3,'Refaccion AM',"+p41+"),("+IDVET+",3,'Almuerzo',"+p42+"),("+IDVET+",3,'Refaccion PM',"+p43+"),("+IDVET+",3,'Cena',"+p44+"), "
					+"("+IDVET+",4,'Desayuno',"+p45+"),("+IDVET+",4,'Refaccion AM',"+p46+"),("+IDVET+",4,'Almuerzo',"+p47+"),("+IDVET+",4,'Refaccion PM',"+p48+"),("+IDVET+",4,'Cena',"+p49+"), "
					+"("+IDVET+",5,'Desayuno',"+p50+"),("+IDVET+",5,'Refaccion AM',"+p51+"),("+IDVET+",5,'Almuerzo',"+p52+"),("+IDVET+",5,'Refaccion PM',"+p53+"),("+IDVET+",5,'Cena',"+p54+"), "
					+"("+IDVET+",6,'Desayuno',"+p55+"),("+IDVET+",6,'Refaccion AM',"+p56+"),("+IDVET+",6,'Almuerzo',"+p57+"),("+IDVET+",6,'Refaccion PM',"+p58+"),("+IDVET+",6,'Cena',"+p59+"), "
					+"("+IDVET+",7,'Desayuno',"+p60+"),("+IDVET+",7,'Refaccion AM',"+p61+"),("+IDVET+",7,'Almuerzo',"+p62+"),("+IDVET+",7,'Refaccion PM',"+p63+"),("+IDVET+",7,'Cena',"+p64+"), "
					+"("+IDVET+",8,'Desayuno',"+p65+"),("+IDVET+",8,'Refaccion AM',"+p66+"),("+IDVET+",8,'Almuerzo',"+p67+"),("+IDVET+",8,'Refaccion PM',"+p68+"),("+IDVET+",8,'Cena',"+p69+");";
				//System.out.println(query2);
				result=consulta.InsertarRegistro(query2);
				if(result.equals("0")){
					result="{\"resultado\":\"OK\",\"mensaje\":\"2\"}";
				}
			out.println(result);
		}else if(accion.equalsIgnoreCase("ModificarDietas")){
			String p10=request.getParameter("p10"); //% carbohidratos
			String p11=request.getParameter("p11"); //% proteina
			String p12=request.getParameter("p12"); //% grasa
			String p13=request.getParameter("p13"); //lacteo sin grasa
			String p14=request.getParameter("p14"); //lacteo entero
			String p15=request.getParameter("p15"); //vegetal
			String p16=request.getParameter("p16"); //fruta
			String p17=request.getParameter("p17"); //cereal
			String p18=request.getParameter("p18"); //carne
			String p19=request.getParameter("p19"); //grasa
			String p20=request.getParameter("p20"); //azucar
			
			String p21=request.getParameter("p21"); //dieta
			String p22=request.getParameter("p22"); //kcal
			String p23=request.getParameter("p23"); //fuente
			
			String query="UPDATE DIETA SET carbohidrato="+p10+", proteina="+p11+", grasa="+p12+", fuente='"+p23+"' WHERE idDIETA="+p21;
			Conexion consulta = new Conexion();
			result=consulta.InsertarRegistro(query);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro modificado correctamente\"}";
			}
			String query2="UPDATE TIPO_DIETA SET valor="+p13+" WHERE DIETA_idDIETA="+p21+" AND GrupoAlimenticio_idGrupoAlimenticio=1 AND Kcal="+p22;
			result=consulta.InsertarRegistro(query2);
			query2="UPDATE TIPO_DIETA SET valor="+p14+" WHERE DIETA_idDIETA="+p21+" AND GrupoAlimenticio_idGrupoAlimenticio=2 AND Kcal="+p22;
			result=consulta.InsertarRegistro(query2);
			query2="UPDATE TIPO_DIETA SET valor="+p15+" WHERE DIETA_idDIETA="+p21+" AND GrupoAlimenticio_idGrupoAlimenticio=3 AND Kcal="+p22;
			result=consulta.InsertarRegistro(query2);
			query2="UPDATE TIPO_DIETA SET valor="+p16+" WHERE DIETA_idDIETA="+p21+" AND GrupoAlimenticio_idGrupoAlimenticio=4 AND Kcal="+p22;
			result=consulta.InsertarRegistro(query2);
			query2="UPDATE TIPO_DIETA SET valor="+p17+" WHERE DIETA_idDIETA="+p21+" AND GrupoAlimenticio_idGrupoAlimenticio=5 AND Kcal="+p22;
			result=consulta.InsertarRegistro(query2);
			query2="UPDATE TIPO_DIETA SET valor="+p18+" WHERE DIETA_idDIETA="+p21+" AND GrupoAlimenticio_idGrupoAlimenticio=6 AND Kcal="+p22;
			result=consulta.InsertarRegistro(query2);
			query2="UPDATE TIPO_DIETA SET valor="+p19+" WHERE DIETA_idDIETA="+p21+" AND GrupoAlimenticio_idGrupoAlimenticio=7 AND Kcal="+p22;
			result=consulta.InsertarRegistro(query2);
			query2="UPDATE TIPO_DIETA SET valor="+p20+" WHERE DIETA_idDIETA="+p21+" AND GrupoAlimenticio_idGrupoAlimenticio=8 AND Kcal="+p22;
			result=consulta.InsertarRegistro(query2);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro modificado correctamente\"}";
			}
			out.println(result);
		}
		else if(accion.equalsIgnoreCase("guardar")){
			
			
		
			
			misession.setAttribute("idCE2", idCE);
			
			String p0=request.getParameter("p0"); //usuario
			String p1=request.getParameter("p1"); //peso
			String p2=request.getParameter("p2"); //imc
			String p3=request.getParameter("p3"); //actividad fisica
			String p4=request.getParameter("p4"); //formula vet
			String p5=request.getParameter("p5"); //vet
			String p6=request.getParameter("p6"); //vet + actividad fisica
			String p7=request.getParameter("p7"); //Readecuacion bajo peso
			String p8=request.getParameter("p8"); //Readecuacion sobre peso
			String p9=request.getParameter("p9"); //Readecuacion obesidad
			String p10=request.getParameter("p10"); //% carbohidratos
			String p11=request.getParameter("p11"); //% proteina
			String p12=request.getParameter("p12"); //% grasa
			String p13=request.getParameter("p13"); //lacteo sin grasa
			String p14=request.getParameter("p14"); //lacteo entero
			String p15=request.getParameter("p15"); //vegetal
			String p16=request.getParameter("p16"); //fruta
			String p17=request.getParameter("p17"); //cereal
			String p18=request.getParameter("p18"); //carne
			String p19=request.getParameter("p19"); //grasa
			String p20=request.getParameter("p20"); //azucar
			String p21=request.getParameter("p21"); //dieta
			String p22=request.getParameter("p22"); //kcal
			
			String p30=request.getParameter("p30"); //de1
			String p31=request.getParameter("p31"); //ra1
			String p32=request.getParameter("p32"); //az1
			String p33=request.getParameter("p33"); //rp1
			String p34=request.getParameter("p34"); //ce1
			String p35=request.getParameter("p35"); //de2
			String p36=request.getParameter("p36"); //ra2
			String p37=request.getParameter("p37"); //az2
			String p38=request.getParameter("p38"); //rp2
			String p39=request.getParameter("p39"); //ce2
			
			String p40=request.getParameter("p40"); //de1
			String p41=request.getParameter("p41"); //ra1
			String p42=request.getParameter("p42"); //az1
			String p43=request.getParameter("p43"); //rp1
			String p44=request.getParameter("p44"); //ce1
			String p45=request.getParameter("p45"); //de2
			String p46=request.getParameter("p46"); //ra2
			String p47=request.getParameter("p47"); //az2
			String p48=request.getParameter("p48"); //rp2
			String p49=request.getParameter("p49"); //ce2
			
			String p50=request.getParameter("p50"); //de1
			String p51=request.getParameter("p51"); //ra1
			String p52=request.getParameter("p52"); //az1
			String p53=request.getParameter("p53"); //rp1
			String p54=request.getParameter("p54"); //ce1
			String p55=request.getParameter("p55"); //de2
			String p56=request.getParameter("p56"); //ra2
			String p57=request.getParameter("p57"); //az2
			String p58=request.getParameter("p58"); //rp2
			String p59=request.getParameter("p59"); //ce2
			
			String p60=request.getParameter("p60"); //de1
			String p61=request.getParameter("p61"); //ra1
			String p62=request.getParameter("p62"); //az1
			String p63=request.getParameter("p63"); //rp1
			String p64=request.getParameter("p64"); //ce1
			String p65=request.getParameter("p65"); //de2
			String p66=request.getParameter("p66"); //ra2
			String p67=request.getParameter("p67"); //az2
			String p68=request.getParameter("p68"); //rp2
			String p69=request.getParameter("p69"); //ce2
			
			
			//String cadena=idCE+","+accion+",p1:"+p1+",p2:"+p2+",p3:"+p3+",p4:"+p4+",p5:"+p5
				//	+",p6:"+p6+",p7:"+p7+",p8:"+p8+",p9:"+p9+",p10:"+p10
					//+",p11:"+p11+",p12:"+p12+",p13:"+p13+",p14:"+p14+",p15:"+p15;
			//System.out.println(cadena);
			String IDCarnet = validar_numero(request.getParameter("IDCarnet"));
			String IDCE="(SELECT idCONSULTA_EXTERNA "
					+" FROM CONSULTA_EXTERNA "
					+" WHERE PACIENTE_idPACIENTE="+IDCarnet 
					+" ORDER BY idCONSULTA_EXTERNA DESC LIMIT 1)";
			
			String query="insert into CALCULOS_VET(fecha, peso, imc, ActividadFisica, FormulaVet, VET, VETAF, RBajoPeso, RSobrePeso, RObesidad, carbohidrato, proteina, grasa, placteosg, placteoe, pvegetal, pfruta, pcereal, pcarne, pgrasa, pazucar, tdieta, distribucion, CONSULTA_EXTERNA_idCONSULTA_EXTERNA,USUARIO_idUSUARIO) " 
					+"VALUES(CURDATE(),"+p1+","+p2+","+p3+",'"+p4+"',"+p5+","+p6+","+p7+","+p8+","+p9+","+p10+","+p11+","+p12+","+p13+","+p14+","+p15+","+p16+","+p17+","+p18+","+p19+","+p20+","+p21+",'"+p22+"',"+IDCE+","+p0+");";
			
			Conexion consulta = new Conexion();
			result=consulta.InsertarRegistro(query);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro almacenado correctamente\"}";
			}
			String IDVET="(SELECT idCALCULOS_VET"
					+" FROM CALCULOS_VET where CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+IDCE
					+" order by idCALCULOS_VET desc limit 1)";
			
			String query2="INSERT INTO VET_DIETA(CALCULOS_VET_idCALCULOS_VET,GrupoAlimenticio_idGrupoAlimenticio,Comida,porcion)VALUES "
				+"("+IDVET+",1,'Desayuno',"+p30+"),("+IDVET+",1,'Refaccion AM',"+p31+"),("+IDVET+",1,'Almuerzo',"+p32+"),("+IDVET+",1,'Refaccion PM',"+p33+"),("+IDVET+",1,'Cena',"+p34+"), "
				+"("+IDVET+",2,'Desayuno',"+p35+"),("+IDVET+",2,'Refaccion AM',"+p36+"),("+IDVET+",2,'Almuerzo',"+p37+"),("+IDVET+",2,'Refaccion PM',"+p38+"),("+IDVET+",2,'Cena',"+p39+"), "
				+"("+IDVET+",3,'Desayuno',"+p40+"),("+IDVET+",3,'Refaccion AM',"+p41+"),("+IDVET+",3,'Almuerzo',"+p42+"),("+IDVET+",3,'Refaccion PM',"+p43+"),("+IDVET+",3,'Cena',"+p44+"), "
				+"("+IDVET+",4,'Desayuno',"+p45+"),("+IDVET+",4,'Refaccion AM',"+p46+"),("+IDVET+",4,'Almuerzo',"+p47+"),("+IDVET+",4,'Refaccion PM',"+p48+"),("+IDVET+",4,'Cena',"+p49+"), "
				+"("+IDVET+",5,'Desayuno',"+p50+"),("+IDVET+",5,'Refaccion AM',"+p51+"),("+IDVET+",5,'Almuerzo',"+p52+"),("+IDVET+",5,'Refaccion PM',"+p53+"),("+IDVET+",5,'Cena',"+p54+"), "
				+"("+IDVET+",6,'Desayuno',"+p55+"),("+IDVET+",6,'Refaccion AM',"+p56+"),("+IDVET+",6,'Almuerzo',"+p57+"),("+IDVET+",6,'Refaccion PM',"+p58+"),("+IDVET+",6,'Cena',"+p59+"), "
				+"("+IDVET+",7,'Desayuno',"+p60+"),("+IDVET+",7,'Refaccion AM',"+p61+"),("+IDVET+",7,'Almuerzo',"+p62+"),("+IDVET+",7,'Refaccion PM',"+p63+"),("+IDVET+",7,'Cena',"+p64+"), "
				+"("+IDVET+",8,'Desayuno',"+p65+"),("+IDVET+",8,'Refaccion AM',"+p66+"),("+IDVET+",8,'Almuerzo',"+p67+"),("+IDVET+",8,'Refaccion PM',"+p68+"),("+IDVET+",8,'Cena',"+p69+");";
			//System.out.println(query2);
			result=consulta.InsertarRegistro(query2);
			
			String IDVET2="SELECT idCALCULOS_VET"
					+" FROM CALCULOS_VET where CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+IDCE
					+" order by idCALCULOS_VET desc limit 1";
			IDVET2=consulta.ObtenerIDCalculosVET(IDVET2);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"1\",\"IDV\":\""+IDVET2+"\"}";
			}
			out.println(result);
			
		}else if(accion.equalsIgnoreCase("CargaDieta")){
			String Id=request.getParameter("ID");
			Conexion consulta = new Conexion();
			String result2=consulta.CargaDietas(Id);
			String result3=consulta.ListaKcalDietas(Id);
			String resultado3="{\"resultado\":\"OK\""+result2+result3+"}";
			out.println(resultado3);
		}else if(accion.equalsIgnoreCase("CambiosKcalDieta")){
			String Id=request.getParameter("ID");
			String col=request.getParameter("Kcal");
			
			Conexion consulta = new Conexion();
			String result2=consulta.PorGrupoAl(Id, col);
			out.println(result2);
		}else{
			HttpSession misession2= (HttpSession) request.getSession();
			idCE=misession2.getAttribute("idCE2").toString();
			response.sendRedirect("/ModuloNutricion/ExamenesNutricion/CalculosVET.jsp?prodId="+idCE);
		}
	}

}
