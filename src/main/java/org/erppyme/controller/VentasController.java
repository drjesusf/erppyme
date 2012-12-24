package org.erppyme.controller;

import java.util.List;

import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.modelview.GuiaRemision;
import org.erppyme.service.TipoDocumentoIdentificacionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
//@SessionAttributes("lstTipoDocumentoIdentificacion")
public class VentasController {

	@Autowired
	private TipoDocumentoIdentificacionService tipoDocumentoIdentificacionService;
	
	@RequestMapping(value="/mantenimientoVentas.htm", method=RequestMethod.GET )
	public String mantenimientoVentas(Model model)
	{
		List<TipoDocumentoIdentificacion> lstTipoDocumentoIdentificacionService = tipoDocumentoIdentificacionService.consulta();
		model.addAttribute("lstTipoDocumentoIdentificacion", lstTipoDocumentoIdentificacionService);
		model.addAttribute("guiaRemision", new GuiaRemision());
		
		return "ventas/mantenimientoVentas";
	}
	

	@RequestMapping(value="/nuevaGuiaRemision.htm", method=RequestMethod.GET )
	public String nuevaGuiaRemision(Model model)
	{
//		model.addAttribute("cliente", new Cliente());
//		model.addAttribute("venta", new Venta());
		model.addAttribute("tipoDocumentoIdentificacion", new TipoDocumentoIdentificacion());
		model.addAttribute("guiaRemision", new GuiaRemision());
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
