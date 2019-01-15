package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import tajador.certamen.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	    User findByUsername(String username);
	}


