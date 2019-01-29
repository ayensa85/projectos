package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import tajador.certamen.model.UserRole;

public interface RolDAO extends JpaRepository<UserRole, Long> {
	
	

}
