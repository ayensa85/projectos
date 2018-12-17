package tajador.certamen.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Tarea;
@Repository
public interface TareaDAO extends JpaRepository<Tarea, Long> {

}
