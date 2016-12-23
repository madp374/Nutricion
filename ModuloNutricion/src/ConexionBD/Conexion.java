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
	
	public String UltimoIDAntecedenteMedico(String enfermedad,
			String medicamento,
			String suplemento,
			String diarrea,
			String flatulencia,
			String acidez,
			String estreñimiento){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
			CallableStatement proc = conn.prepareCall(" CALL IngresarAntecedenteMedico(?,?,?,?,?,?,?,?) ");
            proc.setString(1, enfermedad);//Tipo String
            proc.setString(2, medicamento);//Tipo String
            proc.setString(3, suplemento);//Tipo String
            proc.setInt(4, Integer.parseInt(diarrea));//Tipo string
            proc.setInt(5, Integer.parseInt(flatulencia));//Tipo string
            proc.setInt(6, Integer.parseInt(acidez));//Tipo string
            proc.setInt(7, Integer.parseInt(estreñimiento));//Tipo string
            proc.registerOutParameter(8, Types.VARCHAR);//Tipo String
            // Se ejecuta el procedimiento almacenado
            proc.execute();            
            // devuelve el valor del parametro de salida del procedimiento
            resultado = proc.getString(8);
			
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
	public String UltimoIDEstiloVida(String fuma, String numero_cigarros, String frec_fuma,
			String ejercicio, String tiempo_min,String frec_ejercicio,
			String bebida, String frec_bebida){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		if(fuma.equals("0")){
			numero_cigarros="0";
			frec_fuma="null";
		}
		
		if(ejercicio.equals("0")){
			tiempo_min="0";
			frec_ejercicio="null";
		}
		
		if(bebida.equals("0")){
			frec_bebida="null";
		}
		
		
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
			CallableStatement proc = conn.prepareCall(" CALL IngresarEstiloVida(?,?,?,?,?,?,?,?,?) ");
			
			proc.setInt(1, Integer.parseInt(fuma));//Tipo String
			proc.setInt(2, Integer.parseInt(numero_cigarros));//Tipo String
            proc.setString(3, frec_fuma);//Tipo String
            proc.setInt(4, Integer.parseInt(ejercicio));//Tipo String
			proc.setInt(5, Integer.parseInt(tiempo_min));//Tipo String
            proc.setString(6, frec_ejercicio);//Tipo String
            proc.setInt(7, Integer.parseInt(bebida));//Tipo String
			proc.setString(8, frec_bebida);//Tipo String
			
            proc.registerOutParameter(9, Types.VARCHAR);//Tipo String
            // Se ejecuta el procedimiento almacenado
            proc.execute();            
            // devuelve el valor del parametro de salida del procedimiento
            resultado = proc.getString(9);
			
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
	
	public String UltimoIDHabitoAlimentario(String TDesayuno,
			String TRefaccion,
			String TAlmuerzo,
			String TCena,
			String NoVasoAgua,
			String AlimentoDaño,
			String AlimentoNoGusta,
			String AlimentoPreferido){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
			CallableStatement proc = conn.prepareCall(" CALL IngresarHabitoAlimentario(?,?,?,?,?,?,?,?,?) ");
            
            proc.setInt(1, Integer.parseInt(TDesayuno));//Tipo string
            proc.setInt(2, Integer.parseInt(TRefaccion));//Tipo string
            proc.setInt(3, Integer.parseInt(TAlmuerzo));//Tipo string
            proc.setInt(4, Integer.parseInt(TCena));//Tipo string
            proc.setInt(5, Integer.parseInt(NoVasoAgua));//Tipo string
            
            proc.setString(6, AlimentoDaño);//Tipo String
            proc.setString(7, AlimentoNoGusta);//Tipo String
            proc.setString(8, AlimentoPreferido);//Tipo String
            proc.registerOutParameter(9, Types.VARCHAR);//Tipo String
            // Se ejecuta el procedimiento almacenado
            proc.execute();            
            // devuelve el valor del parametro de salida del procedimiento
            resultado = proc.getString(9);
			
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
	
	public String UltimoIDAntropometria(String DietaBaja,
			String DietaAlta,
			String talla,
			String peso,
			String CircunferenciaMuñeca,
			String ConstitucionOsea ){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
			CallableStatement proc = conn.prepareCall(" CALL IngresarAntropometria(?,?,?,?,?,?,?) ");
			
			proc.setString(1, DietaBaja);//Tipo String
	        proc.setString(2, DietaAlta);//Tipo String
	        
	        proc.setFloat(3, Float.parseFloat(talla));
	        proc.setFloat(4, Float.parseFloat(peso));
	        proc.setFloat(5, Float.parseFloat(CircunferenciaMuñeca));
            proc.setString(6, ConstitucionOsea);//Tipo String
            
            proc.registerOutParameter(7, Types.VARCHAR);//Tipo String
            // Se ejecuta el procedimiento almacenado
            proc.execute();            
            // devuelve el valor del parametro de salida del procedimiento
            resultado = proc.getString(7);
			
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
	
	public String UltimoIDRegistro(String PorGrasa,
			String PorAgua,
			String PorMasaMuscular,
			String MasaOsea,
			String GrasaVisceral,
			String CinturaAbdominal,
			String plan){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
			CallableStatement proc = conn.prepareCall(" CALL IngresarRegistro(?,?,?,?,?,?,?,?) ");
			
			proc.setFloat(1, Float.parseFloat(PorGrasa));
	        proc.setFloat(2, Float.parseFloat(PorAgua));
	        proc.setFloat(3, Float.parseFloat(PorMasaMuscular));
	        proc.setFloat(4, Float.parseFloat(MasaOsea));
	        proc.setFloat(5, Float.parseFloat(GrasaVisceral));
	        proc.setFloat(6, Float.parseFloat(CinturaAbdominal));
			proc.setString(7, plan);//Tipo String
            
            proc.registerOutParameter(8, Types.VARCHAR);
            proc.execute();            
            resultado = proc.getString(8);
			
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
	public String RegistrarConsultaExterna(String paciente,
			String antecedente,
			String estilo,
			String habito,
			String antropometria,
			String registro){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
		
			CallableStatement proc = conn.prepareCall(" CALL Registrar_ConsultaExterna(?,?,?,?,?,?,?) ");
			
        
            proc.setInt(1, Integer.parseInt(paciente));
            proc.setInt(2, Integer.parseInt(antecedente));
            proc.setInt(3, Integer.parseInt(estilo));
            proc.setInt(4, Integer.parseInt(habito));
            proc.setInt(5, Integer.parseInt(antropometria));
            proc.setInt(6, Integer.parseInt(registro));
         
            proc.registerOutParameter(7, Types.VARCHAR);
         
            proc.execute();            
          
            resultado = proc.getString(7);
            
			
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
	public String RegistrarIDAlimento(String nombre,String calorias,String grupo){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
		
			CallableStatement proc = conn.prepareCall(" CALL Registrar_fruta(?,?,?,?) ");
			
            proc.setString(1, nombre);//Tipo String
            proc.setInt(2, Integer.parseInt(calorias));//Tipo entero
            proc.setInt(3, Integer.parseInt(grupo));
         
            proc.registerOutParameter(4, Types.VARCHAR);//Tipo String
            // Se ejecuta el procedimiento almacenado
         
            proc.execute();            
          
            // devuelve el valor del parametro de salida del procedimiento
            resultado = proc.getString(4);
            
			
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
		    		temp+=",{\"nombre\":\""+rs.getString("nombre")+"\",\"calorias\":\""+rs.getString("caloria")+"\"}";
		    	}else{
		    		temp+="{\"nombre\":\""+rs.getString("nombre")+"\",\"calorias\":\""+rs.getString("caloria")+"\"}";
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
