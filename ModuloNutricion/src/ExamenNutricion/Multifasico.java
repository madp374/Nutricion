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

import java.sql.*;

/**
 * Servlet implementation class Multifasico
 */
@WebServlet("/Multifasico")
public class Multifasico extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Multifasico() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		String carnet = request.getParameter("carnet");
		String accion = validar_vacio(request.getParameter("a")); //accion
		String p1 = request.getParameter("p1");// Tipo examen
		String p2 = request.getParameter("p2");// talla
		String p3 = request.getParameter("p3");// peso
		String p4 = request.getParameter("p4");// imc
		String p5 = request.getParameter("p5");// peso ideal
		String p6 = request.getParameter("p6");// peso max
		String p7 = request.getParameter("p7");// tricipital
		
		String p8 = request.getParameter("p8");// subescapular
		String p50 = request.getParameter("p10");// abdomen
		String p15=request.getParameter("p9");//Diag
		String p9 = "(select idDIAGNOSTICO from DIAGNOSTICO where descripcion='"+p15+"')";// Diagnostico
		String p10 = request.getParameter("busqueda");// busqueda
		String USRG = request.getParameter("p60");// busqueda
		if(accion.equalsIgnoreCase("guardar")){
			boolean ErrorSQL=false;
			PrintWriter out = response.getWriter();
			//String cadena ="carnet:"+carnet+",accion:"+accion
				//	+"\n,p1:"+p1+",p2:"+p2+",p3:"+p3+",p4:"+p4+",p5:"+p5+",p6:"+p6+",p7:"+p7+",p8:"+p8+",p9:"+p9+",busqueda:"+p10;
			
			//System.out.println(cadena);
			String ResultadoInsertar="";
			String result="";
			Conexion con =new Conexion();
			if(p10.equalsIgnoreCase("false")){
				String p11 = request.getParameter("p11");// nombre
				String p12 = request.getParameter("p12");// sexo
				String p13 = request.getParameter("p13");// fecha nac
				String p14 = request.getParameter("p14");// facultad
				
				String p41 = request.getParameter("p41");// cui
				String p42 = request.getParameter("p42");// tipo de paciente
				String p43 = request.getParameter("p43");// correo 
				String p44 = request.getParameter("p44");// telefono
				
				String Sfi[]=p13.split("/");
	  			
	  			String fini=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
	  			
	  			String aux=",CUI";
	  			String aux1="";
	  			
	  			if(p41.equalsIgnoreCase("")){
	  				aux1=","+0+"";
	  			}else{
	  				
	  				aux1=","+p41+"";
	  			}
	  		
	  			
				String query2="insert into PACIENTE(idPACIENTE,nombre,fecha_nacimiento,sexo,FACULTAD_idFACULTAD,correo,telefono,TipoPaciente"+aux+") "
						+"values("+carnet+",'"+p11+"','"+fini+"','"+p12+"',"+p14+",'"+p43+"',"+p44+",'"+p42+"'"+aux1+");";
				//System.out.println(query2);
				con.Insertar(query2);
			}
			String query="insert into MULTIFASICO(fecha,talla,peso,IMC,peso_ideal,peso_maximo,tricipital,subescapular,abdomen,imc1,TIPO_EXAMEN_idTIPO_EXAMEN,DIAGNOSTICO_idDIAGNOSTICO,PACIENTE_idPACIENTE,USUARIO_idUSUARIO)"
					+"values(CURDATE(),"+p2+","+p3+","+p4+","+p5+","+p6+","+p7+","+p8+","+p50+",'"+p15+"',"+p1+","+p9+","+carnet+","+USRG+");";
			ResultadoInsertar=con.InsertarRegistro(query);
			if(ResultadoInsertar.equals("0")){
				result="{\"resultado\":\"OK\"}";
			}else{
				result=ResultadoInsertar;
			}
			
			out.println(result);
		}else if(accion.equalsIgnoreCase("CargaEdicion")){
			PrintWriter out = response.getWriter();
			String MID = request.getParameter("MID");// MID
			//System.out.println("MID:"+MID);
			Conexion con =new Conexion();
			
			String result=con.CargaMultifasico(MID);
			//System.out.println(result);
			out.println(result);
		}else if(accion.equalsIgnoreCase("modificar")){
			PrintWriter out = response.getWriter();
			String ResultadoInsertar="";
			String result="";
			String ID = request.getParameter("ID");// MID
			//System.out.println("ID:"+ID);
			Conexion con =new Conexion();
			
			String query3="update MULTIFASICO set talla="+p2+", peso="+p3+",IMC="+p4+",peso_ideal="+p5+",peso_maximo="+p6+",tricipital="+p7+",subescapular="+p8+",abdomen="+p50+",TIPO_EXAMEN_idTIPO_EXAMEN="+p1+",DIAGNOSTICO_idDIAGNOSTICO="+p9+",imc1='"+p15+"' where idMULTIFASICO="+ID;
			ResultadoInsertar=con.InsertarRegistro(query3);
			if(ResultadoInsertar.equals("0")){
				result="{\"resultado\":\"OK\"}";
			}else{
				result=ResultadoInsertar;
			}
			out.println(result);
		}else if(accion.equalsIgnoreCase("eliminar")){
			PrintWriter out = response.getWriter();
			String ResultadoInsertar="";
			String result="";
			String ID = request.getParameter("ID");// MID
			//System.out.println("ID:"+ID);
			Conexion con =new Conexion();
			
			String query3="delete from MULTIFASICO where idMULTIFASICO="+ID;
			ResultadoInsertar=con.InsertarRegistro(query3);
			if(ResultadoInsertar.equals("0")){
				result="{\"resultado\":\"OK\"}";
			}else{
				result=ResultadoInsertar;
			}
			out.println(result);
		}else if(accion.equalsIgnoreCase("cargaexamen")){
			PrintWriter out = response.getWriter();
			
			String result="";
			Conexion con =new Conexion();
			
			result=con.CargarTipoExamen();
			//System.out.println(result);
			out.println(result);
		}else{
			//HttpSession misession2= (HttpSession) request.getSession();
			//idCE=misession2.getAttribute("idCE2").toString();
			System.out.println("salio");
			 response.sendRedirect("/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp");
		}
		
		
	}
	private void response(HttpServletResponse resp, String msg)
			throws IOException {
	
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<t1>" + msg + "</t1>");
		out.println("</body>");
		out.println("</html>");
	}

}
