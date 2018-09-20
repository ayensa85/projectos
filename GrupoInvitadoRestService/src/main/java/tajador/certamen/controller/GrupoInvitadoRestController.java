package tajador.certamen.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import tajador.certamen.dao.GrupoInvitadoDao;
import tajador.certamen.model.GrupoInvitado;

@RestController
@RequestMapping("/certamen")
public class GrupoInvitadoRestController {
	
	@Autowired
	private GrupoInvitadoDao grupoInvitadoDao;
	
	@RequestMapping("/gruposinvitados")
	public ResponseEntity<List<GrupoInvitado>> getGruposInvitados(){
		
		List<GrupoInvitado>  gruposInvitados=  new ArrayList<GrupoInvitado>();
		try{
			gruposInvitados = grupoInvitadoDao.findAll();
			return new ResponseEntity<List<GrupoInvitado>>(gruposInvitados, HttpStatus.OK);
			
		}catch(Exception e){
			System.out.println(e.toString());
			return new ResponseEntity<List<GrupoInvitado>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
	}
	

}
