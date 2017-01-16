package CalculosNutricion;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ConexionBD.Conexion;

/**
 * Servlet implementation class Trifoliar
 */
@WebServlet("/Trifoliar")
public class Trifoliar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Trifoliar() {
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
	public String ValidarRequest(String valor){
		if(valor==null){
			return "";
		}else{
			return valor;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=ValidarRequest(request.getParameter("a"));
		System.out.println("accionnoti:"+action);
		if(action.equalsIgnoreCase("carga")){
			PrintWriter out = response.getWriter();
			Conexion consulta = new Conexion();
			String result=consulta.CargaNoticias();
			System.out.println(result);
			out.println(result);
		}
	}

}
