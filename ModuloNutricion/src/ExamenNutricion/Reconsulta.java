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
 * Servlet implementation class Reconsulta
 */
@WebServlet("/Reconsulta")
public class Reconsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reconsulta() {
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
		System.out.println("accion:"+accion);
		if(accion.equalsIgnoreCase("CargarTallaPeso")){
			Conexion query = new Conexion();
			result=query.ObtenerTallaPeso(idCE);
			misession.setAttribute("idCE1", idCE);
			out.println(result);
			
		}else if(accion.equalsIgnoreCase("CargarEdicion")){
			Conexion query = new Conexion();
			result=query.CargaReconsulta(idCE);
			out.println(result);
		}else if(accion.equalsIgnoreCase("modificar")){
			String p1="(SELECT idTIPO_EXAMEN FROM TIPO_EXAMEN where nombre='"+request.getParameter("p1")+"')"; //tipo examen
			String p2=request.getParameter("p2"); //talla
			String p3=request.getParameter("p3"); //peso
			String p4=request.getParameter("p4"); //imc
			String p5=request.getParameter("p5"); //pesog
			String p6=request.getParameter("p6"); //pesop
			String p7=request.getParameter("p7"); //cintura
			String p8=request.getParameter("p8"); //pgrasa
			String p9=request.getParameter("p9"); //pagua
			String p10=request.getParameter("p10"); //grasa visceral
			String p11=request.getParameter("p11"); //masaosea
			String p12=request.getParameter("p12"); //vettanita
			String p13=request.getParameter("p13"); //datos subjetivos
			String p14=request.getParameter("p14"); //tratamiento
			String p15=request.getParameter("p15"); //educacion alimentaria
			
			String cadena=idCE+","+accion+",p1:"+p1+",p2:"+p2+",p3:"+p3+",p4:"+p4+",p5:"+p5
					+",p6:"+p6+",p7:"+p7+",p8:"+p8+",p9:"+p9+",p10:"+p10
					+",p11:"+p11+",p12:"+p12+",p13:"+p13+",p14:"+p14+",p15:"+p15;
			System.out.println(cadena);
			
			String query="UPDATE RECONSULTA " 
					+"SET talla="+p2+",peso="+p3+",IMC="+p4+",pesoganado="+p5+",pesoperdido="+p6+",cintura="+p7+",porcentajegrasa="+p8+",porcentajeagua="+p9+",grasavisceral="+p10+",masaosea="+p11+",vettanita="+p12+",datossubjetivos='"+p13+"',tratamiento='"+p14+"',educacion='"+p15+"',TIPO_EXAMEN_idTIPO_EXAMEN="+p1+" WHERE idRECONSULTA="+idCE;
			
			Conexion consulta = new Conexion();
			result=consulta.InsertarRegistro(query);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\"}";
			}
			
			out.println(result);
		}
		else if(accion.equalsIgnoreCase("guardar")){

			String p1="(SELECT idTIPO_EXAMEN FROM TIPO_EXAMEN where nombre='"+request.getParameter("p1")+"')"; //tipo examen
			String p2=request.getParameter("p2"); //talla
			String p3=request.getParameter("p3"); //peso
			String p4=request.getParameter("p4"); //imc
			String p5=request.getParameter("p5"); //pesog
			String p6=request.getParameter("p6"); //pesop
			String p7=request.getParameter("p7"); //cintura
			String p8=request.getParameter("p8"); //pgrasa
			String p9=request.getParameter("p9"); //pagua
			String p10=request.getParameter("p10"); //grasa visceral
			String p11=request.getParameter("p11"); //masaosea
			String p12=request.getParameter("p12"); //vettanita
			String p13=request.getParameter("p13"); //datos subjetivos
			String p14=request.getParameter("p14"); //tratamiento
			String p15=request.getParameter("p15"); //educacion alimentaria
			
			String cadena=idCE+","+accion+",p1:"+p1+",p2:"+p2+",p3:"+p3+",p4:"+p4+",p5:"+p5
					+",p6:"+p6+",p7:"+p7+",p8:"+p8+",p9:"+p9+",p10:"+p10
					+",p11:"+p11+",p12:"+p12+",p13:"+p13+",p14:"+p14+",p15:"+p15;
			System.out.println(cadena);
			
			String query="insert into RECONSULTA(fecha, talla, peso, IMC, pesoganado, pesoperdido, cintura, porcentajegrasa, porcentajeagua, grasavisceral, masaosea, vettanita, datossubjetivos, tratamiento, educacion, TIPO_EXAMEN_idTIPO_EXAMEN, CONSULTA_EXTERNA_idCONSULTA_EXTERNA) " 
					+"VALUES(CURDATE(),"+p2+","+p3+","+p4+","+p5+","+p6+","+p7+","+p8+","+p9+","+p10+","+p11+","+p12+",'"+p13+"','"+p14+"','"+p15+"',"+p1+","+idCE+");";
			
			Conexion consulta = new Conexion();
			consulta.Insertar(query);
			
			result="{\"resultado\":\"OK\"}";
			out.println(result);
			
		}else{
			HttpSession misession2= (HttpSession) request.getSession();
			idCE=misession2.getAttribute("idCE1").toString();
			 response.sendRedirect("/ModuloNutricion/ExamenesNutricion/Reconsulta.jsp?prodId="+idCE);
		}
		
		
	}
	

}
