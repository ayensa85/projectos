package tajador.certamen.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "rol")
public enum UserRole {
	
	ADMIN(1,"ADMIN"), USER(2,"USER");
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "role_id")
    private int id;
    @Column(name = "role")
    private String role;
    
    @OneToMany(fetch=FetchType.LAZY)
	private List<User> usuarios;
    
    
    
	UserRole(int id, String role) {
		this.id = id;
		this.role = role;
	}



	UserRole() {
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}
	
	
    
    
    
}
