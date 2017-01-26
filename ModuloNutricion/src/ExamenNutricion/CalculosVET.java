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
			out.println(result);
		}else if(accion.equalsIgnoreCase("eliminar")){
			
			String IdBorrar=request.getParameter("ID");
			String sql = "delete from CALCULOS_VET where idCALCULOS_VET="+IdBorrar+"; ";

			String result2="";
			
			try {
				Conexion consulta = new Conexion();
				consulta.Eliminar(sql); 
				result2="{\"resultado\":\"OK\",\"mensaje\":\"Registro eliminado\"}";
				//System.out.println("resultado eliminar:");
			} catch (Exception e) {
				e.printStackTrace();
				result2="{\"resultado\":\"Error\",\"mensaje\":\"Error al eliminiar\"}";
			}
			
			
			//System.out.println(result);
			out.println(result2);
			
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
			
			String cadena=idCE+","+accion+",p1:"+p1+",p2:"+p2+",p3:"+p3+",p4:"+p4+",p5:"+p5
					+",p6:"+p6+",p7:"+p7+",p8:"+p8+",p9:"+p9+",p10:"+p10
					+",p11:"+p11+",p12:"+p12+",p13:"+p13+",p14:"+p14+",p15:"+p15;
			//System.out.println(cadena);
			
			String query="UPDATE CALCULOS_VET set peso="+p1+",imc="+p2+",ActividadFisica="+p3+",FormulaVet='"+p4+"',VET="+p5+",VETAF="+p6+",RBajoPeso="+p7+",RSobrePeso="+p8+",RObesidad="+p9+",carbohidrato="+p10+",proteina="+p11+",grasa="+p12+",placteosg="+p13+",placteoe="+p14+",pvegetal="+p15+",pfruta="+p16+",pcereal="+p17+",pcarne="+p18+",pgrasa="+p19+",pazucar="+p20 +
					" where idCALCULOS_VET="+idCE;
			
			Conexion consulta = new Conexion();
			result=consulta.InsertarRegistro(query);
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
			
			//String cadena=idCE+","+accion+",p1:"+p1+",p2:"+p2+",p3:"+p3+",p4:"+p4+",p5:"+p5
				//	+",p6:"+p6+",p7:"+p7+",p8:"+p8+",p9:"+p9+",p10:"+p10
					//+",p11:"+p11+",p12:"+p12+",p13:"+p13+",p14:"+p14+",p15:"+p15;
			//System.out.println(cadena);
			
			String query="insert into CALCULOS_VET(fecha, peso, imc, ActividadFisica, FormulaVet, VET, VETAF, RBajoPeso, RSobrePeso, RObesidad, carbohidrato, proteina, grasa, placteosg, placteoe, pvegetal, pfruta, pcereal, pcarne, pgrasa, pazucar, CONSULTA_EXTERNA_idCONSULTA_EXTERNA,USUARIO_idUSUARIO) " 
					+"VALUES(CURDATE(),"+p1+","+p2+","+p3+",'"+p4+"',"+p5+","+p6+","+p7+","+p8+","+p9+","+p10+","+p11+","+p12+","+p13+","+p14+","+p15+","+p16+","+p17+","+p18+","+p19+","+p20+","+idCE+","+p0+");";
			
			Conexion consulta = new Conexion();
			result=consulta.InsertarRegistro(query);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro almacenado correctamente\"}";
			}
			
			out.println(result);
			
		}else{
			HttpSession misession2= (HttpSession) request.getSession();
			idCE=misession2.getAttribute("idCE2").toString();
			 response.sendRedirect("/ModuloNutricion/ExamenesNutricion/CalculosVET.jsp?prodId="+idCE);
		}
	}

}
