package org.erppyme.controller;
 
import java.util.List;

import org.erppyme.model.Cliente;
import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.service.ClienteService;
import org.erppyme.service.TipoDocumentoIdentificacionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		return "clientes/mantenimientoClientes";
	}
	
	@RequestMapping(value="/filtroClientes.htm",method= RequestMethod.GET)
	public @ResponseBody List<Cliente> filtroClientes(@RequestParam("term") String buscarCliente){
		System.out.println("Entro Filtro Clientes con: " + buscarCliente);
		
		List<Cliente> lstClientes = clienteService.consulta();
		
		return lstClientes;
	}
	
	@RequestMapping( value = "obtenerCliente.htm", method = RequestMethod.POST)
	public @ResponseBody Cliente obtenerCliente(Integer clienteId){
		System.out.println("Entro obtenerCliente con: " + clienteId);
		Cliente existenteCliente = clienteService.obtenerCliente(clienteId);
		
		return existenteCliente;
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
	
}