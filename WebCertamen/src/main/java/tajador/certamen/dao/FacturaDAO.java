package tajador.certamen.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tajador.certamen.model.Factura;
@Repository
public interface FacturaDAO extends JpaRepository<Factura, Long> {

}
