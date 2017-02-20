package TablasNutricion;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class TablaMultifasico
 */
@WebServlet("/TablaAlimento")
public class TablaAlimento extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection conn = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TablaAlimento() {
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
		//System.out.println("accion"+action);
		if(action.equalsIgnoreCase("eliminardato")){
			String result="";
			PrintWriter out = response.getWriter();
			String IdBorrar=request.getParameter("idALIMENTO");
			String sql = "delete from ALIMENTO where idALIMENTO="+IdBorrar+"; ";

			try {
				Conexion consulta = new Conexion();
				result=consulta.InsertarRegistro(sql);
				if(result.equals("0")){
					result="{\"resultado\":\"OK\",\"descripcion\":\"Registro eliminado correctamente\"}";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			out.println(result);
			
		}else if(action.equalsIgnoreCase("modificar")){
			String result="";
			PrintWriter out = response.getWriter();
			String ID=request.getParameter("codigo");
			String alimento=request.getParameter("alimento");
			String caloria=request.getParameter("caloria");
			String grupo=request.getParameter("grupo");
			String metrica=request.getParameter("metrica");
			
			
			try {
				Conexion consulta = new Conexion();
				String auxa=consulta.decodificar(alimento);
				String sql = "UPDATE ALIMENTO SET nombre='"+auxa+"', caloria="+caloria+", PORCION_idPORCION="+metrica+", GrupoAlimenticio_idGrupoAlimenticio="+grupo+" WHERE idALIMENTO="+ID+"; ";

				result=consulta.InsertarRegistro(sql);
				if(result.equals("0")){
					result="{\"resultado\":\"OK\",\"descripcion\":\"Registro modificado correctamente\"}";
				}else{
					result="{\"resultado\":\"OK\",\"descripcion\":\"Error al modificar, intentelo nuevamente\"}";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
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
				sortname = "idALIMENTO";
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
				where = " AND " + qtype + " LIKE '%" + query + "%'";
			}

			String sql = "SELECT A.idALIMENTO, A.nombre, A.caloria, A.PORCION_idPORCION, G.nombre as grupo FROM ALIMENTO A, GrupoAlimenticio G WHERE A.GrupoAlimenticio_idGrupoAlimenticio=G.idGrupoAlimenticio " + where + " " + sort + " " + limit;

		
			ResultSet result = null;
			int total;
			try {
				BDConectar();
				result = executeQuery(sql); 
				total = countRec("idALIMENTO", "ALIMENTO $where");
				printWriter.write(getJson(result, total, page));
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			printWriter.flush();
			
		}
		
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
		Conexion consulta = new Conexion();
		while (rs.next()) {
			String idALIMENTO = rs.getString(1);
			String nombre = consulta.Codificar(rs.getString(2));
			String caloria = rs.getString(3);
			String metrica = rs.getString(4);
			String grupo = rs.getString(5);
			
			
			buffer+="<row id='"+idALIMENTO+"'>";
			buffer+="<cell><![CDATA[<input type='radio' class='menu_radio' name='id_radio' onclick='DatosSeleccionados("+idALIMENTO+",\""+nombre+"\","+caloria+","+metrica+",\""+grupo+"\")' value='"+idALIMENTO+"' />]]></cell>";
			buffer+="<cell><![CDATA["+idALIMENTO+"]]></cell>";
			buffer+="<cell><![CDATA["+nombre+"]]></cell>";
			buffer+="<cell><![CDATA["+grupo+"]]></cell>";
			buffer+="</row>\n";
			
		}
		String cadena="<?xml version=\"1.0\" encoding=\"utf-8\"?>"
				+"<rows><page>"+page+"</page><total>"+total+"</total>"
				+buffer+"</rows>";
		
		//System.out.println(cadena);
		return cadena;
	}
	
	public String ValidarRequest(String valor){
		if(valor==null){
			return "";
		}else{
			return valor;
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

	
}
