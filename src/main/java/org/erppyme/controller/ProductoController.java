package org.erppyme.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ProductoController {
	

	@RequestMapping(value="/mantenimientoProductos.htm",method= RequestMethod.GET)
	public String mantenimientoClientes(Model model){		
		return "productos/mantenimientoProductos1";
	}
}



