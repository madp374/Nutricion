package ExamenNutricion;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ConexionBD.Conexion;

import java.sql.*;

/**
 * Servlet implementation class Multifasico
 */
@WebServlet("/Multifasico")
public class Multifasico extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Multifasico() {
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
		
		String carnet="";
		String TipoCodigo="";
		String nombre="";
		String fecha="";
		String TipoExamen="";
		String Facultad="";
		String Sexo="";
		String edad="";
		String talla="";
		String peso="";
		String imc="";
		String pesoI="";
		String pesoM="";
		String Diag="";
		String tricipital="";
		String subescapular="";
		String sumapliegues="";

		carnet = request.getParameter("carnet");
		TipoCodigo=request.getParameter("TipoCodigo");
		
		nombre = request.getParameter("nombre");
		fecha="";
		Sexo="";
		Facultad="";
		
		TipoExamen=request.getParameter("TipoExamen");
		TipoExamen="(select idTIPO_EXAMEN from TIPO_EXAMEN where nombre=\""+TipoExamen+"\")";
		
		talla=request.getParameter("talla");
		peso=request.getParameter("peso");
		Diag=request.getParameter("Diag");
		
		tricipital=request.getParameter("tricipital");
		subescapular=request.getParameter("subescapular");
		sumapliegues=request.getParameter("sumapliegues");
		
		String registro="";
		registro=request.getParameter("mensaje2");
		
		String query="";
		Conexion con =new Conexion();
		if(registro==null){
			//Paciente ya registrado
			
		}else{
			//Paciente no registrado
			String query2="";
			fecha=request.getParameter("fechaNac");
			Sexo=request.getParameter("Sexo");
			Facultad=request.getParameter("Facultad");

			query2="insert into PACIENTE(idPACIENTE,usuario,password,nombre,fecha_nacimiento,sexo,estado,FACULTAD_idFACULTAD) "
					+"values("+carnet+",'prueba3','prueba5','"+nombre+"','"+fecha+"','"+Sexo+"','activo',"+Facultad+");";
			
			con.Insertar(query2);
		}
		
		query="insert into MULTIFASICO(fecha,talla,peso,tricipital,subescapular,TIPO_EXAMEN_idTIPO_EXAMEN,DIAGNOSTICO_idDIAGNOSTICO,PACIENTE_idPACIENTE)"
				+"values(CURDATE(),"+talla+","+peso+","+tricipital+","+subescapular+","+TipoExamen+",(select idDIAGNOSTICO from DIAGNOSTICO where descripcion=\""+Diag+"\"),"+carnet+");";
		con.Insertar(query);
		
		
		response.sendRedirect("/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp");
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
