package tajador.certamen.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class GrupoInvitado {
	
	@Id
	@GeneratedValue
	private long id;
	@Column
	private String youtube;
	@Column
	private String bandcamp1;
	@Column
	private String bancamp2;
	@Column
	private String bancamp3;
	@Column
	private String bancamp4;
	@Column
	private BigDecimal precio;
	@Column
	private Integer edicion;
	
	public GrupoInvitado(long id, String youtube, String bandcamp1, String bancamp2, String bancamp3, String bancamp4,
			BigDecimal precio, Integer edicion) {
		this.id = id;
		this.youtube = youtube;
		this.bandcamp1 = bandcamp1;
		this.bancamp2 = bancamp2;
		this.bancamp3 = bancamp3;
		this.bancamp4 = bancamp4;
		this.precio = precio;
		this.edicion=edicion;
	}
	public GrupoInvitado() {
	}
	
	@Override
	public String toString() {
		return "GupoInvitado [id=" + id + ", youtube=" + youtube + ", bandcamp1=" + bandcamp1 + ", bancamp2=" + bancamp2
				+ ", bancamp3=" + bancamp3 + ", bancamp4=" + bancamp4 + ", precio=" + precio +  "edicion=" + edicion + "]";
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getYoutube() {
		return youtube;
	}
	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}
	public String getBandcamp1() {
		return bandcamp1;
	}
	public void setBandcamp1(String bandcamp1) {
		this.bandcamp1 = bandcamp1;
	}
	public String getBancamp2() {
		return bancamp2;
	}
	public void setBancamp2(String bancamp2) {
		this.bancamp2 = bancamp2;
	}
	public String getBancamp3() {
		return bancamp3;
	}
	public void setBancamp3(String bancamp3) {
		this.bancamp3 = bancamp3;
	}
	public String getBancamp4() {
		return bancamp4;
	}
	public void setBancamp4(String bancamp4) {
		this.bancamp4 = bancamp4;
	}
	public BigDecimal getPrecio() {
		return precio;
	}
	public void setPrecio(BigDecimal precio) {
		this.precio = precio;
	}
	public Integer getEdicion() {
		return edicion;
	}
	public void setEdicion(Integer edicion) {
		this.edicion = edicion;
	}
	
	
	
	
	
	
	
	

}
