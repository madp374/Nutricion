package Paciente;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ConexionBD.Conexion;
/**
 * Servlet implementation class Paciente
 */
@WebServlet("/Paciente")
public class Paciente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Paciente() {
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
		String action=request.getParameter("a");
		//System.out.println(action);
		if(action.equalsIgnoreCase("buscar")){
			
			PrintWriter out = response.getWriter();
			
			String carnet = request.getParameter("carnet");
			String result="";
			Conexion consulta = new Conexion();
			ArrayList<DatosPaciente> lista = consulta.BuscarPaciente1(carnet);
			System.out.println(lista);
			String tempNombre="0";
			String tempSexo="";
			String tempFecha="";
			String tempFacultad="";
			System.out.println(lista.size());
			for(int i=0; i<lista.size();i++){
				    DatosPaciente temp=lista.get(i);
				 	tempNombre=temp.getNombre();
				 	tempFecha=temp.getFechaNac();
				 	tempSexo=temp.getSexo();
				 	tempFacultad=temp.getFacultad();
				 	
			 }
			
			if(tempNombre.equalsIgnoreCase("0")){
				result="{\"resultado\":\"ERROR\",\"nombre\":\""+tempNombre+"\"}";
			}else{
				result="{\"resultado\":\"OK\",\"nombre\":\""+tempNombre+"\",\"sexo\":\""+tempSexo+"\",\"fecha\":\""+tempFecha+"\",\"facultad\":\""+tempFacultad+"\"}";
			}
		
			
			//System.out.println(result);
			out.println(result);
		}else if(action.equalsIgnoreCase("PacienteMultifasico")){
			//System.out.println("entro");
			PrintWriter out = response.getWriter();
			
			String carnet = request.getParameter("carnet");
			String result="";
			Conexion consulta = new Conexion();
			result = consulta.BuscarPaciente2(carnet);
			//System.out.println(result);
			
			if(result.equalsIgnoreCase("0")){
				result="{\"resultado\":\"ERROR\",\"nombre\":\"0\"}";
			}else{
				String RegistrosMultifasico=consulta.ObtenerRegistrosMultifasico(carnet);
				result+=RegistrosMultifasico+"}";
				
			}
		
			
			//System.out.println(result);
			out.println(result);
		}else if(action.equalsIgnoreCase("PacienteTabla")){
			//System.out.println("entro");
			PrintWriter out = response.getWriter();
			
			String carnet = request.getParameter("carnet");
			String result="";
			Conexion consulta = new Conexion();
			result = consulta.BuscarPaciente3(carnet);
			//System.out.println(result);
			
			if(result.equalsIgnoreCase("0")){
				result="{\"resultado\":\"ERROR\",\"nombre\":\"0\"}";
			}else{
				String RegistrosMultifasico=consulta.ObtenerRegistrosMultifasico(carnet);
				result+=RegistrosMultifasico+"}";
				
			}
		
			
			//System.out.println(result);
			out.println(result);
		}else if(action.equalsIgnoreCase("PacienteCita")){
			//System.out.println("entro");
			PrintWriter out = response.getWriter();
			
			String carnet = request.getParameter("carnet");
			String result="";
			Conexion consulta = new Conexion();
			result = consulta.BuscarPaciente2(carnet);
			//System.out.println(result);
			
			if(result.equalsIgnoreCase("0")){
				result="{\"resultado\":\"ERROR\",\"nombre\":\"0\"}";
			}else{
				result+="}";
				
			}
		
			
			//System.out.println(result);
			out.println(result);
		}else if(action.equalsIgnoreCase("PacienteConsultaExterna2")){
			//System.out.println("entro");
			PrintWriter out = response.getWriter();
			
			String carnet = request.getParameter("carnet");
			String result="";
			Conexion consulta = new Conexion();
			result = consulta.BuscarPaciente2(carnet);
			//System.out.println(result);
			
			if(result.equalsIgnoreCase("0")){
				result="{\"resultado\":\"ERROR\",\"nombre\":\"0\"}";
			}else{
				String RegistrosMultifasico=consulta.ObtenerRegistrosConsultaExterna(carnet);
				result+=RegistrosMultifasico+"}";
				
			}
		
			
			//System.out.println(result);
			out.println(result);
		}else if(action.equalsIgnoreCase("PacienteConsultaExterna")){
			//System.out.println("entro");
			PrintWriter out = response.getWriter();
			
			String carnet = request.getParameter("carnet");
			String result="";
			Conexion consulta = new Conexion();
			ArrayList<DatosPaciente> lista = consulta.BuscarPaciente1(carnet);
			//System.out.println(lista);
			String tempNombre="0";
			String tempSexo="";
			String tempFecha="";
			String tempFacultad="";
			//System.out.println(lista.size());
			for(int i=0; i<lista.size();i++){
				    DatosPaciente temp=lista.get(i);
				 	tempNombre=temp.getNombre();
				 	tempFecha=temp.getFechaNac();
				 	tempSexo=temp.getSexo();
				 	tempFacultad=temp.getFacultad();
				 	
			 }
			
			if(tempNombre.equalsIgnoreCase("0")){
				result="{\"resultado\":\"ERROR\",\"nombre\":\""+tempNombre+"\"}";
			}else{
				result="{\"resultado\":\"OK\",\"nombre\":\""+tempNombre+"\",\"sexo\":\""+tempSexo+"\",\"fecha\":\""+tempFecha+"\",\"facultad\":\""+tempFacultad+"\"";
				String RegistrosMultifasico=consulta.ObtenerRegistrosConsultaExterna(carnet);
				result+=RegistrosMultifasico+"}";
				
			}
		
			
			//System.out.println(result);
			out.println(result);
		}else if(action.equalsIgnoreCase("modificar")){
			PrintWriter out = response.getWriter();
			String carnet = request.getParameter("carnet");
			String p11 = request.getParameter("p11");// nombre
			String p12 = request.getParameter("p12");// sexo
			String p13 = request.getParameter("p13");// fecha nac
			String p14 = request.getParameter("p14");// facultad
			
			String p41 = request.getParameter("p41");// cui
			String p42 = request.getParameter("p42");// tipo de paciente
			String p43 = request.getParameter("p43");// correo 
			String p44 = request.getParameter("p44");// telefono
			
		
  			
  			if(p41.equalsIgnoreCase("")){
  				p41="0";
  			}
  			if(p44.equalsIgnoreCase("")){
  				p44="0";
  			}
			String Sfi[]=p13.split("/");
  			
  			String fini=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
  			
  			Conexion con =new Conexion();
  			String result="";
  			String ResultadoInsertar;
  			String query="UPDATE PACIENTE SET nombre='"+p11+"', fecha_nacimiento='"+fini+"', sexo='"+p12
  					+"',correo='"+p43
  					+"',telefono="+p44
  					+", TipoPaciente="+p42
  					+",CUI="+p41
  					+", FACULTAD_idFACULTAD="+p14+" WHERE idPACIENTE="+carnet;
  			
			ResultadoInsertar=con.InsertarRegistro(query);
			if(ResultadoInsertar.equals("0")){
				result="{\"resultado\":\"OK\",\"descripcion\":\"Cambios realizados correctamente\"}";
			}else{
				result="{\"resultado\":\"ERROR\",\"descripcion\":\"Error de almacenamiento en la base de datos\"}";
			}
  			out.println(result);
		}else if(action.equalsIgnoreCase("eliminar")){
			PrintWriter out = response.getWriter();
			String carnet = request.getParameter("carnet");
			
		
  			
  			Conexion con =new Conexion();
  			String result="";
  			String ResultadoInsertar;
  			String query="DELETE FROM PACIENTE WHERE idPACIENTE="+carnet;
  			
			ResultadoInsertar=con.InsertarRegistro(query);
			if(ResultadoInsertar.equals("0")){
				result="{\"resultado\":\"OK\",\"descripcion\":\"Eliminado correctamente\"}";
			}else{
				result="{\"resultado\":\"ERROR\",\"descripcion\":\"Error de almacenamiento en la base de datos\"}";
			}
  			out.println(result);
		}else if(action.equalsIgnoreCase("insertarpaciente")){
			PrintWriter out = response.getWriter();
			String carnet = request.getParameter("carnet");
			String p11 = request.getParameter("p11");// nombre
			String p12 = request.getParameter("p12");// sexo
			String p13 = request.getParameter("p13");// fecha nac
			String p14 = request.getParameter("p14");// facultad
			
			String p41 = request.getParameter("p15");// cui
			String p42 = request.getParameter("p16");// tipo de paciente
			String p43 = request.getParameter("p17");// correo 
			String p44 = request.getParameter("p18");// telefono
			
  			
  			String aux=",CUI";
  			String aux1="";
  			
  			if(p41.equalsIgnoreCase("")){
  				aux1=","+0+"";
  			}else{
  				
  				aux1=","+p41+"";
  			}
  			Conexion con =new Conexion();
  			String result="";
  			String ResultadoInsertar="";
  			
			String query2="insert into PACIENTE(idPACIENTE,nombre,fecha_nacimiento,sexo,FACULTAD_idFACULTAD,correo,telefono,TipoPaciente"+aux+") "
					+"values("+carnet+",'"+p11+"','"+p13+"','"+p12+"',"+p14+",'"+p43+"',"+p44+",'"+p42+"'"+aux1+");";
			//System.out.println(query2);
			ResultadoInsertar=con.InsertarRegistro(query2);
			if(ResultadoInsertar.equals("0")){
				result="{\"resultado\":\"OK\",\"descripcion\":\"Cambios realizados correctamente\"}";
			}
  			out.println(result);
		}
	}

}
