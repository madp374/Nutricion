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
@WebServlet("/Alimento")
public class Alimento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alimento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String action=request.getParameter("a");
		System.out.println(action);
		
		if(action!=null){
			
			String valor=request.getParameter("valor");
			
			PrintWriter out = response.getWriter();
			Conexion consulta = new Conexion();
			String result="";
			result=consulta.BuscarAlimento(valor);
			System.out.println(result);
			out.println(result);
		}
		else{
			try {
                String term = request.getParameter("term");
                
                Conexion consulta = new Conexion();
                ArrayList<String> list = consulta.getAlimento(term);
                String searchList = new Gson().toJson(list);
                System.out.println(searchList);
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
		String alimen = request.getParameter("alimento"); //accion
		String cal = request.getParameter("caloria"); //accion
		String grupo = request.getParameter("grupo"); //accion
		
		if(accion.equals("agregar")){
			PrintWriter out = response.getWriter();
			Conexion query = new Conexion();
			String resultado = query.RegistrarIDAlimento(alimen.toLowerCase(),cal,grupo);
			System.out.println(resultado);

			out.println(resultado);
		}
		
		
	}

}
