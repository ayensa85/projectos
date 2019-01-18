package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Tajador;

@Repository
public interface TajadorDAO extends JpaRepository<Tajador, Long> {

	@Query(value="SELECT * FROM tajador where email = :email and password = :password", nativeQuery=true)
	Tajador findTajadorByMailandPassword(@Param("email") String email, @Param("password") String password);
	
	
	
	@Query(value="SELECT * FROM tajador where email = :email ", nativeQuery=true)
	Tajador findTajadorByMail(@Param("email") String email);

}
