package web.certamen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	 @RequestMapping(value="/")
	    public String goToIndex(Model model) {
	         
	        return "index";
	    }
	 @RequestMapping(value="/bases")
	 public String goTobases(Model model) {
		 
		 return "bases";
	 }
	 @RequestMapping(value="/quees")
	 public String goToQueEs(Model model) {
		 
		 return "quees";
	 }
	 @RequestMapping(value="/artistas")
	 public String goToArtistas(Model model) {
		 
		 return "artistas";
	 }
	
	 @RequestMapping(value="/participar")
	 public String goToParticipar(Model model) {
		 
		 return "participar";
	 }
	 @RequestMapping("/acceso")
		public String goToAcceso() {
			return "login";
		}
	 
	 

}
