package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.TareaDAO;

@Service
public class TareaService {
	
	@Autowired
	TareaDAO tareaDao;
	
	
}
