package ConexionBD;

import java.sql.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.http.HttpServlet;

public class ConexionBD extends HttpServlet{
	
	public static String servidor="localhost";
	public static String usuarioserver="nutricionprueba";
	public static String BD="NutricionUsalud";
	public static String clave="nutri374!";
	//private String clave="udsalud201z";

	public void archivoleer(){
        
	}
	
	
	public String login(String usuario, String pass, String perfil){
		String resultado="0";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion=DriverManager.getConnection("jdbc:mysql://"+servidor+"/"+BD,usuarioserver,clave);
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = conexion.createStatement();

		    rs = cmd.executeQuery("select idUsuario from usuario where usuario='"+usuario+"' and contraseña='"+pass+"'");

		    while (rs.next()) {
		        String nombre = rs.getString("idUsuario");
		       
		        resultado=nombre;
		    }

		    rs.close();
		    conexion.close();
		    return resultado;
		}catch(SQLException ex){
			return "0";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return "0";
		}
		
	}
	
	public static ResultSet EjecutarQuery(String query) throws Exception {
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion=DriverManager.getConnection("jdbc:mysql://"+servidor+"/"+BD,usuarioserver,clave);
			
			
			Statement cmd = null;
		    cmd = conexion.createStatement();

		    rs = cmd.executeQuery(query);

		    rs.close();
		    conexion.close();
		   
		}catch(SQLException ex){
			System.out.println("Se produjo una excepciónSQL:"+ex);
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			
		}
		 return  rs;

	}
	
	public void leer(String texto){
		
	}
	public void Insertar(String query){
		try{
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion=DriverManager.getConnection("jdbc:mysql://"+servidor+"/"+BD,usuarioserver,clave);
			
			Statement cmd = conexion.createStatement();
			cmd = conexion.createStatement();

		    cmd.executeUpdate(query);
			
			System.out.println("Conexión realizada con éxito a: "+conexion.getCatalog());
			
			conexion.close();
			
			} catch(SQLException ex)
			{ 
				System.out.println("Se produjo una excepción durante la conexión:"+ex);
			} catch(Exception ex){ 
				System.out.println("Se produjo una excepción:"+ex);
			}
	}

}