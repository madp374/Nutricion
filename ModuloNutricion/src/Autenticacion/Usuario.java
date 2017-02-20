package Autenticacion;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
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
@WebServlet("/Usuario")
public class Usuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection conn = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Usuario() {
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
		String action=ValidarRequest(request.getParameter("a"));
		//System.out.println("accion"+action);
		if(action.equalsIgnoreCase("eliminardato")){
			String result="";
			PrintWriter out = response.getWriter();
			String IdBorrar=request.getParameter("idUSUARIO");
			String sql = "delete from USUARIO where idUSUARIO="+IdBorrar+"; ";

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
			String usuario=request.getParameter("usuario");
			String pasw=request.getParameter("pass");
			String nombre=request.getParameter("nombre");
			String correo=request.getParameter("correo");
			String estado=request.getParameter("estado");
			String area=request.getParameter("area");
			
			try {
				pasw=md5(pasw);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			String sql = "UPDATE USUARIO SET password='"+pasw+"',nombre='"+nombre+"',correo='"+correo+"',estado='"+estado+"',ROL_idROL="+area+" WHERE idUSUARIO="+ID+"; ";
		
			try {
				Conexion consulta = new Conexion();
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
			
		}else if(action.equalsIgnoreCase("CargaRegistro")){
			String result="";
			PrintWriter out = response.getWriter();
			String ID=request.getParameter("idUSUARIO");
			
			try {
				Conexion consulta = new Conexion();
				result=consulta.CargaDatosUsuario(ID);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			//System.out.println(result);
			out.println(result);
			
		}else if(action.equalsIgnoreCase("agregar")){
			String result="";
			PrintWriter out = response.getWriter();
			
			String usuario=request.getParameter("usuario");
			String pasw=request.getParameter("pass");
			String nombre=request.getParameter("nombre");
			String correo=request.getParameter("correo");
			String estado=request.getParameter("estado");
			String area=request.getParameter("area");
			try {
				pasw=md5(pasw);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			String sql = "insert into USUARIO(usuario,password,nombre,correo,estado,ROL_idROL) "
					+"values('"+usuario+"','"+pasw+"','"+nombre+"','"+correo+"','"+estado+"',"+area+") ";
			
			

			try {
				Conexion consulta = new Conexion();
				result=consulta.UsuarioExiste(usuario);
				
				if(result.equals("1")){
					
					result=consulta.InsertarRegistro(sql);
					if(result.equals("0")){
						result="{\"resultado\":\"OK\",\"descripcion\":\"Registro almacenado correctamente\"}";
					}else{
						result="{\"resultado\":\"ERROR\",\"descripcion\":\"Error, intentelo nuevamente\"}";
					}
				}else{
					if(result.equals("0")){
						result="{\"resultado\":\"ERROR\",\"descripcion\":\"Error, al registrar\"}";
					}else{
						result="{\"resultado\":\"ERROR\",\"descripcion\":\"Error, el usuario ya existe\"}";
					}
					
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
				sortname = "idUSUARIO";
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

			String sql = "SELECT U.idUSUARIO, U.usuario, U.nombre, U.estado, R.nombre FROM USUARIO U, ROL R WHERE U.ROL_idROL=R.idROL " + where + " " + sort + " " + limit;

		
			ResultSet result = null;
			int total;
			try {
				BDConectar();
				result = executeQuery(sql); 
				total = countRec("idUSUARIO", "USUARIO $where");
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
			String idUSUARIO = rs.getString(1);
			String usuario = rs.getString(2);
			String nombre = rs.getString(3);
			String estado = rs.getString(4);
			String rol = rs.getString(5);
			
			buffer+="<row id='"+idUSUARIO+"'>";
			buffer+="<cell><![CDATA[<input type='radio' class='menu_radio' name='id_radio' onclick='DatosSeleccionados("+idUSUARIO+")' value='"+idUSUARIO+"' />]]></cell>";
			buffer+="<cell><![CDATA["+idUSUARIO+"]]></cell>";
			buffer+="<cell><![CDATA["+usuario+"]]></cell>";
			buffer+="<cell><![CDATA["+nombre+"]]></cell>";
			buffer+="<cell><![CDATA["+estado+"]]></cell>";
			buffer+="<cell><![CDATA["+rol+"]]></cell>";
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
