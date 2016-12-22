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
import ConexionBD.Conexion;
/**
 * Servlet implementation class TablaMultifasico
 */
@WebServlet("/TablaMulti")
public class TablaMulti extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TablaMulti() {
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
			String IdBorrar=request.getParameter("idMultifasico");
			String sql = "delete from multifasico where idMultifasico="+IdBorrar+"; ";

			ResultSet resultado = null;
			
			try {
				resultado = executeQuery(sql); 
				System.out.println("resultado eliminar:"+resultado);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			String result="{\"resultado\":\"OK\",\"mensaje\":\"Almacenado\"}";
			System.out.println(result);
			out.println(result);
			
		}else{
			PrintWriter printWriter = new PrintWriter(response.getOutputStream());

			int page = correctInt(request.getParameter("page"));
			int rp = correctInt(request.getParameter("rp"));
			String sortname = correctNull(request.getParameter("sortname"));
			String sortorder = correctNull(request.getParameter("sortorder"));
			String query = correctNull(request.getParameter("query"));
			String qtype = correctNull(request.getParameter("qtype"));
			String where = "";
			String sort = "";

			if (sortname.equals("")) {
				sortname = "idMultifasico";
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

			String sql = "SELECT * FROM Multifasico " + where + " " + sort + " " + limit;

			ResultSet result = null;
			int total;
			try {
				result = executeQuery(sql); 
				total = countRec("idMultifasico", "Multifasico $where");
				printWriter.write(getJson(result, total, page));
			} catch (Exception e) {
				e.printStackTrace();
			}

			printWriter.flush();
			
		}
		
	}
	
	private String getJson(ResultSet rs, int total, int page) throws Exception {
		String buffer = "";
		while (rs.next()) {
			String idMultifasico = rs.getString(1);
			String Paciente_idPaciente = rs.getString(2);
			String fecha = rs.getString(3);
			
			buffer+="<row id='"+idMultifasico+"'>";
			buffer+="<cell><![CDATA[<input type='radio' class='menu_radio' name='id_radio' onclick='DatosSeleccionados("+idMultifasico+")' value='"+idMultifasico+"' />]]></cell>";
			buffer+="<cell><![CDATA["+idMultifasico+"]]></cell>";
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

	public static Connection getConnection() throws Exception {
		Conexion datos = new Conexion();
		
		String driver = "com.mysql.jdbc.Driver";
		String connection = "jdbc:mysql://"+datos.servidor+":3306/"+datos.BD;
		String user = datos.usuarioserver;
		String password = datos.clave;
		Class.forName(driver);
		return (Connection) DriverManager.getConnection(connection, user,
				password);
	}

	public static ResultSet executeQuery(String query) throws Exception {
		Statement st = null;
		st = getConnection().createStatement();
		return (ResultSet) st.executeQuery(query);
	}
	
	public void EjecutarQuery(String query) throws Exception {
		Statement st = null;
		st = getConnection().createStatement();
		st.executeQuery(query);
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
}
