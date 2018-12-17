package tajador.certamen.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Reunion;
@Repository
public interface ReunionDAO extends JpaRepository<Reunion, Long> {

}
