package tajador.certamen.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tajador.certamen.dto.GrupoDTO;
import tajador.certamen.service.GrupoService;

@Controller
@RequestMapping("/myImage")
public class ImageController {

	@Autowired
	GrupoService grupoService;
	
	
	@RequestMapping(value = "/imageDisplay", method = RequestMethod.GET)
	public void showImage(@RequestParam("id") Long itemId, HttpServletResponse response, HttpServletRequest request)
			throws ServletException, IOException {

		GrupoDTO grupoDto = grupoService.getById(itemId);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		response.getOutputStream().write(grupoDto.getPic());
		response.getOutputStream().flush();
		response.getOutputStream().close();

	}

}
