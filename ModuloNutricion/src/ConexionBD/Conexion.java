package ConexionBD;
import java.sql.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Properties;

import javax.servlet.http.HttpServlet;

import com.mysql.jdbc.Connection;

import Paciente.DatosPaciente;

public class Conexion extends HttpServlet{
	
	static Connection conn = null;
	public static String servidor="localhost";
	public static String usuarioserver="nutricionprueba";
	public static String BD="NutricionUsalud";
	public static String clave="nutri374!";
	public static String procedimientoAL="";
	//private String clave="udsalud201z";

	public void archivoleer(){
        
	}
	
	public static Connection connHostDevelopment(){
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//String sql="jdbc:mysql://"+servidor+"/"+BD+"?user="+usuarioserver+"&password="+clave;
			
			//Connection conexion = (Connection) DriverManager.getConnection(sql);
			
			Connection conexion = (Connection)DriverManager.getConnection("jdbc:mysql://"+servidor+":3306/"+BD+"?noAccessToProcedureBodies=true", usuarioserver, clave);
			return conexion;
		}
		catch(Throwable e){
			
			return null;
		}
	}
	public static boolean BDConnect(){
		DriverManager.setLoginTimeout(1);
		conn=connHostDevelopment();
		
		if(conn!=null){
			return true;
		}else  return false;
					
	}
	public static void BDClose(){
		try{
			conn.close();
		}
		catch(Throwable e){

		}
	}
	public static Connection getconnection(){
		return conn;
	}
	
	public String login(String usuario, String pass, String perfil){
		String resultado="0";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();

		    rs = cmd.executeQuery("select idUSUARIO from USUARIO where usuario='"+usuario+"' and password='"+pass+"'");

		    while (rs.next()) {
		        String nombre = rs.getString("idUSUARIO");
		       
		        resultado=nombre;
		    }

		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			return "0";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return "0";
		}
		
	}

	
	public ArrayList<DatosPaciente> BuscarPaciente1(String carnet){
		ArrayList<DatosPaciente> ret=new ArrayList<DatosPaciente>();

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("select p.nombre,YEAR(CURDATE())-YEAR(p.fecha_nacimiento) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(p.fecha_nacimiento,'%m-%d'), 0, -1) AS 'EDAD',p.sexo,f.nombre from PACIENTE p, FACULTAD f" 
		    		   +" where p.FACULTAD_idfACULTAD=f.idFACULTAD AND idPACIENTE="+carnet+";");

		    while (rs.next()) {
		    	 
		        DatosPaciente news = new DatosPaciente(rs.getString("p.nombre"),rs.getString("EDAD"),rs.getString("p.sexo"),rs.getString("f.nombre"));
		        ret.add(news);
		    }

		    rs.close();
		    BDClose();
		    return ret;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return ret;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return ret;
		}
		
	}
	
	public String CargaFacultad(){
		String resultado="";
		String temp="";
		String inicio="{ \"resultado\" : [";
		String fin="]}";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("select idFACULTAD, nombre from FACULTAD;");
		    boolean primero=false;
		    while (rs.next()) {
		    	if(primero){
		    		temp+=",{\"id\":\""+rs.getString("idFACULTAD")+"\",\"nombre\":\""+rs.getString("nombre")+"\"}";
		    	}else{
		    		temp+="{\"id\":\""+rs.getString("idFACULTAD")+"\",\"nombre\":\""+rs.getString("nombre")+"\"}";
		    		primero=true;
		    	}  
		    }
		    resultado=inicio+temp+fin;
		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado;
		}
		
	}
	public String buscaridalimento(String nombre,int calorias){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
			System.out.println("aqui1555:");
			CallableStatement proc = conn.prepareCall(" CALL registrar_fruta(?,?,?) ");
			//CallableStatement proc = conn.prepareCall(" CALL registrar_fruta('pika',209,?) ");
			System.out.println("aqui144:");
            proc.setString(1, nombre);//Tipo String
            proc.setInt(2, calorias);//Tipo entero
            System.out.println("aqui31:");
            proc.registerOutParameter(3, Types.VARCHAR);//Tipo String
            // Se ejecuta el procedimiento almacenado
            System.out.println("aqui2:");
            proc.execute();            
            System.out.println("aqui3:");
            // devuelve el valor del parametro de salida del procedimiento
            resultado = proc.getString(3);
            System.out.println("aqui14:");
			
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción1:"+ex);
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción2:"+ex);
			return resultado;
		}
		
	}
	public String BuscarAlimento(String texto){
		String resultado="";
		String temp="";
		String inicio="{ \"resultado\" : [";
		String fin="]}";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("select * from ALIMENTO where nombre = '"+texto+"'");
		    boolean primero=false;
		    while (rs.next()) {
		    	if(primero){
		    		temp+=",{\"nombre\":\""+rs.getString("nombre")+"\",\"calorias\":\""+rs.getString("calorias")+"\"}";
		    	}else{
		    		temp+="{\"nombre\":\""+rs.getString("nombre")+"\",\"calorias\":\""+rs.getString("calorias")+"\"}";
		    		primero=true;
		    	}  
		    }
		    resultado=inicio+temp+fin;
		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado;
		}
		
	}
	
	public ArrayList<String> getAlimento(String texto) {
        ArrayList<String> list = new ArrayList<String>();
      
        String data;
        try {
        	BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("select * from ALIMENTO where nombre LIKE '"+texto+"%'");
		 
            while (rs.next()) {
                data = rs.getString("nombre");
                list.add(data);
            }
            rs.close();
		    BDClose();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }
	
	public String ConsultarIMC(double IMC, double talla, double peso){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("select rango_inicio,rango_fin,descripcion from DIAGNOSTICO where "+IMC+" between rango_inicio and rango_fin;");
		 
		    String imci="";
		    String imcf="";
		    String diagnostico="";
		    while (rs.next()) {
		    	imci=rs.getString("rango_inicio");
		    	imcf=rs.getString("rango_fin");
		    	diagnostico=rs.getString("descripcion");
		     
		    }
		    double pesomax=0;
		    double pesomin=0;
		    if(Double.parseDouble(imcf)==1000){
		    	pesomax=peso;
		    }
		    pesomax=Double.parseDouble(imcf)*talla;
		    pesomin=Double.parseDouble(imci)*talla;
		    double pesoideal=(pesomax+pesomin)/2;
		    resultado="{\"resultado\":\"OK\",\"pesoideal\":\""+pesoideal+"\",\"pesomax\":\""+pesomax+"\",\"diagnostico\":\""+diagnostico+"\"}";
		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado;
		}
		
	}
public int countRec(String fname, String tname) throws Exception {
	    BDConnect();
		String sql = "SELECT count(" + fname + ") FROM " + tname;
		ResultSet result = EjecutarQuery(sql);
		if (result.next()) {
			
			result.close();
			BDClose();
			return result.getInt(1);
		}
		result.close();
		BDClose();
		return 0;
	}
	public static ResultSet EjecutarQuery(String query) throws Exception {
	
		ResultSet rs = null;
		try {
	
			
			Statement cmd = null;
		    cmd = getconnection().createStatement();

		    rs = cmd.executeQuery(query);

		    rs.close();
		 
		   
		}catch(SQLException ex){
			System.out.println("Se produjo una excepciónSQL:"+ex);
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			
		}
		 return  rs;

	}
	
	public void Insertar(String query){
		try{
			
			BDConnect();
			
			Statement cmd = getconnection().createStatement();
			cmd = getconnection().createStatement();

		    cmd.executeUpdate(query);
			
			System.out.println("Conexión realizada con éxito a: "+conn.getCatalog());
			
			BDClose();
			
			} catch(SQLException ex)
			{ 
				System.out.println("Se produjo una excepción durante la conexión:"+ex);
			} catch(Exception ex){ 
				System.out.println("Se produjo una excepción:"+ex);
			}
	}
	public void Eliminar(String query){
		try{
			
			BDConnect();
			
			Statement cmd = getconnection().createStatement();
			cmd = getconnection().createStatement();

		    cmd.executeUpdate(query);
			
			System.out.println("Conexión realizada con éxito a: "+conn.getCatalog());
			
			BDClose();
			
			} catch(SQLException ex)
			{ 
				System.out.println("Se produjo una excepción durante la conexión:"+ex);
			} catch(Exception ex){ 
				System.out.println("Se produjo una excepción:"+ex);
			}
	}

}
