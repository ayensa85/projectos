package tajador.certamen.controller;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.orm.jpa.JpaSystemException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tajador.certamen.dto.GrupoDTO;
import tajador.certamen.model.IntegerWrapper;
import tajador.certamen.model.User;
import tajador.certamen.model.UserRole;
import tajador.certamen.service.GrupoService;
import tajador.certamen.service.NoticiasService;
import tajador.certamen.service.UserService;

@Controller
@RequestMapping("/certamen")
public class IndexController {

	private static Logger logger = Logger.getLogger(IndexController.class);

	private String lastIp = "";

	@Value("${certamen.edicion}")
	String edicion;

	@Value("${certamen.numVotos.inicial}")
	String numVotosInicial;

	@Autowired
	GrupoService grupoService;
	
	@Autowired
	UserService userService;

	@Autowired
	NoticiasService noticiasService;

	@RequestMapping(value = "/index")
	public String goToIndex(Model model) {

		return "index";
	}

	@RequestMapping(value = "/elfestival")
	public String goTobases(Model model) {
		
		User usuario=new User();
		List<UserRole> rol =  new ArrayList<UserRole>();
		rol.add(new UserRole(1, "ADMIN"));
		usuario.setNombre("Juan");
		usuario.setEmail("ayensa85@gmail.com");
		usuario.setPassword("Hardwork85");
		usuario.setRol(rol);
		usuario.setTfno("676656109");
		userService.registerNewUserAccount(usuario);

		return "elfestival";
	}

	@RequestMapping(value = "/asociacion")
	public String goToQueEs(Model model) {

		return "asociacion";
	}

	@RequestMapping(value = "/comollegar")
	public String goToComoLlegar(Model model) {

		return "llegar";
	}

	@RequestMapping(value = "/alojamiento")
	public String goToAlojamiento(Model model) {

		return "alojamiento";
	}

	@RequestMapping(value = "/bases")
	public String goToBases(Model model) {

		return "bases";
	}

	@RequestMapping(value = "/grupo1")
	public String goToGrupo1(Model model) {

		return "artista1";
	}

	@RequestMapping(value = "/grupo2")
	public String goToGrupo2(Model model) {

		return "artista2";
	}

	@RequestMapping(value = "/grupo3")
	public String goToGrupo3(Model model) {

		return "artista3";
	}

	@RequestMapping(value = "/grupo4")
	public String goToGrupo4(Model model) {

		return "artista4";
	}

	@RequestMapping(value = "/grupo5")
	public String goToGrupo5(Model model) {

		return "artista5";
	}

	@RequestMapping(value = "/grupo6")
	public String goToGrupo6(Model model) {

		return "artista6";
	}

	@RequestMapping(value = "/grupo7")
	public String goToGrupo7(Model model) {

		return "artista7";
	}

	@RequestMapping(value = "/grupo8")
	public String goToGrupo8(Model model) {

		return "artista8";
	}

	@RequestMapping(value = "/bases/downloadpdf", method = RequestMethod.GET)
	public void getSteamingFile1(HttpServletResponse response) throws Exception {
		String respath = "/static/pdfs/bases-2019.pdf";
		InputStream in = IndexController.class.getResourceAsStream(respath);
		if (in == null)
			throw new Exception("resource not found: " + respath);

		response.setContentType("application/pdf");
		response.setHeader("Content-Disposition", "attachment; filename=bases-2019.pdf");
		FileCopyUtils.copy(in, response.getOutputStream());
	}

	@RequestMapping(value = "/grupo9")
	public String goToGrupo9(Model model) {

		return "artista9";
	}

	@RequestMapping(value = "/grupo10")
	public String goToGrupo10(Model model) {

		return "artista10";
	}

	@RequestMapping(value = "/bases/participar")
	public String goToParticipar(Model model,
			@ModelAttribute("participanteAniadido") IntegerWrapper participanteAniadido, BindingResult bindingResult) {
		model.addAttribute("grupoInscrito", participanteAniadido);

		model.addAttribute("participante", new GrupoDTO());

		return "participar";
	}

	@RequestMapping(value = "/bases/participar/guardarParticipante", method = RequestMethod.POST)
	public String goToAniadirParticipante(@RequestParam("foto") MultipartFile file,
			@ModelAttribute("participante") @Valid GrupoDTO participante, BindingResult result, Model model,
			RedirectAttributes ra) throws Exception {
		if (result.hasErrors()) {
			return "participar";
		} else {
			try {

				participante.setEdicion(Integer.parseInt(edicion));
				participante.setNumVotos(Integer.parseInt(numVotosInicial));
				IntegerWrapper correcto = new IntegerWrapper(
						Integer.valueOf(grupoService.guardarGrupo(participante, file)));
				ra.addFlashAttribute("participanteAniadido", correcto);
			} catch (Exception e) {
				System.out.println(e);
				return "participar";

			}

		}

		return "redirect:/certamen/bases/participar";
	}

	@RequestMapping(value = "/votatugrupo")
	public String goTovotaTuGrupo(Model model) {

		List<GrupoDTO> grupos = grupoService.getGruposByEdicion(22);
		model.addAttribute("participantes", grupos);
		return "votacion";

	}

	@RequestMapping(value = "/votar/{id}")
	public ResponseEntity<String> votarGrupo(@PathVariable long id, Model model, HttpServletRequest request) {
		try {
			if ("".equals(lastIp) || !lastIp.equals(request.getRemoteAddr())) {

				grupoService.updateVotoById(id);
				lastIp = request.getRemoteAddr();
				return new ResponseEntity<String>(HttpStatus.OK);

			} else {

				return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);

			}
		} catch (JpaSystemException e) {
			return new ResponseEntity<String>(HttpStatus.EXPECTATION_FAILED);

		}
	}

	@RequestMapping("/horarios")
	public String goToHorarios() {
		return "horarios";
	}

}
