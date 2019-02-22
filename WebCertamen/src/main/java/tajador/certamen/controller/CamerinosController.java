package tajador.certamen.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import tajador.certamen.service.GrupoService;
import tajador.certamen.service.NoticiasService;

@Controller
@RequestMapping("/certamen")
public class CamerinosController {
	



//		private static Logger logger = Logger.getLogger(IndexController.class);
//
//		private String lastIp = "";
//		
//		
		@RequestMapping("/success")
		public String goToSuccessS() {
			return "horarios";
		}
//		
//		
//		@RequestMapping("/error")
//		public String goToError() {
//			return "horarios";
//		}




}
