package tajador.certamen.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table
public class Reunion {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Column
	@NotNull
	private Calendar fecha;
	
	@Column
	@NotNull
	private String puntosAcuerdo;

	public Reunion(Long id, @NotNull Calendar fecha, @NotNull String puntosAcuerdo) {
		this.id = id;
		this.fecha = fecha;
		this.puntosAcuerdo = puntosAcuerdo;
	}

	public Reunion() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Calendar getFecha() {
		return fecha;
	}

	public void setFecha(Calendar fecha) {
		this.fecha = fecha;
	}

	public String getPuntosAcuerdo() {
		return puntosAcuerdo;
	}

	public void setPuntosAcuerdo(String puntosAcuerdo) {
		this.puntosAcuerdo = puntosAcuerdo;
	}
	
	

}
