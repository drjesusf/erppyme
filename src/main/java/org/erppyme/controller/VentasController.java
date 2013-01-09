package org.erppyme.controller;

import java.util.List;

import org.erppyme.model.DetalleDocumentoVentaProducto;
import org.erppyme.model.Producto;
import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.modelview.GuiaRemision;
import org.erppyme.service.ProductoService;
import org.erppyme.service.TipoDocumentoIdentificacionService;
import org.erppyme.service.TipoDocumentoVentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@RequestMapping("ventas/")
//@SessionAttributes("lstTipoDocumentoIdentificacion")
public class VentasController {
	@Autowired
	private TipoDocumentoIdentificacionService tipoDocumentoIdentificacionService;
	
	@Autowired
	private ProductoService productoService;
	
	@Autowired
	private TipoDocumentoVentaService tipoDocumentoVentaService;
	
	@RequestMapping(value="mantenimientoVentas.htm", method=RequestMethod.GET )
	public String mantenimientoVentas(Model model)
	{
		List<Producto> lstProductos = productoService.consulta();
		List<TipoDocumentoIdentificacion> lstTipoDocumentoIdentificacionService = tipoDocumentoIdentificacionService.consulta();
		model.addAttribute("lstTipoDocumentoIdentificacion", lstTipoDocumentoIdentificacionService);
		model.addAttribute("lstProductos", lstProductos);
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
