package TablasNutricion;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ConexionBD.Conexion;

/**
 * Servlet implementation class TablaReconsulta
 */
@WebServlet("/TablaReconsulta")
public class TablaReconsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection conn = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TablaReconsulta() {
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
		String action=ValidarRequest(request.getParameter("a"));
		System.out.println("accion"+action);
		if(action.equalsIgnoreCase("eliminardato")){
			PrintWriter out = response.getWriter();
			String IdBorrar=request.getParameter("idRECONSULTA");
			String sql = "delete from RECONSULTA where idRECONSULTA="+IdBorrar+"; ";

		
			
			try {
				Conexion consulta = new Conexion();
				consulta.Eliminar(sql); 
				System.out.println("resultado eliminar:");
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			String result="{\"resultado\":\"OK\",\"mensaje\":\"Registro eliminado\"}";
			System.out.println(result);
			out.println(result);
			
		}else{
			PrintWriter printWriter = new PrintWriter(response.getOutputStream());
			HttpSession misession2= (HttpSession) request.getSession();
			int idCE = correctInt(misession2.getAttribute("idCE2").toString());
			int page = correctInt(request.getParameter("page"));
			int rp = correctInt(request.getParameter("rp"));
			String sortname = correctNull(request.getParameter("sortname"));
			String sortorder = correctNull(request.getParameter("sortorder"));
			String query = correctNull(request.getParameter("query"));
			String qtype = correctNull(request.getParameter("qtype"));
			String where = "";
			String sort = "";

			if (sortname.equals("")) {
				sortname = "idRECONSULTA";
			}
			if (sortorder.equals("")) {
				sortorder = "desc";
			}

			sort = "ORDER BY " + sortname + " " + sortorder;

			if (page == 0) {
				page = 1;
			}
			if (rp == 0) {
				rp = 10;
			}
			int start = ((page - 1) * rp);

			String limit = "LIMIT " + start + ", " + rp;

			if (!correctNull(query).equals("")) {
				where = " WHERE " + qtype + " LIKE '%" + query + "%'";
			}

			String sql = "SELECT R.idRECONSULTA, R.fecha, C.PACIENTE_idPACIENTE from CONSULTA_EXTERNA C, RECONSULTA R "
					+"WHERE R.CONSULTA_EXTERNA_idCONSULTA_EXTERNA=C.idCONSULTA_EXTERNA "
					+"AND C.idCONSULTA_EXTERNA="+ idCE  + where + " " + sort + " " + limit;

			
		
			ResultSet result = null;
			int total;
			try {
				BDConectar();
				result = executeQuery(sql); 
				total = countRec("idRECONSULTA", "RECONSULTA $where");
				printWriter.write(getJson(result, total, page));
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			printWriter.flush();
			
		}
	}
	public static void BDConectar() throws Exception {
		Conexion datos = new Conexion();
		
		String driver = "com.mysql.jdbc.Driver";
		String connection = "jdbc:mysql://"+datos.servidor+":3306/"+datos.BD;
		String user = datos.usuarioserver;
		String password = datos.clave;
		Class.forName(driver);
		conn= (Connection) DriverManager.getConnection(connection, user,
				password);
	}

	public static ResultSet executeQuery(String query) throws Exception {
		Statement st = null;
		st = conn.createStatement();
		return (ResultSet) st.executeQuery(query);
	}


	public static String correctNull(String str) {
		if (str == null) {
			return "";
		}
		return str.trim();
	}

	public static int correctInt(String str) {
		if (str == null) {
			return 0;
		}
		return Integer.parseInt(str.trim());

	}
	public int countRec(String fname, String tname) throws Exception {
		String sql = "SELECT count(" + fname + ") FROM " + tname;
		ResultSet result = executeQuery(sql);
		if (result.next()) {
			return result.getInt(1);
		}
		return 0;
	}
	private String getJson(ResultSet rs, int total, int page) throws Exception {
		String buffer = "";
		while (rs.next()) {
			String idRECONSULTA = rs.getString(1);
			String fecha = rs.getString(2);
			String Paciente_idPaciente = rs.getString(3);
			
			
			buffer+="<row id='"+idRECONSULTA+"'>";
			buffer+="<cell><![CDATA[<input type='radio' class='menu_radio' name='id_radio' onclick='DatosSeleccionados("+idRECONSULTA+")' value='"+idRECONSULTA+"' />]]></cell>";
			buffer+="<cell><![CDATA["+idRECONSULTA+"]]></cell>";
			buffer+="<cell><![CDATA["+Paciente_idPaciente+"]]></cell>";
			buffer+="<cell><![CDATA["+fecha+"]]></cell>";
			buffer+="</row>\n";
			
		}
		String cadena="<?xml version=\"1.0\" encoding=\"utf-8\"?>"
				+"<rows><page>"+page+"</page><total>"+total+"</total>"
				+buffer+"</rows>";
		
		System.out.println(cadena);
		return cadena;
	}
	
	public String ValidarRequest(String valor){
		if(valor==null){
			return "";
		}else{
			return valor;
		}
	}

}
