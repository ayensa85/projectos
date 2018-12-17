package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.VotoPublicoDAO;

@Service
public class VotopublicoService {

	@Autowired
	VotoPublicoDAO votopublicoDao;
	
}
