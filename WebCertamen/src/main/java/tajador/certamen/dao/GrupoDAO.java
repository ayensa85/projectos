package tajador.certamen.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Grupo;

@Repository
public interface GrupoDAO extends JpaRepository<Grupo, Long> {
	
	@Query(value="SELECT * FROM Grupo where edicion = :edicion", nativeQuery=true)
    List<Grupo> findGrupoByEdicion(@Param("edicion") Integer edicion);
	
	
	@Query(value="SELECT g FROM Grupo g where g.edicion = :edicion")
	List<Grupo> findGrupoByEdicionJPQ(@Param("edicion") Integer edicion);

}
