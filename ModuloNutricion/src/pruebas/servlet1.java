package pruebas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//import com.mysql.jdbc.Connection;
//import java.sql.Connection;
import java.sql.Statement;
//import com.sun.istack.internal.logging.Logger;

import java.sql.*;

import java.io.PrintWriter;
import java.sql.SQLException;


/**
 * Servlet implementation class servlet1
 */
@WebServlet("/servlet1")
public class servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static Conexion conexion;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = req.getParameter("user");
		String pass = req.getParameter("password");
		if ("a".equals(user) && "a".equals(pass)) {
			response(resp, "login ok");
		} else {
			response(resp, "invalid login");
		}
	}
	public String pruebaBD() {
		
		String mens="nada";
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion=DriverManager.getConnection("jdbc:mysql://127.0.0.1/NutricionUsalud","root","maynor");
			
			Statement cmd = conexion.createStatement();
			cmd = conexion.createStatement();

		    cmd.executeUpdate("insert into facultad(nombre) values('Humanidades')");
			
			System.out.println("Conexión realizada con éxito a: "+conexion.getCatalog());
			mens="exito";
			conexion.close();
			
			} catch(SQLException ex)
			{ 
				System.out.println("Se produjo una excepción durante la conexión:"+ex);
			} catch(Exception ex){ 
				System.out.println("Se produjo una excepción:"+ex);
			}
			return mens;
}
	private void response(HttpServletResponse resp, String msg)
			throws IOException {
		String msg2=pruebaBD();
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<t1>" + msg2 + "</t1>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
