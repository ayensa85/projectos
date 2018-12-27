package tajador.certamen.service;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.UnexpectedRollbackException;

import tajador.certamen.dao.GrupoDAO;
import tajador.certamen.dto.GrupoDTO;
import tajador.certamen.model.Grupo;

@Service
public class GrupoService {

	private static Logger logger = Logger.getLogger(GrupoService.class);

	@Autowired
	GrupoDAO grupoDao;

	public int guardarGrupo(GrupoDTO grupo) {
		try {
			Grupo participante = new Grupo();
			BeanUtils.copyProperties(grupo, participante);
			grupoDao.saveAndFlush(participante);
		} catch (UnexpectedRollbackException ex) {
			if (ex.getMostSpecificCause() instanceof SQLIntegrityConstraintViolationException) {
				logger.error("Error al insertar en base de datos");
				logger.error("SQLIntegrityConstraintViolationException");
				logger.error(ex.toString());
			}
			return 0;
		} catch (Exception ex) {
			logger.error("Error al insertar en base de datos");
			logger.error(ex.toString());
			return 0;
		}
		return 1;
	}
	public GrupoDTO getById(Long grupoDto) {
		
		GrupoDTO aDevolver = new GrupoDTO();
		try {
			Optional<Grupo> aBuscar = grupoDao.findById(grupoDto);	
			BeanUtils.copyProperties(aBuscar.get(), aDevolver);
			aDevolver.setPic(aBuscar.get().getPic());
			return aDevolver;
		
		} catch (UnexpectedRollbackException ex) {
			if (ex.getMostSpecificCause() instanceof SQLIntegrityConstraintViolationException) {
				logger.error("Error al insertar en base de datos");
				logger.error("SQLIntegrityConstraintViolationException");
				logger.error(ex.toString());
				return new GrupoDTO();
			}
			return aDevolver;
		} catch (Exception ex) {
			logger.error("Error al insertar en base de datos");
			logger.error(ex.toString());
			return new GrupoDTO();
		}
		
	}

	public List<GrupoDTO> getGruposByEdicion(Integer edicion) {
		try {
			List<Grupo> participantes = grupoDao.findGrupoByEdicion(edicion);

			List<GrupoDTO> gruposdto = new ArrayList<GrupoDTO>();
			Grupo grupo = new Grupo();
			
			
			for (int i = 0; i < participantes.size(); i++) {
				GrupoDTO grupoDto = new GrupoDTO();
				grupo = participantes.get(i);
				BeanUtils.copyProperties(grupo, grupoDto);
				gruposdto.add(grupoDto);
				grupoDto = null;
			}
			return gruposdto;
		} catch (Exception ex) {
			logger.error("Error al insertar en base de datos");
			logger.error(ex.toString());
			System.out.println(ex.getMessage());
			return new ArrayList<GrupoDTO>();
		}

	}

}
