package org.erppyme.controller;
 
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.erppyme.model.Cliente;
import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.service.ClienteService;
import org.erppyme.service.TipoDocumentoIdentificacionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ClienteController {
	
	@Autowired
	private ClienteService clienteService;
	@Autowired
	private TipoDocumentoIdentificacionService tipoDocumentoIdentificacionService;
	
	@RequestMapping(value="/mantenimientoClientes.htm",method= RequestMethod.GET)
	public String mantenimientoClientes(Model model){		
		List<Cliente> lstClientes = clienteService.consulta();
		List<TipoDocumentoIdentificacion> lstTipoDocumentoIdentificacions = tipoDocumentoIdentificacionService.consulta();
		model.addAttribute("lstTipoDocumentoIdentificacions", lstTipoDocumentoIdentificacions);
		model.addAttribute("lstClientes", lstClientes);
		model.addAttribute("cliente", new Cliente());
		return "clientes/mantenimientoClientes";
	}
	
	@RequestMapping(value="/filtroClientes.htm",method= RequestMethod.GET)
	public @ResponseBody List<Cliente> filtroClientes(@RequestParam("term") String buscarCliente,
													  @RequestParam("identificador") String identificador){
		
		System.out.println("Entro Filtro Clientes con: " + buscarCliente + " con identificador=" + identificador);
		
		List<Cliente> lstClientes = clienteService.filtrarClientes(identificador, buscarCliente);
		
		return lstClientes;
	}
	
	@RequestMapping( value = "obtenerCliente.htm", method = RequestMethod.POST)
	public @ResponseBody Cliente obtenerCliente(Map<String, Object> model ,@RequestParam("clienteId") Integer clienteId){
		System.out.println("Entro obtenerCliente con: " + clienteId);
		Cliente existenteCliente = clienteService.obtenerCliente(clienteId);
		model.put("cliente", existenteCliente);
		System.out.println("Cliente ->" + existenteCliente.getNombre());
		
		return existenteCliente;
		
	}
	
	@RequestMapping( value = "obtenerClienteFiltrado.htm", method = RequestMethod.GET)
	public String  obtenerClienteFiltrado(Model model,@RequestParam("clienteId") Integer clienteId){
		System.out.println("Entro obtenerClienteFiltrado con: " + clienteId);
		Cliente existenteCliente = clienteService.obtenerCliente(clienteId);
		System.out.println("Cliente ->" + existenteCliente.getNombre());
		List<Cliente> lstClientes = new ArrayList<Cliente>();
		lstClientes.add(existenteCliente);
		List<TipoDocumentoIdentificacion> lstTipoDocumentoIdentificacions = tipoDocumentoIdentificacionService.consulta();
		model.addAttribute("lstTipoDocumentoIdentificacions", lstTipoDocumentoIdentificacions);
		model.addAttribute("lstClientes", lstClientes);
		model.addAttribute("cliente", new Cliente());
		return "clientes/mantenimientoClientes";
		
	}
	@RequestMapping(value = "/modificarCliente.htm", method = RequestMethod.GET)
	public String modificarCliente(Model model,@RequestParam("clienteId") Integer clienteId){
		System.out.println("Entro a modificarCVliente");
		Cliente existenteCliente = clienteService.obtenerCliente(clienteId);
		model.addAttribute("cliente", existenteCliente);
		return "clientes/modificarCliente";
	}
	
	@RequestMapping(value="/consultarClientes.htm",method= RequestMethod.GET)
	public List<Cliente> consultarClientes(Model model){
		List<Cliente> lstClientes = clienteService.consulta();
		model.addAttribute("lstClientes", lstClientes);
		return lstClientes;
	}
	
	@RequestMapping(value="/crearCliente.htm",method= RequestMethod.GET)
	public List<Cliente> crearCliente( Model model){
		System.out.println("Entrro a crer Clientes");
		List<Cliente> lstClientes = clienteService.consulta();
		model.addAttribute("lstClientes", lstClientes);
		return lstClientes;
	}
	
	@RequestMapping(value="/agregarCliente.htm",method= RequestMethod.GET)
	public String agregarCliente( Model model){
		System.out.println("Entrro a agregar Clientes");
		
		List<TipoDocumentoIdentificacion> lstTipoDocumentoIdentificacions = tipoDocumentoIdentificacionService.consulta();
		model.addAttribute("lstTipoDocumentoIdentificacions", lstTipoDocumentoIdentificacions);
		model.addAttribute("cliente", new Cliente());
		return "clientes/nuevoCliente";
	}
	
	@RequestMapping(value="/nuevoCliente.htm",method= RequestMethod.POST)
	public String nuevoCliente( @ModelAttribute("cliente")Cliente cliente){
		clienteService.insert(cliente);
		return "redirect:/mantenimientoClientes.htm";
	}
	
	@RequestMapping(value="/grabarCliente.htm",method= RequestMethod.POST)
	public String grabarCliente( @ModelAttribute("cliente")Cliente cliente){
		clienteService.update(cliente);
		return "redirect:/mantenimientoClientes.htm";
	}
	
	@RequestMapping(value="/eliminarCliente.htm",method= RequestMethod.GET)
	public String eliminarCliente( @RequestParam("clienteEliminarId") Integer clienteEliminarId ){
		
		clienteService.delete(clienteService.obtenerCliente(clienteEliminarId));
		return "redirect:/mantenimientoClientes.htm";
	}
}



