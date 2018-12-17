package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Noticia;

@Repository
public interface NoticiasDao extends JpaRepository<Noticia, Long>{
	
	

}
