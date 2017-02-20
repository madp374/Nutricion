package Paciente;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import ConexionBD.Conexion;

/**
 * Servlet implementation class Facultad
 */
@WebServlet("/Facultad")
public class Facultad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Facultad() {
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
		if(action.equalsIgnoreCase("buscar")){
			PrintWriter out = response.getWriter();
			Conexion consulta = new Conexion();
			String result="";
			result=consulta.CargaFacultad();
			//System.out.println(result);
			out.println(result);
		}else if(action.equals("agregarTA")){
			String alimen = request.getParameter("nombre"); //accion
			Conexion con = new Conexion();
			String auxa=con.decodificar(alimen);
			PrintWriter out = response.getWriter();
			
			String query2="insert into FACULTAD(nombre) values('"+auxa+"')";
			String result="";
			String ResultadoInsertar=con.InsertarRegistro(query2);
			if(ResultadoInsertar.equals("0")){
	        	result="{\"resultado\":\"OK\",\"mensaje\":\"Almacenado correctamente\"}";
			}else{
				result=ResultadoInsertar;
			}
			//System.out.println(resultado);

			out.println(result);
		}
	}

}
