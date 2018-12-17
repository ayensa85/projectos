package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.ReunionDAO;

@Service
public class ReunionService {

	@Autowired
	ReunionDAO reunionDao;
	
}
