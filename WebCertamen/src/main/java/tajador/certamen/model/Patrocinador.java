package tajador.certamen.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Patrocinador {
	
	@Id
	@GeneratedValue
	private long id;
	
	@Column
	private String cif;
	@Column
	private String nombre;
	@Column
	private String drive;
	
	@Column
	private BigDecimal importe;
	
	@Column
	private Integer edicion;
	public Patrocinador(long id, String cif, String nombre, String drive, BigDecimal importe, Integer edicion) {
		this.id = id;
		this.cif = cif;
		this.nombre = nombre;
		this.drive = drive;
		this.importe = importe;
		this.edicion = edicion;
	}
	public Patrocinador() {
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCif() {
		return cif;
	}
	public void setCif(String cif) {
		this.cif = cif;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDrive() {
		return drive;
	}
	public void setDrive(String drive) {
		this.drive = drive;
	}
	public BigDecimal getImporte() {
		return importe;
	}
	public void setImporte(BigDecimal importe) {
		this.importe = importe;
	}
	public Integer getEdicion() {
		return edicion;
	}
	public void setEdicion(Integer edicion) {
		this.edicion = edicion;
	}
	
	
	
	@Override
	public String toString() {
		return "Patrocinador [id=" + id + ", cif=" + cif + ", nombre=" + nombre + ", drive=" + drive + ", importe="
				+ importe + ", edicion=" + edicion + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
