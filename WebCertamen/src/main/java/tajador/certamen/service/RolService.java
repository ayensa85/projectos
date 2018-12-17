package tajador.certamen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.RolDAO;
import tajador.certamen.model.Rol;

@Service
public class RolService {
	
	@Autowired
	RolDAO rolDao;
	
	List<Rol> findAll(){
		
		
		return rolDao.findAll();
	}
	
	
	

}
