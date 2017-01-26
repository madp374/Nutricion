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
				String RegistrosMultifasico=consulta.ObtenerRegistrosMultifasico(carnet);
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
		}
	}

}
