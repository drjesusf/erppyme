package org.erppyme.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.erppyme.model.Cliente;
import org.erppyme.security.Usuario;
import org.erppyme.service.CustomUserDetailsService;
import org.erppyme.service.RolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping(value = "administracionDeUsuarios.htm", method = RequestMethod.GET)
	public String administracionDeUsuarios(ModelMap model){
		List lstRoles = rolService.obtenerRoles();
		List lstUsuarios = customUserDetailsService.obtenerUsuarios();
		Usuario usuario = new Usuario();
		
		model.addAttribute("lstRoles", lstRoles);
		model.addAttribute("lstUsuarios", lstUsuarios);
		model.addAttribute("usuario", usuario);
		
		return "security/administracionDeUsuarios";
	}
	
	@RequestMapping(value="filtroUsuarios.htm",method= RequestMethod.GET)
	public @ResponseBody List<Cliente> filtroUsuarios(@RequestParam("term") String buscarUsuario,
													  @RequestParam("identificador") String identificador){
		
		List<Cliente> lstClientes = customUserDetailsService.filtrarUsuarios(identificador, buscarUsuario);
		
		return lstClientes;
	}
	@RequestMapping(value = "obtenerUsuario.htm", method = RequestMethod.POST)
	public @ResponseBody Usuario obtenerUsuario(@RequestParam("codUsuario") Integer codUsuario){
		return customUserDetailsService.obtenerUsuario(codUsuario);
	}
	@RequestMapping(value = "modificarUsuario.htm", method = RequestMethod.POST)
	public String modificarUsuario(@ModelAttribute("usuario")Usuario usuario){
		customUserDetailsService.update(usuario);
		return "redirect:../security/administracionDeUsuarios.htm";
	}
	@RequestMapping(value = "nuevoUsuario.htm", method = RequestMethod.POST)
	public String nuevoUsuario(@ModelAttribute("usuario")Usuario usuario){
		customUserDetailsService.insert(usuario);
		return "redirect:../security/administracionDeUsuarios.htm";
	}
	
	@RequestMapping(value = "eliminarUsuario.htm", method = RequestMethod.POST)
	public String eliminarUsuario(@ModelAttribute("usuario")Usuario usuario){
		customUserDetailsService.delete(usuario);
		return "redirect:../security/administracionDeUsuarios.htm";
	}
	
	@RequestMapping(value = "cambiarContrasenaUsuario.htm", method = RequestMethod.POST)
	public String cambiarContrasenaUsuario(@ModelAttribute("usuario")Usuario usuario){
		customUserDetailsService.update(usuario);
		return "redirect:../security/administracionDeUsuarios.htm";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		 dateFormat.setLenient(false);
		 webDataBinder.registerCustomEditor( Date.class, new CustomDateEditor(dateFormat, true));
	}

}
