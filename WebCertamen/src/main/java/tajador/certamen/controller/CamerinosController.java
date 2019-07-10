package tajador.certamen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tajador.certamen.model.User;

@Controller
@RequestMapping("/camerinos")
public class CamerinosController {
	



		@RequestMapping("/success")
		public String goToSuccessS() {
			return "horarios";
		}

  @RequestMapping("/error")
  public String goToError(Model model) {
    model.addAttribute("user", new User());
    return "index";
  }




}
