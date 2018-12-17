package tajador.certamen.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class Jurado {
	
	@Id
	@GeneratedValue
	private long id;

	@Column
	private String nombre;
	@Column
	private String dni;
	@Column
	private String telefono;
	
	@OneToMany(fetch=FetchType.LAZY)
	private List<VotoPublico> voto;
	
	public Jurado(long id, String nombre, String dni, String telefono) {
		this.id = id;
		this.nombre = nombre;
		this.dni = dni;
		this.telefono = telefono;
	}
	public Jurado() {
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public List<VotoPublico> getVoto() {
		return voto;
	}
	public void setVoto(List<VotoPublico> voto) {
		this.voto = voto;
	}
	
	
	
	
	
	
}
