package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Patrocinador;
@Repository
public interface PatrocinadorDAO extends JpaRepository<Patrocinador, Long> {

}
