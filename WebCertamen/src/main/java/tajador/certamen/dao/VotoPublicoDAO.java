package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.VotoPublico;
@Repository
public interface VotoPublicoDAO extends JpaRepository<VotoPublico, Long> {

}
