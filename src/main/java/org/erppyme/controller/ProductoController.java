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
public class ProductoController {
	

	@RequestMapping(value="/mantenimientoProductos.htm",method= RequestMethod.GET)
	public String mantenimientoClientes(Model model){		
		return "productos/mantenimientoProductos";
	}
}



