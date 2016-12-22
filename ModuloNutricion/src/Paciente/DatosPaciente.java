package Paciente;

public class DatosPaciente {
	private String nombre;
	private String sexo;
	private String FechaNac;
	private String facultad;
	
	public DatosPaciente(String nombre, String FechaNac, String sexo, String facultad){
		this.nombre=nombre;
		this.sexo=sexo;
		this.FechaNac=FechaNac;
		this.facultad=facultad;
	}




	public String getFacultad() {
		return facultad;
	}




	public void setFacultad(String facultad) {
		this.facultad = facultad;
	}




	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getFechaNac() {
		return FechaNac;
	}

	public void setFechaNac(String fechaNac) {
		FechaNac = fechaNac;
	}
}
