package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import tajador.certamen.model.Role;

public interface RolDAO extends JpaRepository<Role, Long> {


  // Role findByRole(String Role);

}
