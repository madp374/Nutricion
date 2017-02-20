package CalculosNutricion;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import java.util.ArrayList;
import ConexionBD.Conexion;

/**
 * Servlet implementation class Alimento
 */
@WebServlet("/Citas")
public class Citas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Citas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion = request.getParameter("a"); 
		
		if(accion.equals("guardar")){
			PrintWriter out = response.getWriter();
			
			String p1=request.getParameter("p1"); //paciente
			String p2=request.getParameter("p2"); //tipo consulta
			String p3=request.getParameter("p3"); //fecha
			String p4=request.getParameter("p4"); //hora
			
			String busqueda = request.getParameter("busqueda");// busqueda
			Conexion consulta = new Conexion();
			if(busqueda.equalsIgnoreCase("false")){
				String p11 = request.getParameter("p11");// nombre
				String p12 = request.getParameter("p12");// sexo
				String p13 = request.getParameter("p13");// fecha nac
				String p14 = request.getParameter("p14");// facultad
				
				String p16 = request.getParameter("p16");// cui
				String p17 = request.getParameter("p17");// tipo de paciente
				String p18 = request.getParameter("p18");// correo 
				String p19 = request.getParameter("p19");// telefono
				
				String Sfi[]=p13.split("/");
	  			
	  			String fini=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
	  			
	  			String aux=",CUI";
	  			String aux1="";
	  			
	  			if(p16.equalsIgnoreCase("")){
	  				aux1=","+0+"";
	  			}else{
	  				
	  				aux1=","+p16+"";
	  			}
	  			String query2="insert into PACIENTE(idPACIENTE,nombre,fecha_nacimiento,sexo,FACULTAD_idFACULTAD,correo,telefono,TipoPaciente"+aux+") "
						+"values("+p1+",'"+p11+"','"+fini+"','"+p12+"',"+p14+",'"+p18+"',"+p19+",'"+p17+"'"+aux1+");";
				//System.out.println(query2);
				consulta.Insertar(query2);
			}
			
			String Sfi[]=p3.split("/");
  			
  			String fecha=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
  			
			String query="INSERT INTO CITA(PACIENTE_idPACIENTE,tconsulta,fecha,hora_inicio,estado,reajuste) VALUES("+p1+",'"+p2+"','"+fecha+"',STR_TO_DATE('"+p4+"', '%h:%i %p'),'Pendiente',0);";
			String result="";
			
			result=consulta.InsertarRegistro(query);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro almacenado correctamente\"}";
			}

			out.println(result);
		}else if(accion.equals("modificar")){
			PrintWriter out = response.getWriter();
			
			String p1=request.getParameter("p1"); //paciente
			String p2=request.getParameter("p2"); //tipo consulta
			String p3=request.getParameter("p3"); //fecha
			String p4=request.getParameter("p4"); //hora
			String p5=request.getParameter("p5"); //estado
			String ID=request.getParameter("ID"); //ID
			
			String Sfi[]=p3.split("/");
  			
  			String fecha=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
  			
			String query="UPDATE CITA SET PACIENTE_idPACIENTE="+p1+",tconsulta='"+p2+"',fecha='"+fecha+"',hora_inicio=STR_TO_DATE('"+p4+"', '%h:%i %p'),estado='"+p5+"' WHERE idCITA="+ID;
			String result="";
			Conexion consulta = new Conexion();
			result=consulta.InsertarRegistro(query);
			if(result.equals("0")){
				result="{\"resultado\":\"OK\",\"mensaje\":\"Registro modificado correctamente\"}";
			}

			out.println(result);
		}else if(accion.equals("cargar_tabla")){
			PrintWriter out = response.getWriter();
			String p3=request.getParameter("p3"); //fecha
			String p4=request.getParameter("p4"); //carnet
			
			String result="";
  			Conexion consulta = new Conexion();
  			if(p3!=""&&p4.equals("")){
  				String Sfi[]=p3.split("/");
  				String fecha=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
  				result=consulta.CargaTablaCitas(fecha);
  			}else if(p3!=""&&p4!=""){
  				String Sfi[]=p3.split("/");
  				String fecha=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
  				result=consulta.BuscarPaciente2(p4);
  				result+=consulta.CargaTablaCitasPaciente(fecha,p4);
  				
  			}else if(p4!=""&&p3.equals("")){
  				result=consulta.BuscarPaciente2(p4);
  				result+=consulta.CargaTablaCitasPacienteEspecifico(p4);
  			}
  			if(result.substring(0,1).equalsIgnoreCase("0")){
  				result="{\"resultado\":\"OK\",\"total\":\"0\",\"CITAS\":[]}";
  			}
  			
			
  			out.println(result);
		}else if(accion.equals("cargar_calendario")){
			PrintWriter out = response.getWriter();
			String result="{\"id\":1,\"start_year\":\"2017\",\"start_month\":\"2\",\"start_day\":\"13\",\"start_hour\":\"6\",\"start_minute\":\"30\",\"end_year\":\"2017\",\"end_month\":\"2\",\"end_day\":\"13\",\"end_hour\":\"7\",\"end_minute\":\"30\"}";
			out.println(result);
		}else if(accion.equals("PacienteCitaDatos")){
			PrintWriter out = response.getWriter();
			Conexion consulta = new Conexion();
			String p4=request.getParameter("carnet"); //carnet
			String result=consulta.BuscarPaciente2(p4)+"}";
			
			out.println(result);
		}else{
			PrintWriter out = response.getWriter();
			String result="{\"id\":1,\"start_year\":\"2017\",\"start_month\":\"2\",\"start_day\":\"13\",\"start_hour\":\"6\",\"start_minute\":\"30\",\"end_year\":\"2017\",\"end_month\":\"2\",\"end_day\":\"13\",\"end_hour\":\"7\",\"end_minute\":\"30\"}";
			out.println(result);
		}
		
		
	}

}
