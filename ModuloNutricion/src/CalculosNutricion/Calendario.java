package CalculosNutricion;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ConexionBD.Conexion;

/**
 * Servlet implementation class Calendario
 */
@WebServlet("/Calendario")
public class Calendario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calendario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("a"); //accion
		if(accion.equals("cargames")){
			Conexion query = new Conexion();
			PrintWriter out = response.getWriter();
			
			String resultado = query.CargaCalendarioMes();
			String resultado2="{\"resultado\":\"OK\",\"total\":\"4\"}";
			
			out.println(resultado);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Conexion consulta = new Conexion();
		String result2=consulta.CargaCalendario();
		//System.out.println(result2);
		String result="[{\"id\":\"1\",\"start_year\":\"2017\",\"start_month\":\"1\",\"start_day\":\"13\",\"start_hour\":\"9\",\"start_minute\":\"30\",\"end_year\":\"2017\",\"end_month\":\"1\",\"end_day\":\"13\",\"end_hour\":\"10\",\"end_minute\":\"30\",\"title\":\"hola\"}]";
		out.println(result2);
	}

}
