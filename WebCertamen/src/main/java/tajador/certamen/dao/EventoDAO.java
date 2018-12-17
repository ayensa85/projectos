package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Evento;
@Repository
public interface EventoDAO extends JpaRepository<Evento, Long> {

}
