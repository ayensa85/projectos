package tajador.certamen.model;

import java.util.Collection;
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

import org.hibernate.validator.constraints.Length;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table
public class Tajador implements UserDetails{

	@Id
	@GeneratedValue
	private long id;

	@Column
	private String nombre;

	@Column(name = "password")
	@Length(min = 5, message = "tajador.password.min")
	private String password;

	@Column
	private String matchPassword;
	
	@Column(unique=true)
	private String email;

	@Column
	private String tfno;

	@Column
	private String dni;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Role role;

	@ManyToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinTable(name = "tajador_tarea", joinColumns = { @JoinColumn(name = "tajador_id") }, inverseJoinColumns = {
			@JoinColumn(name = "tarea_id") })
	private List<Tarea> tareasPendientes;

	

	public Tajador(long id, String nombre, @Length(min = 5, message = "tajador.password.min") String password,
			String matchPassword, String email, String tfno, String dni, Role role, List<Tarea> tareasPendientes) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.password = password;
		this.matchPassword = matchPassword;
		this.email = email;
		this.tfno = tfno;
		this.dni = dni;
		this.role = role;
		this.tareasPendientes = tareasPendientes;
	}

	public Tajador() {
	}

	public String getMatchPassword() {
		return matchPassword;
	}

	public void setMatchPassword(String matchPassword) {
		this.matchPassword = matchPassword;
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

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return nombre;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
