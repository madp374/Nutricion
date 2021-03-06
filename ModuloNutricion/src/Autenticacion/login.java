package Autenticacion;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;

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
	private static String md5(String clear) throws Exception {
		MessageDigest md = MessageDigest.getInstance("MD5");
		byte[] b = md.digest(clear.getBytes());

		int size = b.length;
		StringBuffer h = new StringBuffer(size);
		for (int i = 0; i < size; i++) {
		int u = b[i] & 255;
		if (u < 16) {
		h.append("0" + Integer.toHexString(u));
		} else {
		h.append(Integer.toHexString(u));
		}
		}
		return h.toString();
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession misession= request.getSession(true);
		String usuario="";
		String pass="";
		int perfil;
		
		usuario=request.getParameter("user");
		pass=request.getParameter("pass");
		perfil=Integer.parseInt(request.getParameter("perfil"))-1;
		
		if(perfil==0){response.sendRedirect("/ModuloNutricion/PortalSalud/InicioNutricion.jsp?e=false");}
		else{
			try {
				pass=md5(pass);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Conexion con =new Conexion();
			String mensaje="0";
			mensaje=con.login(usuario,pass,perfil);
			if(mensaje.equalsIgnoreCase("0")){
				response.sendRedirect("/ModuloNutricion/PortalSalud/InicioNutricion.jsp?e=false");
			}else{
				String aux[]=mensaje.split(",");
				
				mensaje=aux[0];
				String NomUsuario=aux[1];
				if(perfil==1){
					//Nutricionista
					misession.setAttribute("NUSUARIO", usuario);
					misession.setAttribute("NIDSUARIO", mensaje);
					misession.setAttribute("NomUsuario", NomUsuario);
					misession.setAttribute("NPERFIL", "nutri");
					response.sendRedirect("/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp");
				}
				else if(perfil==2){
					//Admin
					misession.setAttribute("NUSUARIO", usuario);
					misession.setAttribute("NIDSUARIO", mensaje);
					misession.setAttribute("NomUsuario", NomUsuario);
					misession.setAttribute("NPERFIL", "admi");
					response.sendRedirect("/ModuloNutricion/Administracion/Usuario.jsp");
				}
			}
			response(response, usuario);
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
