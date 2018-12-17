package tajador.certamen.model;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table
public class Factura {

	@Id
	@GeneratedValue
	private long id;

	@Column
	private BigDecimal importe;

	@Column
	private String drive;

	@Column
	private String concepto;

	@Column
	private String empresa;

	@ManyToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinTable(name = "factura_evento", joinColumns = { @JoinColumn(name = "factura_id") }, inverseJoinColumns = {
			@JoinColumn(name = "evento_id") })
	private List<Evento> evento;

	public Factura() {
	}

	public Factura(long id, BigDecimal importe, String drive, String concepto, String empresa, List<Evento> evento) {
		this.id = id;
		this.importe = importe;
		this.drive = drive;
		this.concepto = concepto;
		this.empresa = empresa;
		this.evento = evento;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getImporte() {
		return importe;
	}

	public void setImporte(BigDecimal importe) {
		this.importe = importe;
	}

	public String getDrive() {
		return drive;
	}

	public void setDrive(String drive) {
		this.drive = drive;
	}

	public String getConcepto() {
		return concepto;
	}

	public void setConcepto(String concepto) {
		this.concepto = concepto;
	}

	public String getEmpresa() {
		return empresa;
	}

	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}

	public List<Evento> getEvento() {
		return evento;
	}

	public void setEvento(List<Evento> evento) {
		this.evento = evento;
	}

}
