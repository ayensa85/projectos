package tajador.certamen.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Jurado;
@Repository
public interface JuradoDAO extends JpaRepository<Jurado, Long> {

}
