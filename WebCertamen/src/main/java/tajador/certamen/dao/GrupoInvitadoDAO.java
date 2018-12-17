package tajador.certamen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.GrupoInvitado;
@Repository
public interface GrupoInvitadoDAO extends JpaRepository<GrupoInvitado , Long> {

}
