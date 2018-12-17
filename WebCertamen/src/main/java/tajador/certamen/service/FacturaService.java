package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.FacturaDAO;

@Service
public class FacturaService {

	@Autowired
	FacturaDAO facturaDao;
}
