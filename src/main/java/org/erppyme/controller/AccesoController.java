package org.erppyme.controller;

import java.util.List;

import org.erppyme.model.Cliente;
import org.erppyme.security.Usuario;
import org.erppyme.service.CustomUserDetailsService;
import org.erppyme.service.RolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("security/")
public class AccesoController {
	@Autowired
	private CustomUserDetailsService customUserDetailsService;
	@Autowired
	private RolService rolService ;
	
	@RequestMapping(value = "login.htm",method = RequestMethod.GET)
	public String getPaginaLogin(@RequestParam(value = "error", required=false) boolean error, ModelMap model){
		if(error) model.addAttribute("errorAcceso", "El usuaio no tiene acceso");
		return "security/login";
	}
	
	@RequestMapping(value = "inicio.htm",method = RequestMethod.GET)
	public String getPaginaInicio(@RequestParam(value = "error", required=false) boolean error, ModelMap model){
		return "inicio/index";
	}
	
	@RequestMapping(value = "asignarRolesPorUsuario.htm", method = RequestMethod.GET)
	public String asignarRolesPorUsuario(ModelMap model){
		List lstRoles = rolService.obtenerRoles();
		List lstUsuarios = customUserDetailsService.obtenerUsuarios();
		Usuario usuario = new Usuario();
		
		model.addAttribute("lstRoles", lstRoles);
		model.addAttribute("lstUsuarios", lstUsuarios);
		model.addAttribute("usuario", usuario);
		
		return "security/asignarRolesPorUsuario";
	}
	
	@RequestMapping(value="filtroUsuarios.htm",method= RequestMethod.GET)
	public @ResponseBody List<Cliente> filtroUsuarios(@RequestParam("term") String buscarUsuario,
													  @RequestParam("identificador") String identificador){
		
		List<Cliente> lstClientes = customUserDetailsService.filtrarUsuarios(identificador, buscarUsuario);
		
		return lstClientes;
	}
	
	

}
