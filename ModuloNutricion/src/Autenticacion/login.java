package Autenticacion;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ConexionBD.Conexion;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String usuario="";
		String pass="";
		String perfil="";
		
		usuario=request.getParameter("user");
		pass=request.getParameter("pass");
		perfil=request.getParameter("perfil");
		
		Conexion con =new Conexion();
		String mensaje="0";
		mensaje=con.login(usuario,pass,perfil);
		if(mensaje.equals("0")){
			response.sendRedirect("PortalSalud/InicioUsalud.jsp");
		}else{
			HttpSession session = request.getSession(true);  
			session.setAttribute("UsuarioActual", "activo");
			response.sendRedirect("ExamenesNutricion/ExamenMultifasico.jsp");
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
