package org.erppyme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("security/")
public class AccesoController {
	
	@RequestMapping(value = "login.htm",method = RequestMethod.GET)
	public String getPaginaLogin(@RequestParam(value = "error", required=false) boolean error, ModelMap model){
		System.out.println("Entro a getPaginaLogin");
		if(error) model.addAttribute("errorAcceso", "El usuaio no tiene acceso");
		return "security/login";
	}
	
	@RequestMapping(value = "inicio.htm",method = RequestMethod.GET)
	public String getPaginaInicio(@RequestParam(value = "error", required=false) boolean error, ModelMap model){
		System.out.println("Entro AccesoController -> inicio.htm ");
		return "inicio/index";
	}

}
