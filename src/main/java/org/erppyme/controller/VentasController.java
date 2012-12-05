package org.erppyme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class VentasController {

	@RequestMapping(value="/mantenimientoVentas.htm", method=RequestMethod.GET )
	public String mantenimientoVentas(Model model)
	{
		return "Ventas/mantenimientoVentas";
	}
	
	
}
