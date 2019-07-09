package tajador.certamen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/camerinos")
public class CamerinosController {
	



		@RequestMapping("/success")
		public String goToSuccessS() {
			return "horarios";
		}

  @RequestMapping("/error")
  public String goToError() {
    return "horarios";
  }




}
