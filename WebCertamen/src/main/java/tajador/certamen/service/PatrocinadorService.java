package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.PatrocinadorDAO;

@Service
public class PatrocinadorService {
	
	@Autowired
	PatrocinadorDAO patrocinadorDao;

}
