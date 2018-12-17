package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.EventoDAO;

@Service
public class EventoService {
	
	@Autowired
	EventoDAO eventoDao;	

}
