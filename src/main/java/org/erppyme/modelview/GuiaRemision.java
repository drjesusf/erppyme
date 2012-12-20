package org.erppyme.modelview;

import java.util.List;

import org.erppyme.model.DetalleDocumentoVentaProducto;
import org.erppyme.model.DocumentoVenta;
import org.erppyme.model.Producto;
import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.model.Venta;

//@Component(value="guiaRemision")
public class GuiaRemision {
	

	private Venta venta;
	private DocumentoVenta documentoVenta;
	private List <DetalleDocumentoVentaProducto> detallesDocumentoVentaProducto;
	private List <TipoDocumentoIdentificacion> tiposDocumentoIdentificacion;
	private List <Producto> productos;
	
	public GuiaRemision( Venta venta, DocumentoVenta documentoVenta,
						 List <DetalleDocumentoVentaProducto> detallesDocumentoVentaProducto,
						 List <TipoDocumentoIdentificacion> tiposDocumentoIdentificacion,
						 List <Producto> productos)
	{
		this.venta = venta;
		this.documentoVenta = documentoVenta;
		this.detallesDocumentoVentaProducto = detallesDocumentoVentaProducto;
		this.tiposDocumentoIdentificacion = tiposDocumentoIdentificacion;
		this.productos = productos;
	}
	
}
