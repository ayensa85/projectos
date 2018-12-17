package tajador.certamen.dto;



import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.URL;

public class GrupoDTO {

	@NotEmpty
	private String nombreGrupo;
	@NotEmpty
	private String nombre;
	@NotEmpty
	private String provincia;
	
	 private int componentes;
	@NotEmpty
	@Pattern(regexp="([69][0-9]{8})", message="{formato.incorrecto}")
	private String telefono;

	private String youtube;

	private String intagram;
	
	@NotEmpty
	@Email
	private String email;

	private String facebook;

	private String twitter;
	@NotEmpty
	@URL
	private String cancion1;
	@NotEmpty
	@URL
	private String cancion2;
	@NotEmpty
	@URL
	private String cancion3;
	@NotEmpty
	@URL
	private String cancion4;
	@NotEmpty
	private byte[] pic;

	public GrupoDTO(@NotBlank String nombreGrupo, @NotBlank String nombre, @NotBlank String provincia,
			@NotNull int componentes, @NotBlank String telefono, String youtube, String email, String intagram, String facebook,
			String twitter, @NotBlank String cancion1, @NotBlank String cancion2, @NotBlank String cancion3,
			@NotBlank String cancion4, @NotNull byte[] pic) {
		this.nombreGrupo = nombreGrupo;
		this.nombre = nombre;
		this.provincia = provincia;
		this.componentes = componentes;
		this.telefono = telefono;
		this.email = email;
		this.youtube = youtube;
		this.intagram = intagram;
		this.facebook = facebook;
		this.twitter = twitter;
		this.cancion1 = cancion1;
		this.cancion2 = cancion2;
		this.cancion3 = cancion3;
		this.cancion4 = cancion4;
		this.pic = pic;
	}

	public GrupoDTO() {
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

}
