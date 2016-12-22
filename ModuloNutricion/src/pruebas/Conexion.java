package pruebas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Clase que permite conectar con la base de datos
 * @author chenao
 *
 */
public class Conexion {
   /**Parametros de conexion*/
   private static String servidor = "jdbc:mysql://localhost//NutricionUsalud";
   private static String user = "root";
   private static String pass = "maynor";
   private static String driver = "com.mysql.jdbc.Driver";
 
   private static Connection conexion;
 
   /** Constructor de DbConnection */
   public Conexion() {
      try{
         //obtenemos el driver de para mysql
         Class.forName(driver);
         //obtenemos la conexión
         conexion = DriverManager.getConnection(servidor,user,pass);
         System.out.println("conexion exito");
 
       
      }catch(ClassNotFoundException | SQLException e){
        System.out.println("conexion fallida");
      }
   }
   /**Permite retornar la conexión*/
   public Connection getConnection(){
      return conexion;
   }
 
   public void desconectar(){
      conexion = null;
   }
}