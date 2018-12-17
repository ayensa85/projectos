package tajador.certamen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tajador.certamen.dao.GrupoInvitadoDAO;

@Service
public class GrupoInvitadoService {

	@Autowired
	GrupoInvitadoDAO GrupoInvitadoDao;
}
