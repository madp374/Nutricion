package ConexionBD;
import java.sql.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Properties;

import javax.servlet.http.HttpServlet;

import com.mysql.jdbc.Connection;

import Paciente.DatosPaciente;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
//import com.sun.corba.se.impl.ior.ByteBuffer;
import java.nio.*;

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
	
	public String login(String usuario, String pass, int perfil){
		String resultado="0";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		    
		    String consulta="SELECT idUSUARIO FROM USUARIO WHERE usuario='"+usuario+"' AND password='"+pass+"' AND ROL_idROL="+perfil+" AND estado='activo'";
		
		    rs = cmd.executeQuery(consulta);

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

	public String UsuarioExiste(String usuario){
		String resultado="1";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		    
		    String consulta="SELECT idUSUARIO FROM USUARIO WHERE usuario='"+usuario+"'";
		
		    rs = cmd.executeQuery(consulta);

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
	public String CargaDatosUsuario(String usuario){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		    
		    String consulta="SELECT usuario, password, nombre, correo, estado, ROL_idROL FROM USUARIO WHERE idUSUARIO="+usuario;
		
		    rs = cmd.executeQuery(consulta);
		    
		    String usuario1="";
		    String pswd="";
		    String nombre="";
		    String correo="";
		    String estado="";
		    String rol="";
		    while (rs.next()) {
		        usuario1= rs.getString("usuario");
			    pswd= rs.getString("password");
			    nombre= rs.getString("nombre");
			    correo= rs.getString("correo");
			    estado= rs.getString("estado");
			    rol= rs.getString("ROL_idROL");
		    }

		    rs.close();
		    BDClose();
		    return resultado="{\"resultado\":\"OK\",\"usuario\":\""+usuario1+"\",\"pass\":"+pswd+",\"nombre\":\""+nombre+"\",\"correo\":\""+correo+"\",\"estado\":\""+estado+"\",\"rol\":\""+rol+"\"}";
		}catch(SQLException ex){
			return resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error, intentelo nuevamente\"}";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error, intentelo nuevamente\"}";
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
			String TRefaccionPM,
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
			CallableStatement proc = conn.prepareCall(" CALL IngresarHabitoAlimentario(?,?,?,?,?,?,?,?,?,?) ");
            
            proc.setInt(1, Integer.parseInt(TDesayuno));//Tipo string
            proc.setInt(2, Integer.parseInt(TRefaccion));//Tipo string
            proc.setInt(3, Integer.parseInt(TAlmuerzo));//Tipo string
            proc.setInt(4, Integer.parseInt(TRefaccionPM));//Tipo string
            proc.setInt(5, Integer.parseInt(TCena));//Tipo string
            proc.setInt(6, Integer.parseInt(NoVasoAgua));//Tipo string
            
            proc.setString(7, AlimentoDaño);//Tipo String
            proc.setString(8, AlimentoNoGusta);//Tipo String
            proc.setString(9, AlimentoPreferido);//Tipo String
            proc.registerOutParameter(10, Types.VARCHAR);//Tipo String
            // Se ejecuta el procedimiento almacenado
            proc.execute();            
            // devuelve el valor del parametro de salida del procedimiento
            resultado = proc.getString(10);
			
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
			String registro,
			String idusuario1){
		String resultado=null;
		procedimientoAL="&noAccessToProcedureBodies=true";
		try {
			BDConnect();
			//Class.forName("com.mysql.jdbc.Driver");
		
			CallableStatement proc = conn.prepareCall(" CALL Registrar_ConsultaExterna(?,?,?,?,?,?,?,?) ");
			
        
            proc.setInt(1, Integer.parseInt(paciente));
            proc.setInt(2, Integer.parseInt(antecedente));
            proc.setInt(3, Integer.parseInt(estilo));
            proc.setInt(4, Integer.parseInt(habito));
            proc.setInt(5, Integer.parseInt(antropometria));
            proc.setInt(6, Integer.parseInt(registro));
            proc.setInt(7, Integer.parseInt(idusuario1));
         
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
            if(resultado.equalsIgnoreCase("ERROR")){
            	resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error el alimento ya existe\"}";
            }else{
            	resultado="{\"resultado\":\"OK\",\"alimento\":\""+nombre+"\",\"caloria\":\""+calorias+"\"}";
            }
			
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción1:"+ex);
			return resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al guardar\"}";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción2:"+ex);
			return resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al guardar\"}";
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
	public String BuscarAlimentoExistente(String texto){
		String resultado="";
		String temp="";
		String inicio="{\"resultado\":\"OK\"";
		

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT idALIMENTO, nombre, caloria FROM ALIMENTO WHERE nombre='"+texto+"'");
		    int i=0;
		    while (rs.next()) {
		    	
		    		temp+=",\"nombre\":\""+rs.getString("nombre")+"\",\"calorias\":\""+rs.getString("caloria")+"\"";
		    		i++;
		    	 
		    }
		    String total=",\"total\":\""+i+"\"";
		    resultado=inicio+total+temp+"}";
		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return resultado="{\"resultado\":\"ERROR\"}";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado="{\"resultado\":\"ERROR\"}";
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
	public String CargaConsultaExterna(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT "
				+" C.PACIENTE_idPACIENTE, C.fecha, C.USUARIO_idUSUARIO, U.nombre, Z.nombre, "
				+" A.DietaBaja, A.DietaAlta, A.talla, A.peso, A.CircunferenciaMuñeca, A.ConstitucionOsea,"
				+" E.fuma, E.numero_cigarros, E.frec_fuma, E.ejercicio, E.tiempo_min, E.frec_ejercicio, E.bebida, E.frec_bebida,"
				+" H.TDesayuno, H.TRefaccion, H.TAlmuerzo,  H.TRefaccionPM, H.TCena, H.NoVasoAgua, H.AlimentoDaño, H.AlimentoNoGusta, H.AlimentoPreferido,"
				+" R.PorGrasa, R.PorAgua, R.PorMasaMuscular, R.MasaOsea, R.GrasaVisceral, R.CinturaAbdominal, R.plan,"
				+" M.enfermedad_actual, M.medicamento, M.suplemento, M.diarrea, M.flatulencia, M.acidez, M.estreñimiento "
				+" FROM CONSULTA_EXTERNA C, ANTROPOMETRIA A,ESTILO_DE_VIDA E, HABITO_ALIMENTO H, REGISTRO R, ANTECENDENTES_MEDICOS M, USUARIO U, ROL Z"
				+" WHERE A.idANTROPOMETRIA=C.ANTROPOMETRIA_idANTROPOMETRIA"
				+" AND E.idESTILO_DE_VIDA=C.ESTILO_DE_VIDA_idESTILO_DE_VIDA"
				+" AND H.idHABITO_ALIMENTO=C.HABITO_ALIMENTO_idHABITO_ALIMENTO"
				+" AND R.idREGISTRO=C.REGISTRO_idREGISTRO"
				+" AND M.idANTECENDENTES_MEDICOS=C.ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS"
			    +" AND C.USUARIO_idUSUARIO = U.idUSUARIO"
			    +" AND Z.idROL=U.ROL_idROL"
				+" AND C.idCONSULTA_EXTERNA="+ID);
		 
		    String PACIENTE_idPACIENTE="";
		    String DietaBaja="";
		    String DietaAlta="";
		    String talla="";
		    String peso="";
		    String CircunferenciaMuñeca="";
		    String ConstitucionOsea="";
		    
		    String fuma="";
		    String numero_cigarros="";
		    String frec_fuma="";
		    String ejercicio="";
		    String tiempo_min="";
		    String frec_ejercicio="";
		    String bebida="";
		    String frec_bebida="";
		    
		    String TDesayuno="";
		    String TRefaccion="";
		    String TAlmuerzo="";
		    String TRefaccionPM="";
		    String TCena="";
		    String NoVasoAgua="";
		    String AlimentoDaño="";
		    String AlimentoNoGusta="";
		    String AlimentoPreferido="";
		    
		    String PorGrasa="";
		    String PorAgua="";
		    String PorMasaMuscular="";
		    String MasaOsea="";
		    String GrasaVisceral="";
		    String CinturaAbdominal="";
		    String plan="";
		    
		    String enfermedad_actual="";
		    String medicamento="";
		    String suplemento="";
		    String diarrea="";
		    String flatulencia="";
		    String acidez="";
		    String estreñimiento="";
		    
		    String USR7="";
		    String fecha="";
		    String nombre="";
		    String area="";
		    
		    while (rs.next()) {
		    	PACIENTE_idPACIENTE=rs.getString("C.PACIENTE_idPACIENTE");
		    	
		    	USR7=rs.getString("C.USUARIO_idUSUARIO");
		    	fecha=rs.getString("C.fecha");
			    nombre=rs.getString("U.nombre");
			    area=rs.getString("Z.nombre");
		    	
		    	DietaBaja=rs.getString("A.DietaBaja");
			    DietaAlta=rs.getString("A.DietaAlta");
			    talla=rs.getString("A.talla");
			    peso=rs.getString("A.peso");
			    CircunferenciaMuñeca=rs.getString("A.CircunferenciaMuñeca");
			    ConstitucionOsea=ConstiOsea(rs.getString("A.ConstitucionOsea"));
			    
			    fuma=rs.getString("E.fuma");
			    numero_cigarros=rs.getString("E.numero_cigarros");
			    frec_fuma=FrecOption(rs.getString("E.frec_fuma"));
			    ejercicio=rs.getString("E.ejercicio");
			    tiempo_min=rs.getString("E.tiempo_min");
			    frec_ejercicio=FrecOption(rs.getString("E.frec_ejercicio"));
			    bebida=rs.getString("E.bebida");
			    frec_bebida=FrecOption(rs.getString("E.frec_bebida"));
			    
			    TDesayuno=rs.getString("H.TDesayuno");
			    TRefaccion=rs.getString("H.TRefaccion");
			    TAlmuerzo=rs.getString("H.TAlmuerzo");
			    TRefaccionPM=rs.getString("H.TRefaccionPM");
			    TCena=rs.getString("H.TCena");
			    NoVasoAgua=rs.getString("H.NoVasoAgua");
			    AlimentoDaño=rs.getString("H.AlimentoDaño");
			    AlimentoNoGusta=rs.getString("H.AlimentoNoGusta");
			    AlimentoPreferido=rs.getString("H.AlimentoPreferido");
			    
			    PorGrasa=rs.getString("R.PorGrasa");
			    PorAgua=rs.getString("R.PorAgua");
			    PorMasaMuscular=rs.getString("R.PorMasaMuscular");
			    MasaOsea=rs.getString("R.MasaOsea");
			    GrasaVisceral=rs.getString("R.GrasaVisceral");
			    CinturaAbdominal=rs.getString("R.CinturaAbdominal");
			    plan=rs.getString("R.plan");
			    
			    enfermedad_actual=rs.getString("M.enfermedad_actual");
			    medicamento=rs.getString("M.medicamento");
			    suplemento=rs.getString("M.suplemento");
			    diarrea=rs.getString("M.diarrea");
			    flatulencia=rs.getString("M.flatulencia");
			    acidez=rs.getString("M.acidez");
			    estreñimiento=rs.getString("M.estreñimiento");
		    	
		    }
		    resultado="{\"resultado\":\"OK\",\"PACIENTE_idPACIENTE\":\""+PACIENTE_idPACIENTE
		    		+"\",\"DietaBaja\":\""+DietaBaja
		    		+"\",\"DietaAlta\":\""+DietaAlta
		    		+"\",\"talla\":\""+talla
		    		+"\",\"peso\":\""+peso
		    		+"\",\"CircunferenciaMuneca\":\""+CircunferenciaMuñeca
		    		+"\",\"ConstitucionOsea\":\""+ConstitucionOsea
		    		+"\",\"fuma\":\""+fuma
		    		+"\",\"numero_cigarros\":\""+numero_cigarros
		    		+"\",\"frec_fuma\":\""+frec_fuma
		    		+"\",\"ejercicio\":\""+ejercicio
		    		+"\",\"tiempo_min\":\""+tiempo_min
		    		+"\",\"frec_ejercicio\":\""+frec_ejercicio
		    		+"\",\"bebida\":\""+bebida
		    		+"\",\"frec_bebida\":\""+frec_bebida
		    		+"\",\"TDesayuno\":\""+TDesayuno
		    		+"\",\"TRefaccion\":\""+TRefaccion
		    		+"\",\"TRefaccionPM\":\""+TRefaccionPM
		    		+"\",\"TAlmuerzo\":\""+TAlmuerzo
		    		+"\",\"TCena\":\""+TCena
		    		+"\",\"NoVasoAgua\":\""+NoVasoAgua
		    		+"\",\"AlimentoDano\":\""+AlimentoDaño
		    		+"\",\"AlimentoNoGusta\":\""+AlimentoNoGusta
		    		+"\",\"AlimentoPreferido\":\""+AlimentoPreferido
		    		+"\",\"PorGrasa\":\""+PorGrasa 
		    		+"\",\"PorAgua\":\""+PorAgua
		    		+"\",\"PorMasaMuscular\":\""+PorMasaMuscular
		    		+"\",\"MasaOsea\":\""+MasaOsea
		    		+"\",\"GrasaVisceral\":\""+GrasaVisceral
		    		+"\",\"CinturaAbdominal\":\""+CinturaAbdominal
		    		+"\",\"plan\":\""+plan
		    		+"\",\"enfermedad_actual\":\""+enfermedad_actual
		    		+"\",\"medicamento\":\""+medicamento
		    		+"\",\"suplemento\":\""+suplemento
		    		+"\",\"diarrea\":\""+diarrea
		    		+"\",\"flatulencia\":\""+flatulencia
		    		+"\",\"acidez\":\""+acidez
		    		+"\",\"estrenimiento\":\""+estreñimiento
		    		+"\",\"USER\":\""+USR7
		    		+"\",\"fecha\":\""+fecha
		    		+"\",\"nombre4\":\""+nombre
		    		+"\",\"area\":\""+area
		    		+"\"";
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	
	public String CargaFrecComida(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT A.alimento, F.frecuencia"
						+" FROM FRECUENCIA_CONSUMO F, ALIMENTO_FRECUENCIA A"
						+" WHERE F.ALIMENTO_FRECUENCIA_idALIMENTO_FRECUENCIA=A.idALIMENTO_FRECUENCIA"
						+" AND F.CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID);
		 
		    String almt="";
		    String frec="";
		    
		   

		    int i=0;
		    while (rs.next()) {
		    	almt=rs.getString("A.alimento");
		    	frec=FrecOption2(rs.getString("F.frecuencia"));
			    
			    resultado+=",\"AlmtF"+i+"\":\""+almt+"\""
			    		+",\"FrecF"+i+"\":\""+frec+"\"";
			    		
			   i++;
		    	
		    }
		    
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String decodificar(String entrada) throws UnsupportedEncodingException{
		
	    String var=new String(entrada);
	    byte[] arrByte = var.getBytes("ISO-8859-1");

	    String result = new String(arrByte, "UTF-8");
	    return result;
	}
	public String Codificar(String entrada) throws UnsupportedEncodingException{
		
	    String var=new String(entrada);
	    
	    byte[] arrByte = var.getBytes("UTF-8");

	    String result = new String(arrByte, "ISO-8859-1");
	    return result;
	}
	public String CargaNoticias2(){
		String resultado="";
		
		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT titulo, descripcion, contenido, archivo FROM TRIFOLIAR"
									+" WHERE CURDATE() BETWEEN fecha_inicio AND fecha_fin"
									+" AND estado='Activo'");
		 
		    String titulo="";
		    String descripcion="";
		    String contenido="";
		    String archivo="";
		   

		    int i=0;
		    String marco="";
		    String aux="";
		    while (rs.next()) {
		    	marco="";
		    	titulo=rs.getString("titulo");
		    	descripcion=rs.getString("descripcion");
		    	contenido=decodificar(rs.getString("contenido"));
		    	archivo=rs.getString("archivo");
			    
		    	marco="<li><div class=\"panel panel-default\" style=\"width: 500px;\">"
				        +"<div class=\"panel-heading\">"
				        +"<h3 class=\"panel-title\">"+titulo+"</h3>"
				        +"</div>"
				        +"<div class=\"panel-body\" style=\"height:300px;\">"
				        +contenido;
		    	
		    	if(archivo.equals("")){}
		    	else{
		    		String direccion="http://usalud.usac.edu.gt/ModuloNutricion/uploads/"+archivo;
		    		marco+="<br><br><b>Archivo</b>:"+"<A href=\""+direccion+"\" style=\"color:black;\">"+archivo+"</A>";
		    	}
		    	marco+="</div>"
				        +"</div></li>";
		    	aux+=marco;

			   i++;
		    	
		    }
		    if(i==0){
		    	resultado="No hay resultados";
		    }else{
		    	resultado=aux;
		    }
		    
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String CargaNoticias(){
		String resultado="";
		
		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT titulo, descripcion, contenido, archivo FROM TRIFOLIAR"
									+" WHERE CURDATE() BETWEEN fecha_inicio AND fecha_fin"
									+" AND estado='Activo'");
		 
		    String titulo="";
		    String descripcion="";
		    String contenido="";
		    String archivo="";
		   

		    int i=0;
		    while (rs.next()) {
		    	titulo=rs.getString("titulo");
		    	descripcion=rs.getString("descripcion");
		    	contenido=CambioHTML(rs.getString("contenido"));
		    	archivo=rs.getString("archivo");
			    
		    	if(i==0){
		    		resultado+="{\"titulo\":\""+titulo+"\""
				    		+",\"descripcion\":\""+descripcion+"\""
				    		+",\"contenido\":\""+contenido+"\""
				    		+",\"archivo\":\""+archivo+"\"}";
		    	}else{
		    		resultado+=",{\"titulo\":\""+titulo+"\""
				    		+",\"descripcion\":\""+descripcion+"\""
				    		+",\"contenido\":\""+contenido+"\""
				    		+",\"archivo\":\""+archivo+"\"}";
		    	}

			   i++;
		    	
		    }
		    String jq=CambioHTML("<script type=\"text/javascript\">(function($) {$(function() { $(\"#scroller\").simplyScroll();});})(jQuery);</script>");
		    String marco="{\"resultado\":\"OK\",";
		    String scrip="\"scrip\":"+"\""+jq+"\",";
		    String total="\"total\":\""+i+"\",";
		    String trifoliar = "\"trifoliar\":["+resultado+"]}";
		    resultado=marco+total+scrip+trifoliar;
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String ObtenerIDCEX(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS, ESTILO_DE_VIDA_idESTILO_DE_VIDA, HABITO_ALIMENTO_idHABITO_ALIMENTO, ANTROPOMETRIA_idANTROPOMETRIA, REGISTRO_idREGISTRO"
		    				+" FROM CONSULTA_EXTERNA WHERE idCONSULTA_EXTERNA="+ID);
		 
		    String ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS="";
		    String ESTILO_DE_VIDA_idESTILO_DE_VIDA="";
		    String HABITO_ALIMENTO_idHABITO_ALIMENTO="";
		    String ANTROPOMETRIA_idANTROPOMETRIA="";
		    String REGISTRO_idREGISTRO="";
		    
		    
		  
		    while (rs.next()) {
		    	
		    	ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS=rs.getString("ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS");
			    ESTILO_DE_VIDA_idESTILO_DE_VIDA=rs.getString("ESTILO_DE_VIDA_idESTILO_DE_VIDA");
			    HABITO_ALIMENTO_idHABITO_ALIMENTO=rs.getString("HABITO_ALIMENTO_idHABITO_ALIMENTO");
			    ANTROPOMETRIA_idANTROPOMETRIA=rs.getString("ANTROPOMETRIA_idANTROPOMETRIA");
			    REGISTRO_idREGISTRO=rs.getString("REGISTRO_idREGISTRO");
			    
			    resultado=ANTECENDENTES_MEDICOS_idANTECENDENTES_MEDICOS+","
			    		+ESTILO_DE_VIDA_idESTILO_DE_VIDA+","
			    		+HABITO_ALIMENTO_idHABITO_ALIMENTO+","
			    		+ANTROPOMETRIA_idANTROPOMETRIA+","
			    		+REGISTRO_idREGISTRO;

		    }
		    
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String CargarRecordatorio(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT  A.nombre, A.caloria, R.TIEMPO_COMIDA_idTIEMPO_COMIDA, R.cantidad, R.PORCION_idPORCION"
							+ " FROM RECORDATORIO R, ALIMENTO A"
							+ " WHERE R.ALIMENTO_idALIMENTO=A.idALIMENTO"
							+ " AND R.CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID);
		 
		    String aliment="";
		    String calo="";
		    String TiempoCo="";
		    String Cantid="";
		    String Porci="";
		    
		   String marco=",\"Record\":[";
		   String fin="]";

		    int i=0;
		    while (rs.next()) {
		    	aliment=Codificar(rs.getString("A.nombre"));
		    	
		    	calo=rs.getString("A.caloria");
		    	TiempoCo=rs.getString("R.TIEMPO_COMIDA_idTIEMPO_COMIDA");
		    	Cantid=rs.getString("R.cantidad");
		    	Porci=rs.getString("R.PORCION_idPORCION");
			    
		    	if(i==0){
		    		resultado="{\"aliment\":\""+aliment+"\""
				    		+",\"calo\":\""+calo+"\""
						    +",\"TiempoCo\":\""+TiempoCo+"\""
						    +",\"Cantid\":\""+Cantid+"\""
						    +",\"Porci\":\""+Porci+"\"}";
		    	}else{
		    		resultado+=",{\"aliment\":\""+aliment+"\""
				    		+",\"calo\":\""+calo+"\""
						    +",\"TiempoCo\":\""+TiempoCo+"\""
						    +",\"Cantid\":\""+Cantid+"\""
						    +",\"Porci\":\""+Porci+"\"}";
		    	}
			    
			    		
			   i++;
		    	
		    }
		    String aux=",\"totalA\":\""+i+"\"";
		    resultado=aux+marco+resultado+fin;
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String DatosPacientejso(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT p.nombre,YEAR(CURDATE())-YEAR(p.fecha_nacimiento) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(p.fecha_nacimiento,'%m-%d'), 0, -1) AS 'EDAD',p.sexo,f.nombre "
					+" FROM CONSULTA_EXTERNA C, PACIENTE p, FACULTAD f"
					+" WHERE C.PACIENTE_idPACIENTE=p.idPACIENTE"
					+" AND p.FACULTAD_idfACULTAD=f.idFACULTAD"
					+" AND C.idCONSULTA_EXTERNA="+ID);
		 
		    String pnombre="";
		    String pedad="";
		    String psexo="";
		    String pfacultad="";
		   

		   
		    while (rs.next()) {
		    	
		    	pnombre=rs.getString("p.nombre");
			    pedad=rs.getString("EDAD");
			    psexo=rs.getString("p.sexo");
			    pfacultad=rs.getString("f.nombre");
			    
			    resultado+=",\"pnombre\":\""+pnombre+"\""
			    		+",\"pedad\":\""+pedad+"\""
			    		+",\"psexo\":\""+psexo+"\""
			    		+",\"pfacultad\":\""+pfacultad+"\"";
		    	
		    }
		    
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String CargaContenidos(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT archivo, contenido, fecha_inicio, fecha_fin FROM TRIFOLIAR where idTRIFOLIAR="+ID);
		 
		    String contenido="";
		    String archivo="";
		    String fecha_ini="";
		    String fecha_fin="";
		   

		    while (rs.next()) {
		    	archivo=rs.getString("archivo");
		    	contenido=CambioHTML(rs.getString("contenido"));
		    	fecha_ini=rs.getString("fecha_inicio");
			    fecha_fin=rs.getString("fecha_fin");
		    }
		    
		    rs.close();
		    BDClose();
		
		    resultado="{\"resultado\":\"OK\",\"contenido\":\""+contenido+"\",\"archivo\":\""+archivo+"\",\"fecha_ini\":\""+fecha_ini+"\",\"fecha_fin\":\""+fecha_fin+"\"}";
		    //System.out.println(resultado);
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String CambioHTML(String texto){
		String resultado="";
		int longitud = texto.length();
		String aux;
		for(int i=0;i<longitud;i++){
			aux=texto.substring(i,i+1);
			if(aux.equals("\"")){
				resultado+="\\"+aux;
			}else{
				resultado+=aux;
			}
		}
		return resultado;
	}
	public String CargaTiemposComi(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT T.comida, TIME_FORMAT(C.horario, '%h:%i %p') as hora "
						+" FROM CONSULTA_EXTERNA_has_TIEMPO_COMIDA C, TIEMPO_COMIDA T"
						+" WHERE C.TIEMPO_COMIDA_idTIEMPO_COMIDA=T.idTIEMPO_COMIDA"
						+" AND C.CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID);
		 
		    String comida="";
		    String horario="";
		    
		   

		    int i=0;
		    while (rs.next()) {
		    	comida=rs.getString("T.comida");
		    	horario=rs.getString("hora");
			    if(horario.equalsIgnoreCase("11:48 AM")){
			    	horario="";
			    }
			    resultado+=",\"comidaE"+i+"\":\""+comida+"\""
			    		+",\"horarioE"+i+"\":\""+horario+"\"";
			    		
			   i++;
		    	
		    }
		    
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String CargaLugarEstablecimiento(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT E.nombre, E.tipo, H.marca"
						+" FROM ESTABLECIMIENTO_has_CONSULTA_EXTERNA H, ESTABLECIMIENTO E"
						+" WHERE H.ESTABLECIMIENTO_idESTABLECIMIENTO=E.idESTABLECIMIENTO"
						+" AND H.CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID);
		 
		    String nombre="";
		    String tipo="";
		    String marca="";
		    
		   

		    int i=0;
		    while (rs.next()) {
		    	nombre=rs.getString("E.nombre");
		    	tipo=rs.getString("E.tipo");
			    marca=rs.getString("H.marca");
			    
			    resultado+=",\"nombreE"+i+"\":\""+nombre+"\""
			    		+",\"tipoE"+i+"\":\""+tipo+"\""
			    		+",\"marcaE"+i+"\":\""+marca+"\"";
			    		
			   i++;
		    	
		    }
		    
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String FrecOption2(String entrada){
		String resultado="0";
		if(entrada.equalsIgnoreCase("Diario")){
			resultado="5";
		}else if(entrada.equalsIgnoreCase("Mensual")){
			resultado="4";
		}else if(entrada.equalsIgnoreCase("Semanal")){
			resultado="3";
		}else if(entrada.equalsIgnoreCase("Ocasional")){
			resultado="2";
		}else if(entrada.equalsIgnoreCase("No consume")){
			resultado="1";
		}
		return resultado;
	}
	public String FrecOption(String entrada){
		String resultado="0";
		if(entrada.equalsIgnoreCase("Ocasionalmente")){
			resultado="1";
		}else if(entrada.equalsIgnoreCase("Dos o tres veces por semana")){
			resultado="2";
		}else if(entrada.equalsIgnoreCase("Cuatro a cinco veces por semana")){
			resultado="3";
		}else if(entrada.equalsIgnoreCase("Diariamente")){
			resultado="4";
		}
		return resultado;
	}
	public String ConstiOsea(String entrada){
		String resultado="0";
		if(entrada.equalsIgnoreCase("Pequeña")){
			resultado="1";
		}else if(entrada.equalsIgnoreCase("Mediana")){
			resultado="2";
		}else if(entrada.equalsIgnoreCase("Grande")){
			resultado="3";
		}
		return resultado;
	}
	public String CargaMultifasico(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT M.idMULTIFASICO, M.fecha, M.talla, M.peso, M.IMC, M.peso_ideal, M.peso_maximo, M.tricipital, M.subescapular, M.abdomen, M.TIPO_EXAMEN_idTIPO_EXAMEN, M.DIAGNOSTICO_idDIAGNOSTICO, M.PACIENTE_idPACIENTE, M.USUARIO_idUSUARIO, U.nombre, R.nombre " 
							+" FROM MULTIFASICO M, USUARIO U, ROL R"
							+" WHERE M.USUARIO_idUSUARIO = U.idUSUARIO"
							+" AND R.idROL=U.ROL_idROL"
							+" AND M.idMULTIFASICO="+ID);
		 
		    String talla="";
		    String peso="";
		    String codigo="";
		    String tricipital="";
		    String subescapular="";
		    String abdomen="";
		    String USR7="";
		    String fecha="";
		    String nombre="";
		    String area="";
		    String TIPO_EXAMEN_idTIPO_EXAMEN="";
		    while (rs.next()) {
		    	talla=rs.getString("M.talla");
		    	peso=rs.getString("M.peso");
		    	tricipital=rs.getString("M.tricipital");
		    	subescapular=rs.getString("M.subescapular");
		    	abdomen=rs.getString("M.abdomen");
		    	codigo=rs.getString("M.PACIENTE_idPACIENTE");
		    	USR7=rs.getString("M.USUARIO_idUSUARIO");
		    	fecha=rs.getString("M.fecha");
			    nombre=rs.getString("U.nombre");
			    area=rs.getString("R.nombre");
			    TIPO_EXAMEN_idTIPO_EXAMEN=rs.getString("M.TIPO_EXAMEN_idTIPO_EXAMEN");
		    }
		    resultado="{\"resultado\":\"OK\",\"talla\":\""+talla+"\",\"peso\":\""+peso+"\",\"codigo\":\""+codigo+"\",\"tricipital\":\""+tricipital+"\",\"subescapular\":\""+subescapular+"\",\"abdomen\":\""+abdomen+"\",\"USER\":\""+USR7+"\",\"fecha\":\""+fecha+"\",\"nombre\":\""+nombre+"\",\"area\":\""+area+"\",\"TipoExamen\":\""+TIPO_EXAMEN_idTIPO_EXAMEN+"\"}";
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String CargaReconsulta(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT M.fecha, M.talla, M.peso, M.IMC, M.pesoganado, M.pesoperdido, M.cintura, M.porcentajegrasa, M.porcentajeagua, M.grasavisceral, M.masaosea, M.vettanita, M.datossubjetivos, M.tratamiento, M.educacion,  M.CONSULTA_EXTERNA_idCONSULTA_EXTERNA, M.USUARIO_idUSUARIO, U.nombre, R.nombre "
								+" FROM RECONSULTA M, USUARIO U, ROL R"
								+" WHERE M.USUARIO_idUSUARIO = U.idUSUARIO"
								+" AND R.idROL=U.ROL_idROL"
								+" AND M.idRECONSULTA="+ID);
		 
		    String fecha="";
		    String talla="";
		    String peso="";
		    String IMC="";
		    String pesoganado="";
		    String pesoperdido="";
		    String cintura="";
		    String porcentajegrasa="";
		    String porcentajeagua="";
		    String grasavisceral="";
		    String masaosea="";
		    String vettanita="";
		    String datossubjetivos="";
		    String tratamiento="";
		    String educacion="";
		    String USUARIO_idUSUARIO="";
		    String CONSULTA_EXTERNA_idCONSULTA_EXTERNA="";
		    String nombre="";
		    String rol="";


		    while (rs.next()) {
		    	fecha=rs.getString("M.fecha");
		    	talla=rs.getString("M.talla");
		    	peso=rs.getString("M.peso");
		    	IMC=rs.getString("M.IMC");
		    	pesoganado=rs.getString("M.pesoganado");
		    	pesoperdido=rs.getString("M.pesoperdido");
		    	cintura=rs.getString("M.cintura");
		    	porcentajegrasa=rs.getString("M.porcentajegrasa");
		    	porcentajeagua=rs.getString("M.porcentajeagua");
		    	grasavisceral=rs.getString("M.grasavisceral");
		    	masaosea=rs.getString("M.masaosea");
		    	vettanita=rs.getString("M.vettanita");
		    	datossubjetivos=rs.getString("M.datossubjetivos");
		    	tratamiento=rs.getString("M.tratamiento");
		    	educacion=rs.getString("M.educacion");
		    	USUARIO_idUSUARIO=rs.getString("M.USUARIO_idUSUARIO");
		    	
			    nombre=rs.getString("U.nombre");
			    rol=rs.getString("R.nombre");
			    
		    	CONSULTA_EXTERNA_idCONSULTA_EXTERNA=rs.getString("M.CONSULTA_EXTERNA_idCONSULTA_EXTERNA");

		    }
		    resultado="{\"resultado\":\"OK\",\"fecha\":\""+fecha+"\",\"peso\":\""+peso
		    		+"\",\"IMC\":\""+IMC+"\",\"pesoganado\":\""+pesoganado+"\",\"talla\":\""+talla
		    		+"\",\"pesoperdido\":\""+pesoperdido+"\",\"cintura\":\""+cintura+"\",\"porcentajegrasa\":\""+porcentajegrasa
		    		+"\",\"porcentajeagua\":\""+porcentajeagua+"\",\"grasavisceral\":\""+grasavisceral+"\",\"masaosea\":\""+masaosea
		    		+"\",\"vettanita\":\""+vettanita+"\",\"datossubjetivos\":\""+datossubjetivos+"\",\"tratamiento\":\""+tratamiento
		    		+"\",\"educacion\":\""+educacion+"\",\"USUARIO_idUSUARIO\":\""+USUARIO_idUSUARIO
		    		+"\",\"nombre\":\""+nombre+"\",\"rol\":\""+rol
		    		+"\",\"CONSULTA_EXTERNA_idCONSULTA_EXTERNA\":\""+CONSULTA_EXTERNA_idCONSULTA_EXTERNA+"\"}";
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
	}
	public String CargaCalculosVET(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT A.talla,YEAR(CURDATE())-YEAR(P.fecha_nacimiento) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(P.fecha_nacimiento,'%m-%d'), 0, -1) AS 'EDAD', P.sexo, C.fecha, C.peso, C.imc, C.ActividadFisica, C.FormulaVet, C.VET, C.VETAF, C.RBajoPeso, C.RSobrePeso, C.RObesidad, C.carbohidrato, C.proteina, C.grasa, C.placteosg, C.placteoe, C.pvegetal, C.pfruta, C.pcereal, C.pcarne, C.pgrasa, C.pazucar, C.CONSULTA_EXTERNA_idCONSULTA_EXTERNA, C.USUARIO_idUSUARIO, U.nombre, R.nombre "
								+" FROM CONSULTA_EXTERNA E, ANTROPOMETRIA A, CALCULOS_VET C, PACIENTE P, USUARIO U, ROL R"
								+" WHERE E.ANTROPOMETRIA_idANTROPOMETRIA=A.idANTROPOMETRIA"
								+" AND C.CONSULTA_EXTERNA_idCONSULTA_EXTERNA=E.idCONSULTA_EXTERNA"
								+" AND E.PACIENTE_idPACIENTE=P.idPACIENTE"
								+" AND C.USUARIO_idUSUARIO = U.idUSUARIO"
								+" AND R.idROL=U.ROL_idROL"
								+" AND C.idCALCULOS_VET="+ID);
		 
		    String talla="";
		    String edad="";
		    String sexo="";
		    String fecha="";
		    String peso="";
		    String imc="";
		    String ActividadFisica="";
		    String FormulaVet="";
		    String VET="";
		    String VETAF="";
		    String RBajoPeso="";
		    String RSobrePeso="";
		    String RObesidad="";
		    String carbohidrato="";
		    String proteina="";
		    String grasa="";
		    String placteosg="";
		    String placteoe="";
		    String pvegetal="";
		    String pfruta="";
		    String pcereal="";
		    String pcarne="";
		    String pgrasa="";
		    String pazucar="";
		    String CONSULTA_EXTERNA_idCONSULTA_EXTERNA="";
		    String USR7="";
		    String nombre="";
		    String rol="";

		    while (rs.next()) {
		    	talla=rs.getString("A.talla");
		    	edad=rs.getString("EDAD");
		    	sexo=rs.getString("P.sexo");
		    	fecha=rs.getString("C.fecha");
		    	peso=rs.getString("C.peso");
		    	imc=rs.getString("C.imc");
		    	ActividadFisica=rs.getString("C.ActividadFisica");
		    	FormulaVet=rs.getString("C.FormulaVet");
		    	VET=rs.getString("C.VET");
		    	VETAF=rs.getString("C.VETAF");
		    	RBajoPeso=rs.getString("C.RBajoPeso");
		    	RSobrePeso=rs.getString("C.RSobrePeso");
		    	RObesidad=rs.getString("C.RObesidad");
		    	carbohidrato=rs.getString("C.carbohidrato");
		    	proteina=rs.getString("C.proteina");
		    	grasa=rs.getString("C.grasa");
		    	placteosg=rs.getString("C.placteosg");
		    	placteoe=rs.getString("C.placteoe");
		    	pvegetal=rs.getString("C.pvegetal");
		    	pfruta=rs.getString("C.pfruta");
		    	pcereal=rs.getString("C.pcereal");
		    	pcarne=rs.getString("C.pcarne");
		    	pgrasa=rs.getString("C.pgrasa");
		    	pazucar=rs.getString("C.pazucar");
		    	CONSULTA_EXTERNA_idCONSULTA_EXTERNA=rs.getString("CONSULTA_EXTERNA_idCONSULTA_EXTERNA");
		    	USR7=rs.getString("C.USUARIO_idUSUARIO");
			    nombre=rs.getString("U.nombre");
			    rol=rs.getString("R.nombre");

		    }
		    resultado="{\"resultado\":\"OK\",\"fecha\":\""+fecha+"\",\"peso\":\""+peso
		    		+"\",\"edad\":\""+edad+"\",\"sexo\":\""+sexo+"\",\"talla\":\""+talla
		    		+"\",\"imc\":\""+imc+"\",\"ActividadFisica\":\""+ActividadFisica
		    		+"\",\"FormulaVet\":\""+FormulaVet+"\",\"VET\":\""+VET
		    		+"\",\"VETAF\":\""+VETAF+"\",\"RBajoPeso\":\""+RBajoPeso
		    		+"\",\"RSobrePeso\":\""+RSobrePeso+"\",\"RObesidad\":\""+RObesidad
		    		+"\",\"carbohidrato\":\""+carbohidrato+"\",\"proteina\":\""+proteina
		    		+"\",\"grasa\":\""+grasa+"\",\"placteosg\":\""+placteosg
		    		+"\",\"placteoe\":\""+placteoe+"\",\"pvegetal\":\""+pvegetal
		    		+"\",\"pfruta\":\""+pfruta+"\",\"pcereal\":\""+pcereal
		    		+"\",\"pcarne\":\""+pcarne+"\",\"pgrasa\":\""+pgrasa
		    		+"\",\"pazucar\":\""+pazucar
		    		+"\",\"USR7\":\""+USR7
		    		+"\",\"nombre\":\""+nombre
		    		+"\",\"rol\":\""+rol
		    		+"\",\"CONSULTA_EXTERNA_idCONSULTA_EXTERNA\":\""+CONSULTA_EXTERNA_idCONSULTA_EXTERNA+"\"}";
		    rs.close();
		    BDClose();
		    
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error al cargar\"}";
			return resultado;
		}
		
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
	
	public String ObtenerRegistrosMultifasico(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT idMULTIFASICO, fecha, USUARIO_idUSUARIO FROM MULTIFASICO WHERE PACIENTE_idPACIENTE="+ID+";");
		 
		    String idMULTIFASICO="";
		    String fecha="";
		    String USER7="";
		    int i=0;
		    String aux="";
		    while (rs.next()) {
		    	idMULTIFASICO=rs.getString("idMULTIFASICO");
		    	fecha=rs.getString("fecha");
		    	USER7=rs.getString("USUARIO_idUSUARIO");
		    	if(i==0){
		    		aux+="{\"idMULTIFASICO\":\""+idMULTIFASICO+"\",\"fecha\":\""+fecha+"\",\"USER\":\""+USER7+"\"}";
		    	}else{
		    		aux+=",{\"idMULTIFASICO\":\""+idMULTIFASICO+"\",\"fecha\":\""+fecha+"\",\"USER\":\""+USER7+"\"}";
		    	}
		    	
		     i++;
		    }
		    String total=",\"total\":\""+i+"\"";
		    String multi=",\"Rmultifasico\":["+aux+"]";
		    resultado=total+multi;
		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return resultado=",\"total\":\"0\"";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado=",\"total\":\"0\"";
		}
		
	}
	public String ObtenerRegistrosConsultaExterna(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT idCONSULTA_EXTERNA, fecha, USUARIO_idUSUARIO FROM CONSULTA_EXTERNA WHERE PACIENTE_idPACIENTE="+ID+";");
		 
		    String idCONSULTA_EXTERNA="";
		    String fecha="";
		    String USER7="";
		    int i=0;
		    String aux="";
		    while (rs.next()) {
		    	idCONSULTA_EXTERNA=rs.getString("idCONSULTA_EXTERNA");
		    	fecha=rs.getString("fecha");
		    	USER7=rs.getString("USUARIO_idUSUARIO");
		    	if(i==0){
		    		aux+="{\"idCONSULTA_EXTERNA\":\""+idCONSULTA_EXTERNA+"\",\"fecha\":\""+fecha+"\",\"USER\":\""+USER7+"\"}";
		    	}else{
		    		aux+=",{\"idCONSULTA_EXTERNA\":\""+idCONSULTA_EXTERNA+"\",\"fecha\":\""+fecha+"\",\"USER\":\""+USER7+"\"}";
		    	}
		    	
		     i++;
		    }
		    String total=",\"total\":\""+i+"\"";
		    String multi=",\"RConsultaExterna\":["+aux+"]";
		    resultado=total+multi;
		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return resultado=",\"total\":\"0\"";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado=",\"total\":\"0\"";
		}
		
	}
	public String ObtenerTallaPeso(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("select talla,peso from ANTROPOMETRIA where idANTROPOMETRIA=(select ANTROPOMETRIA_idANTROPOMETRIA from CONSULTA_EXTERNA where idCONSULTA_EXTERNA="+ID+");");
		 
		    String talla="";
		    String peso="";
		    String diagnostico="";
		    while (rs.next()) {
		    	talla=rs.getString("talla");
		    	peso=rs.getString("peso");
		     
		    }
		    resultado="{\"resultado\":\"OK\",\"talla\":\""+talla+"\",\"peso\":\""+peso+"\",\"idCE\":\""+ID+"\"";
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
	public String ObtenerRegistrosReconsulta(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT idRECONSULTA, fecha, USUARIO_idUSUARIO FROM RECONSULTA WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+";");
		 
		    String idRECONSULTA="";
		    String fecha="";
		    String USER7="";
		    int i=0;
		    String aux="";
		    while (rs.next()) {
		    	idRECONSULTA=rs.getString("idRECONSULTA");
		    	fecha=rs.getString("fecha");
		    	USER7=rs.getString("USUARIO_idUSUARIO");
		    	if(i==0){
		    		aux+="{\"idRECONSULTA\":\""+idRECONSULTA+"\",\"fecha\":\""+fecha+"\",\"USER\":\""+USER7+"\"}";
		    	}else{
		    		aux+=",{\"idRECONSULTA\":\""+idRECONSULTA+"\",\"fecha\":\""+fecha+"\",\"USER\":\""+USER7+"\"}";
		    	}
		    	
		     i++;
		    }
		    String total=",\"total\":\""+i+"\"";
		    String multi=",\"RRECONSULTA\":["+aux+"]";
		    resultado=total+multi;
		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return resultado=",\"total\":\"0\"";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado=",\"total\":\"0\"";
		}
		
	}
	public String ObtenerRegistrosCalculosVET(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		   
		    rs = cmd.executeQuery("SELECT idCALCULOS_VET, fecha, USUARIO_idUSUARIO FROM CALCULOS_VET WHERE CONSULTA_EXTERNA_idCONSULTA_EXTERNA="+ID+";");
		 
		    String idCALCULOS_VET="";
		    String fecha="";
		    String USER7="";
		    int i=0;
		    String aux="";
		    while (rs.next()) {
		    	idCALCULOS_VET=rs.getString("idCALCULOS_VET");
		    	fecha=rs.getString("fecha");
		    	USER7=rs.getString("USUARIO_idUSUARIO");
		    	if(i==0){
		    		aux+="{\"idCALCULOS_VET\":\""+idCALCULOS_VET+"\",\"fecha\":\""+fecha+"\",\"USER\":\""+USER7+"\"}";
		    	}else{
		    		aux+=",{\"idCALCULOS_VET\":\""+idCALCULOS_VET+"\",\"fecha\":\""+fecha+"\",\"USER\":\""+USER7+"\"}";
		    	}
		    	
		     i++;
		    }
		    String total=",\"total\":\""+i+"\"";
		    String multi=",\"RCALCULOSVET\":["+aux+"]";
		    resultado=total+multi;
		    rs.close();
		    BDClose();
		    return resultado;
		}catch(SQLException ex){
			System.out.println("Se produjo una excepción:"+ex);
			return resultado=",\"total\":\"0\"";
		}
		catch(Exception ex){ 
			System.out.println("Se produjo una excepción:"+ex);
			return resultado=",\"total\":\"0\"";
		}
		
	}
	public String ObtenerMedidaPaciente(String ID){
		String resultado="";

		try {
			BDConnect();
			Class.forName("com.mysql.jdbc.Driver");
			
			
			ResultSet rs = null;
			Statement cmd = null;
		    cmd = getconnection().createStatement();
		    String consulta="select A.talla,A.peso,YEAR(CURDATE())-YEAR(P.fecha_nacimiento) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(P.fecha_nacimiento,'%m-%d'), 0, -1) AS 'EDAD', P.sexo from CONSULTA_EXTERNA E, ANTROPOMETRIA A, PACIENTE P "
							+" where E.PACIENTE_idPACIENTE=P.idPACIENTE"
							+" AND E.ANTROPOMETRIA_idANTROPOMETRIA=A.idANTROPOMETRIA"
							+" AND idCONSULTA_EXTERNA="+ID+";";
		   
		    rs = cmd.executeQuery(consulta);
		 
		    String talla="";
		    String peso="";
		    String edad="";
		    String sexo="";
		    while (rs.next()) {
		    	talla=rs.getString("A.talla");
		    	peso=rs.getString("A.peso");
		    	edad=rs.getString("EDAD");
		    	sexo=rs.getString("P.sexo");
		    }
		    resultado="{\"resultado\":\"OK\",\"talla\":\""+talla+"\",\"peso\":\""+peso+"\",\"edad\":\""+edad+"\",\"sexo\":\""+sexo+"\",\"idCE\":\""+ID+"\"";
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
	
	public void Insertar(String query){ //intentar borrar
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
	public String InsertarRegistro(String query){
		String resultado="0";
		try{
			
			BDConnect();
			
			Statement cmd = getconnection().createStatement();
			cmd = getconnection().createStatement();

		    cmd.executeUpdate(query);
			
			//System.out.println("Conexión realizada con éxito a: "+conn.getCatalog());
			
			BDClose();
			
			} catch(SQLException ex)
			{ 	
				resultado="{\"resultado\":\"ERROR\",\"descripcion\":\"Error de almacenamiento en la base de datos\"}";
				System.out.println("Se produjo una excepción durante la conexión:"+ex);
			} catch(Exception ex){ 
				resultado="{\"resultado\":\"OK\",\"descripcion\":\"Error de almacenamiento\"}";
				System.out.println("Se produjo una excepción:"+ex);
			}
		return resultado;
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
