package tajador.certamen.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tajador.certamen.model.Grupo;

@Repository
public interface GrupoDAO extends JpaRepository<Grupo, Long> {
	
	@Query(value="SELECT * FROM Grupo where edicion = :edicion", nativeQuery=true)
    List<Grupo> findGrupoByEdicion(@Param("edicion") Integer edicion);
	
	@Transactional
	@Query(value="UPDATE Grupo SET numvotos = numvotos + 1 where id=:id", nativeQuery=true)
	void udateVotoById(@Param("id") long id);
	
	
	@Query(value="SELECT g FROM Grupo g where g.edicion = :edicion")
	List<Grupo> findGrupoByEdicionJPQ(@Param("edicion") Integer edicion);

}
