package ExamenNutricion;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ConexionBD.Conexion;

/**
 * Servlet implementation class Reconsulta
 */
@WebServlet("/Reconsulta")
public class Reconsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reconsulta() {
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
		String carnet="";
		String TipoCodigo="";
		String nombre="";
		String fecha="";
		String TipoExamen="";
		String Facultad="";
		String Sexo="";
		String edad="";
		String talla="";
		String peso="";
		String imc="";
		String pesoL="";
		String pesoG="";
		String pesoP="";
		String Diag="";
		String cintura="";
		String pgrasa="";
		String pagua="";
		String grasavisceral="";
		String masaosea="";
		String vettanita="";
		String datossubjetivos="";
		String tratamiento="";
		String educacionalimentaria="";

		carnet = request.getParameter("carnet");
		TipoCodigo=request.getParameter("TipoCodigo");
		
		nombre = request.getParameter("nombre");
		fecha="";
		Sexo="";
		Facultad="";
		
		TipoExamen=request.getParameter("TipoExamen");
		TipoExamen="(select idTIPO_EXAMEN from TIPO_EXAMEN where nombre=\""+TipoExamen+"\")";
		
		talla=request.getParameter("talla");
		peso=request.getParameter("peso");
		Diag=request.getParameter("Diag");
		
		pesoG=request.getParameter("pesoG");
		pesoP=request.getParameter("pesoP");
		cintura=request.getParameter("cintura");
		imc=request.getParameter("imc");
		pgrasa=request.getParameter("pgrasa");
		pagua=request.getParameter("pagua");
		
		grasavisceral=request.getParameter("grasavisceral");
		masaosea=request.getParameter("masaosea");
		vettanita=request.getParameter("vettanita");
		datossubjetivos=request.getParameter("datossubjetivos");
		tratamiento=request.getParameter("tratamiento");
		educacionalimentaria=request.getParameter("educacionalimentaria");
		
		System.out.println(carnet+","+peso+","+Diag+","+pesoG+","+pesoP+","+cintura+","+pgrasa+","+pagua);
		System.out.println(grasavisceral+","+masaosea+","+vettanita+","+datossubjetivos+","+tratamiento+","+educacionalimentaria);
		
		String registro="";
		registro=request.getParameter("mensaje2");
		
		String query="";
		Conexion con =new Conexion();
		if(registro==null){
			//Paciente ya registrado
			
		}else{
			//Paciente no registrado
			String query2="";
			fecha=request.getParameter("fechaNac");
			Sexo=request.getParameter("Sexo");
			Facultad=request.getParameter("Facultad");

			query2="insert into PACIENTE(idPACIENTE,usuario,password,nombre,fecha_nacimiento,sexo,estado,FACULTAD_idFACULTAD) "
					+"values("+carnet+",'prueba3','prueba5','"+nombre+"','"+fecha+"','"+Sexo+"','activo',"+Facultad+");";
			
			con.Insertar(query2);
		}
		
		query="insert into RECONSULTA(fecha,talla,peso,IMC,pesoganado,pesoperdido,cintura,porcentajegrasa,porcentajeagua,grasavisceral,masaosea,vettanita,datossubjetivos,tratamiento,educacion,PACIENTE_idPACIENTE,DIAGNOSTICO_idDIAGNOSTICO,TIPO_EXAMEN_idTIPO_EXAMEN)"+ 
"values(CURDATE(),"+talla+","+peso+","+imc+","+pesoG+","+pesoP+","+cintura+","+pgrasa+","+pagua+","+grasavisceral+","+masaosea+","+vettanita+",'"+datossubjetivos+"','"+tratamiento+"','"+educacionalimentaria+"',"+carnet+",(select idDIAGNOSTICO from DIAGNOSTICO where descripcion=\""+Diag+"\"),"+TipoExamen+");";
		con.Insertar(query);
		
		
		response.sendRedirect("/ModuloNutricion/ExamenesNutricion/Reconsulta.jsp");
	}

}
