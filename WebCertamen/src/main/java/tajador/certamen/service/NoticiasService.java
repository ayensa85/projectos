package tajador.certamen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.NoticiasDao;
import tajador.certamen.model.Noticia;

@Service("noticiasService")
public class NoticiasService {
	
	@Autowired
	NoticiasDao noticiasDao;
	
	
	
	
	public List<Noticia> getNoticias(){
		
		return noticiasDao.findAll();
	}
	
	

}
