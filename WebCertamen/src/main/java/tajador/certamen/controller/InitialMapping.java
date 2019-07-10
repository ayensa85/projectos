package tajador.certamen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tajador.certamen.model.User;

@Controller
public class InitialMapping {

  @RequestMapping("/")
  public String goToInitial(Model model) {
    model.addAttribute("user", new User());
    return "index";
    }

}
