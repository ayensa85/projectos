package tajador.certamen.model;

import java.io.Serializable;
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

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private long id;

	@Column
	private String nombre;

	@Column(name = "password")
	@Length(min = 5, message = "tajador.password.min")
	@NotEmpty(message = "tajador.password.obligatorio")
	private String password;

  private String passwordConfirm;

	@Email(message = "tajador.mail")
	@NotEmpty(message = "tajador.mail.obligatorio")
	private String email;

	@Column
	private String tfno;

	@Column
	private String dni;
	
  private int active;

  @ManyToMany(cascade = { CascadeType.MERGE })
  @JoinTable(name = "user_rol", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
  private List<Role> roles;

  @ManyToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinTable(name = "tajador_tarea", joinColumns = { @JoinColumn(name = "tajador_id") }, inverseJoinColumns = {
			@JoinColumn(name = "tarea_id") })
	private List<Tarea> tareasPendientes;

	

	public User(long id, String nombre,
      @Length(min = 5, message = "tajador.password.min") @NotEmpty(message = "tajador.password.obligatorio") String password, String passwordConfirm,
			@Email(message = "tajador.mail") @NotEmpty(message = "*Please provide an email") String email, String tfno,
      String dni, List<Role> roles, List<Tarea> tareasPendientes) {
		this.id = id;
		this.nombre = nombre;
		this.password = password;
    this.passwordConfirm = passwordConfirm;
		this.email = email;
		this.tfno = tfno;
		this.dni = dni;
    this.roles = roles;
		this.tareasPendientes = tareasPendientes;
	}

	public User() {
	}
	
	
	public User(User user) {
		this.id = user.getId();
		this.nombre = user.getNombre();
		this.password = user.getPassword();
		this.email = user.getEmail();
		this.tfno = user.getTfno();
		this.dni = user.getDni();
    this.roles = user.getRoles();
		this.tareasPendientes = user.getTareasPendientes();
		
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

  public int getActive() {
    return active;
  }

  public void setActive(int active) {
    this.active = active;
  }

  public void setEmail(String email) {
		this.email = email;
	}

  public List<Role> getRoles() {
    return roles;
	}

  public void setRoles(List<Role> list) {
    this.roles = list;
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

  public String getPasswordConfirm() {
    return passwordConfirm;
  }

  public void setPasswordConfirm(String passwordConfirm) {
    this.passwordConfirm = passwordConfirm;
  }

}
