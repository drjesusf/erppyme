package org.erppyme.controller;

import org.erppyme.model.TipoDocumentoIdentificacion;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class VentasController {

	@RequestMapping(value="/mantenimientoVentas.htm", method=RequestMethod.GET )
	public String mantenimientoVentas(Model model)
	{
//		model.addAttribute("cliente", new Cliente());
//		model.addAttribute("venta", new Venta());
		return "ventas/mantenimientoVentas";
	}
	

	@RequestMapping(value="/nuevaGuiaRemision.htm", method=RequestMethod.GET )
	public String nuevaGuiaRemision(Model model)
	{
//		model.addAttribute("cliente", new Cliente());
//		model.addAttribute("venta", new Venta());
		model.addAttribute("tipoDocumentoIdentificacion", new TipoDocumentoIdentificacion());
		return "ventas/mantenimientoVentas";
	}
	
	@RequestMapping(value="/guardarNuevaGuiaRemision.htm", method=RequestMethod.GET )
	public String guardarGuiaRemision(Model model)
	{
//		model.addAttribute("cliente", new Cliente());
//		model.addAttribute("venta", new Venta());
		return "ventas/mantenimientoVentas";
	}
	
}
