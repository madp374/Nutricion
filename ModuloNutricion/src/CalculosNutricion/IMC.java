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
 * Servlet implementation class IMC
 */
@WebServlet("/IMC")
public class IMC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IMC() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("a");
		if(action.equalsIgnoreCase("cargaimc")){
			PrintWriter out = response.getWriter();
			String tallac=request.getParameter("talla");
			String peso=request.getParameter("peso");
			
			double imc=Double.parseDouble(peso)/Double.parseDouble(tallac);
			Conexion consulta = new Conexion();
			String result2=consulta.ConsultarIMC(imc, Double.parseDouble(tallac),Double.parseDouble(peso));
			String result="{\"resultado\":\"OK\",\"pesoideal\":\"12\",\"pesomax\":\"15\",\"diagnostico\":\"gordo\"}";
			
			
			out.println(result2);
		}
	}

}
