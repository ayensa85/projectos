package tajador.certamen.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class VotoPublico {
	
	@Id
	@GeneratedValue
	private long id;

	@Column
	private long idGrupo;
	@Column
	private long idJurado;
	@Column
	private long votacion;
	
	@ManyToOne
	@JoinColumn(name="jurado_id")
	private Jurado jurado;
	
	@Column
	private Integer edicion;

	public VotoPublico(long id, long idGrupo, long idJurado, long votacion, Integer edicion, Jurado jurado) {
		this.id = id;
		this.idGrupo = idGrupo;
		this.idJurado = idJurado;
		this.votacion = votacion;
		this.edicion = edicion;
	}

	public VotoPublico() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getIdGrupo() {
		return idGrupo;
	}

	public void setIdGrupo(long idGrupo) {
		this.idGrupo = idGrupo;
	}

	public long getIdJurado() {
		return idJurado;
	}

	public void setIdJurado(long idJurado) {
		this.idJurado = idJurado;
	}

	public long getVotacion() {
		return votacion;
	}

	public void setVotacion(long votacion) {
		this.votacion = votacion;
	}

	public Integer getEdicion() {
		return edicion;
	}

	public void setEdicion(Integer edicion) {
		this.edicion = edicion;
	}

	public Jurado getJurado() {
		return jurado;
	}

	public void setJurado(Jurado jurado) {
		this.jurado = jurado;
	}
}
