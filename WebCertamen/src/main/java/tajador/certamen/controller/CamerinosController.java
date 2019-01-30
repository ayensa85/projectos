package tajador.certamen.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import tajador.certamen.service.GrupoService;
import tajador.certamen.service.NoticiasService;

@Controller
@RequestMapping("/camerinos")
public class CamerinosController {
	



		private static Logger logger = Logger.getLogger(IndexController.class);

		private String lastIp = "";

		@Value("${certamen.edicion}")
		String edicion;

		@Value("${certamen.numVotos.inicial}")
		String numVotosInicial;

		@Autowired
		GrupoService grupoService;

		@Autowired
		NoticiasService noticiasService;
		
		
		@RequestMapping("/success")
		public String goToHorarios() {
			return "horarios";
		}




}
