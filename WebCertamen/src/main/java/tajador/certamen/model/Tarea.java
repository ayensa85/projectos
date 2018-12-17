package tajador.certamen.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="tarea")
public class Tarea {
	
	@Id 
	@GeneratedValue
	private long id;
	
	@Column
	private String nombreTarea;
	
	@Column
	private String realizada;
	
	@ManyToMany(fetch = FetchType.LAZY,
            cascade = {
                CascadeType.PERSIST,
                CascadeType.MERGE
            },
            mappedBy = "tareasPendientes")
	private List<Tajador> tajadores;

	public Tarea(long id, String nombreTarea, String realizada, List<Tajador> tajador) {
		this.id = id;
		this.nombreTarea = nombreTarea;
		this.realizada = realizada;
		this.tajadores = tajador;
	}

	public Tarea() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNombreTarea() {
		return nombreTarea;
	}

	public void setNombreTarea(String nombreTarea) {
		this.nombreTarea = nombreTarea;
	}

	public String getRealizada() {
		return realizada;
	}

	public void setRealizada(String realizada) {
		this.realizada = realizada;
	}

	public List<Tajador> getTajador() {
		return tajadores;
	}

	public void setTajador(List<Tajador> tajador) {
		this.tajadores = tajador;
	}

	@Override
	public String toString() {
		return "Tarea [id=" + id + ", nombreTarea=" + nombreTarea + ", realizada=" + realizada + ", tajador=" + tajadores
				+ "]";
	}
	
	

}
