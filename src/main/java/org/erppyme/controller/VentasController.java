package org.erppyme.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.erppyme.model.Cliente;
import org.erppyme.model.Producto;
import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.model.Venta;
import org.erppyme.modelview.GuiaRemision;
import org.erppyme.service.ClienteService;
import org.erppyme.service.ProductoService;
import org.erppyme.service.TipoDocumentoIdentificacionService;
import org.erppyme.service.TipoDocumentoVentaService;
import org.erppyme.service.VentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
@RequestMapping("ventas/")
//@SessionAttributes("lstTipoDocumentoIdentificacion")
public class VentasController {
	@Autowired
	private TipoDocumentoIdentificacionService tipoDocumentoIdentificacionService;
	
	@Autowired
	private ProductoService productoService;
	
	@Autowired
	private VentaService ventaService;
	
	@Autowired
	private ClienteService clienteService;
	
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
	

	@RequestMapping(value="/guardarNuevaGuiaRemision.htm", method=RequestMethod.POST )
	public String nuevaGuiaRemision(@RequestParam("cliente.codCliente")int codCliente)
	{
		
		System.out.println("COdCliente: "+ codCliente );
		Cliente cliente = clienteService.obtenerCliente(codCliente);
		BigDecimal montoBruto = new BigDecimal(0);
		BigDecimal montoNeto = new BigDecimal(0);
		BigDecimal descuento = new BigDecimal(0);
		Date fechaVenta = new Date();
		Venta venta = new Venta();
		
		venta.setCliente(cliente);
		venta.setFechaVenta(fechaVenta);
		venta.setMontoBruto(montoBruto);
		venta.setMontoNeto(montoNeto);
		venta.setDescuento(descuento);
		venta.setEstado("ACT");
		//Primero debe guardar la Venta
		//Luego el documento de Venta
		//Finalmente el detalle de la venta
		
		ventaService.insert(venta);
		
		return "redirect:../security/inicio.htm";
	}
	

	
}
