package CalculosNutricion;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ConexionBD.Conexion;

import com.google.gson.Gson;

/**
 * Servlet implementation class Enfermedad
 */
@WebServlet("/Enfermedad")
public class Enfermedad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Enfermedad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String action=request.getParameter("a");
		//System.out.println(action);
		
		if(action!=null){
			
		
		}
		else{
			try {
                String term = request.getParameter("term");
                
                Conexion consulta = new Conexion();
                ArrayList<String> list = consulta.getEnfermedad(term);
                String searchList = new Gson().toJson(list);
               // System.out.println(searchList);
                response.getWriter().write(searchList);              
    			
	        } catch (Exception e) {
	                System.err.println(e.getMessage());
	        }
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("a"); //accion
		String nombre = request.getParameter("enfs"); //accion
		if(accion.equals("Existe")){
			PrintWriter out = response.getWriter();
			Conexion query = new Conexion();
			String resultado = query.BuscarEnfermedadExistente(nombre.toLowerCase());
			//System.out.println(resultado);

			out.println(resultado);
		}else if(accion.equals("agregar")){
			PrintWriter out = response.getWriter();
			String ef = request.getParameter("ef"); //accion
			Conexion query = new Conexion();
			String resultado = query.RegistrarIDEnfermedad(ef.toLowerCase());
			//System.out.println(resultado);

			out.println(resultado);
		}
	}

}
