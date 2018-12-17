package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Tajador;

@Repository
public interface TajadorDAO extends JpaRepository<Tajador, Long> {

//	@Query("SELECT * FROM tajador where email = :email")
//	Tajador findTajadorByMail(@Param("email") String email);

}
