package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.User;

@Repository
public interface UserDAO extends JpaRepository<User, Long> {
	
	@Query(value="SELECT * FROM USER where email = :email", nativeQuery=true)
	public User findByUserName(@Param("email") String username);

}
