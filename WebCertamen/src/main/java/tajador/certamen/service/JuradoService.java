package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.JuradoDAO;

@Service
public class JuradoService {
	
	@Autowired
	JuradoDAO juradoDao;

}
