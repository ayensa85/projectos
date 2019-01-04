package tajador.certamen.model;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table
public class Grupo implements Serializable{

	@Id
	@GeneratedValue
	private Long id;

	@Column
	private String nombreGrupo;
	@Column(name = "nombre_contacto")
	private String nombre;
	@Column
	private String provincia;
	@Column
	private int componentes;
	@Column
	private String telefono;
	@Column
	private String email;
	@Column
	private String youtube;
	@Column
	private String intagram;
	@Column
	private String facebook;
	@Column
	private String twitter;
	@Column
	private String cancion1;
	@Column
	private String cancion2;
	@Column
	private String cancion3;
	@Column
	private String cancion4;
	@Column
	private Integer edicion;
	
	@Column
	private Integer numVotos;
	
	@Lob
	@Column(name = "foto")
	private byte[] pic;
	

	public Grupo(Long id, String nombreGrupo, String nombre, String provincia, int componentes, String telefono,
			String youtube, String intagram, String facebook, String twitter, String cancion1, String cancion2, String email, 
			String cancion3, String cancion4, Integer edicion, byte[] pic, Integer numVotos) {
		this.id = id;
		this.nombreGrupo = nombreGrupo;
		this.nombre = nombre;
		this.provincia = provincia;
		this.componentes = componentes;
		this.email= email;
		this.telefono = telefono;
		this.youtube = youtube;
		this.intagram = intagram;
		this.facebook = facebook;
		this.twitter = twitter;
		this.cancion1 = cancion1;
		this.cancion2 = cancion2;
		this.cancion3 = cancion3;
		this.cancion4 = cancion4;
		this.edicion = edicion;
		this.pic = pic; 
		this.numVotos = numVotos; 
	}

	public Grupo() {
	}

	public Integer getNumVotos() {
		return numVotos;
	}

	public void setNumVotos(Integer numVotos) {
		this.numVotos = numVotos;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNombreGrupo() {
		return nombreGrupo;
	}

	public void setNombreGrupo(String nombreGrupo) {
		this.nombreGrupo = nombreGrupo;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public int getComponentes() {
		return componentes;
	}

	public void setComponentes(int componentes) {
		this.componentes = componentes;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

	public String getIntagram() {
		return intagram;
	}

	public void setIntagram(String intagram) {
		this.intagram = intagram;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getCancion1() {
		return cancion1;
	}

	public void setCancion1(String cancion1) {
		this.cancion1 = cancion1;
	}

	public String getCancion2() {
		return cancion2;
	}

	public void setCancion2(String cancion2) {
		this.cancion2 = cancion2;
	}

	public String getCancion3() {
		return cancion3;
	}

	public void setCancion3(String cancion3) {
		this.cancion3 = cancion3;
	}

	public String getCancion4() {
		return cancion4;
	}

	public void setCancion4(String cancion4) {
		this.cancion4 = cancion4;
	}
	
	public byte[] getPic() {
		return pic;
	}

	public void setPic(byte[] pic) {
		this.pic = pic;
	}

	public Integer getEdicion() {
		return edicion;
	}

	public void setEdicion(Integer edicion) {
		this.edicion = edicion;
	}

	@Override
	public String toString() {
		return "Grupo [id=" + id + ", nombre=" + nombre + ", apellidos=" + nombreGrupo + ", provincia=" + provincia
				+ ", componentes=" + componentes + ", telefono=" + telefono + ", youtube=" + youtube + ", intagram="
				+ intagram + ", facebook=" + facebook + ", twitter=" + twitter + ", cancion1=" + cancion1
				+ ", cancion2=" + cancion2 + ", cancion3=" + cancion3 + ", cancion4=" + cancion4 + ", edicion="
				+ edicion ;
	}

}
