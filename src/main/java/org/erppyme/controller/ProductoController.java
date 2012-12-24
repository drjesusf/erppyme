package org.erppyme.controller;

import java.util.List;
import java.util.Map;
import org.erppyme.model.Producto;
import org.erppyme.model.UnidadMedida;
import org.erppyme.service.ProductoService;
import org.erppyme.service.UnidadMedidaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("productos/")
public class ProductoController {

	@Autowired
	private ProductoService productoService;

	@Autowired
	private UnidadMedidaService unidadMedidaService;

	@RequestMapping(value = "/mantenimientoProductos.htm", method = RequestMethod.GET)
	public String mantenimientoClientes(Model model) {
		List<Producto> listaProductos = productoService.consulta();
		List<UnidadMedida> listaUnidadMedida = unidadMedidaService.consulta();
		model.addAttribute("listaProductos", listaProductos);
		model.addAttribute("lstUnidadMedida", listaUnidadMedida);
		model.addAttribute("producto", new Producto());
		return "productos/mantenimientoProductos";
	}
	
	@RequestMapping(value="nuevoProducto.htm",method= RequestMethod.POST)
	public String nuevoProducto( @ModelAttribute("producto")Producto producto){

		productoService.insert(producto);
		return "redirect:../productos/mantenimientoProductos.htm";
	}

	@RequestMapping(value = "obtenerProducto.htm", method = RequestMethod.POST)
	public @ResponseBody
	Producto obtenerProducto(Map<String, Object> model,
			@RequestParam("codProducto") Integer codProducto) {
		System.out.println("Entro obtenerProducto con: " + codProducto);
		Producto producto = productoService.obtenerProducto(codProducto);
		model.put("cliente", producto);
		System.out.println("Producto ->" + producto.getNombre());
		return producto;

	}
	
	@RequestMapping(value="modificarProducto.htm",method= RequestMethod.POST)
	public String grabarProducto( @ModelAttribute("producto")Producto producto){

		productoService.update(producto);
		return "redirect:../productos/mantenimientoProductos.htm";
	}
	
	@RequestMapping(value="eliminarProducto.htm",method= RequestMethod.GET)
	public String eliminarProducto( @ModelAttribute("codProducto")Integer codProducto){

		productoService.delete(productoService.obtenerProducto(codProducto));
		return "redirect:../productos/mantenimientoProductos.htm";
	}
}
