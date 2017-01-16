package TablasNutricion;

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
 * Servlet implementation class TablaMultifasico
 */
@WebServlet("/TablaTrifoliar")
public class TablaTrifoliar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection conn = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TablaTrifoliar() {
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
	public String nombreArchivo(String entrada){
		String resultado="";
		if(entrada.equalsIgnoreCase("")){
			resultado=entrada;
		}else{
			String[] cadena = entrada.split("\\\\");
			int longitud=cadena.length-1;
			
			resultado=cadena[longitud];
			//System.out.println("cadena:"+resultado+",longitud:"+longitud);
		}
		return resultado;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=ValidarRequest(request.getParameter("a"));
		//System.out.println("accion2:"+action);
		if(action.equalsIgnoreCase("eliminardato")){
			String result="";
			PrintWriter out = response.getWriter();
			String IdBorrar=request.getParameter("idTRIFOLIAR");
			String sql = "DELETE FROM TRIFOLIAR WHERE idTRIFOLIAR="+IdBorrar+"; ";

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
			
		}else if(action.equalsIgnoreCase("carga")){
			String ID=request.getParameter("idTRIFOLIAR");
			//System.out.println(ID);
			PrintWriter out = response.getWriter();
			Conexion consulta = new Conexion();
			String result=consulta.CargaContenidos(ID);
			
			//System.out.println(result);
			out.println(result);
		}else if(action.equalsIgnoreCase("agregar")){
			String result="";
			PrintWriter out = response.getWriter();
			String titulo=request.getParameter("titulo");
			String estado=request.getParameter("estado");
			String descripcion=request.getParameter("descripcion");
			String contenido=request.getParameter("contenido");
			
			
			
			String archivo=nombreArchivo(request.getParameter("archivo"));
			String fecha_ini=request.getParameter("fecha_ini");
			String fecha_fin=request.getParameter("fecha_fin");
			
			//System.out.println("path:"+archivo);
			
			String sql = "INSERT INTO TRIFOLIAR(estado, titulo, descripcion, contenido, archivo, fecha_inicio, fecha_fin) "+
					"VALUES('"+estado+"','"+titulo+"','"+descripcion+"','"+contenido+"','"+archivo+"','"+fecha_ini+"','"+fecha_fin+"');";
			
			try {
				Conexion consulta = new Conexion();
				result=consulta.InsertarRegistro(sql);
				if(result.equals("0")){
					result="{\"resultado\":\"OK\",\"descripcion\":\"Registro almacenado correctamente\"}";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			out.println(result);
			
		}else if(action.equalsIgnoreCase("modificar")){
			String result="";
			PrintWriter out = response.getWriter();
			String ID=request.getParameter("ID");
			String titulo=request.getParameter("titulo");
			String estado=request.getParameter("estado");
			String descripcion=request.getParameter("descripcion");
			String contenido=request.getParameter("contenido");
			
			
			
			String archivo=nombreArchivo(request.getParameter("archivo"));
			String fecha_ini=request.getParameter("fecha_ini");
			String fecha_fin=request.getParameter("fecha_fin");
			
			//System.out.println("path:"+archivo);
			
			String sql = "UPDATE TRIFOLIAR SET estado='"+estado+"', titulo='"+titulo+"', descripcion='"+descripcion+"', contenido='"+contenido+"', archivo='"+archivo+"', fecha_inicio='"+fecha_ini+"', fecha_fin='"+fecha_fin+"' WHERE idTRIFOLIAR="+ID;

			try {
				Conexion consulta = new Conexion();
				result=consulta.InsertarRegistro(sql);
				if(result.equals("0")){
					result="{\"resultado\":\"OK\",\"descripcion\":\"Registro almacenado correctamente\"}";
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
				sortname = "idTRIFOLIAR";
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

			String sql = "SELECT * FROM TRIFOLIAR " + where + " " + sort + " " + limit;

		
			ResultSet result = null;
			int total;
			try {
				BDConectar();
				result = executeQuery(sql); 
				total = countRec("idTRIFOLIAR", "TRIFOLIAR $where");
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
		while (rs.next()) {
			String idTRIFOLIAR = rs.getString(1);
			String titulo = rs.getString(3);
			String estado = rs.getString(2);
			String descripcion = rs.getString(4);
			String contenido = URLEncoder.encode(rs.getString(5), "UTF-8");
			String fecha_inicio = rs.getString(7);
			String fecha_fin = rs.getString(8);
			
			buffer+="<row id='"+idTRIFOLIAR+"'>";
			buffer+="<cell><![CDATA[<input type='radio' class='menu_radio' name='id_radio' onclick='DatosSeleccionados("+idTRIFOLIAR+",\""+titulo+"\",\""+estado+"\",\""+descripcion+"\""+")' value='"+idTRIFOLIAR+"' />]]></cell>";
			buffer+="<cell><![CDATA["+idTRIFOLIAR+"]]></cell>";
			buffer+="<cell><![CDATA["+titulo+"]]></cell>";
			buffer+="<cell><![CDATA["+estado+"]]></cell>";
			buffer+="<cell><![CDATA["+fecha_inicio+"]]></cell>";
			buffer+="<cell><![CDATA["+fecha_fin+"]]></cell>";
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

