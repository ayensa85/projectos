package tajador.certamen.model;

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
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table
public class Tajador {

	@Id
	@GeneratedValue
	private long id;

	@Column
	private String nombre;

	@Column(name = "password")
	@Length(min = 5, message = "tajador.password.min")
	@NotEmpty(message = "tajador.password.obligatorio")
	private String password;

	@Email(message = "tajador.mail")
	@NotEmpty(message = "tajador.mail.obligatorio")
	private String email;

	@Column
	private String tfno;

	@Column
	private String dni;
	
	@ManyToOne
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Rol rol;

	@ManyToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinTable(name = "tajador_tarea", joinColumns = { @JoinColumn(name = "tajador_id") }, inverseJoinColumns = {
			@JoinColumn(name = "tarea_id") })
	private List<Tarea> tareasPendientes;

	

	public Tajador(long id, String nombre,
			@Length(min = 5, message = "tajador.password.min") @NotEmpty(message = "tajador.password.obligatorio") String password,
			@Email(message = "tajador.mail") @NotEmpty(message = "*Please provide an email") String email, String tfno,
			String dni, Rol rol, List<Tarea> tareasPendientes) {
		this.id = id;
		this.nombre = nombre;
		this.password = password;
		this.email = email;
		this.tfno = tfno;
		this.dni = dni;
		this.rol = rol;
		this.tareasPendientes = tareasPendientes;
	}

	public Tajador() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Rol getRoles() {
		return rol;
	}

	public void setRoles(Rol roles) {
		this.rol = roles;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTfno() {
		return tfno;
	}

	public void setTfno(String tfno) {
		this.tfno = tfno;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public List<Tarea> getTareasPendientes() {
		return tareasPendientes;
	}

	public void setTareasPendientes(List<Tarea> tareasPendientes) {
		this.tareasPendientes = tareasPendientes;
	}

}
