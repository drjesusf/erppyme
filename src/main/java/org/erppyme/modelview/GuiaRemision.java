package org.erppyme.modelview;

import java.util.List;

import org.erppyme.model.DetalleDocumentoVentaProducto;
import org.erppyme.model.DocumentoVenta;
import org.erppyme.model.Producto;
import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.model.Venta;
import org.springframework.stereotype.Component;

@Component(value="guiaRemision")
public class GuiaRemision {
	

	private Venta venta;
	private DocumentoVenta documentoVenta;
	private DetalleDocumentoVentaProducto detalleDocumentoVentaProducto;
	private List <TipoDocumentoIdentificacion> tipoDocumentoIdentificacion;
	private List <Producto> productos;
	
	public GuiaRemision(Venta venta, DocumentoVenta documentoVenta,
						DetalleDocumentoVentaProducto detalleDocumentoVentaProducto)
	{
		this.venta = venta;
		this.documentoVenta = documentoVenta;
		this.detalleDocumentoVentaProducto = detalleDocumentoVentaProducto;
	}
	
	public Venta getVenta() {
		return venta;
	}

	public void setVenta(Venta venta) {
		this.venta = venta;
	}

	public DocumentoVenta getDocumentoVenta() {
		return documentoVenta;
	}

	public void setDocumentoVenta(DocumentoVenta documentoVenta) {
		this.documentoVenta = documentoVenta;
	}

	public DetalleDocumentoVentaProducto getDetalleDocumentoVentaProducto() {
		return detalleDocumentoVentaProducto;
	}

	public void setDetalleDocumentoVentaProducto(
			DetalleDocumentoVentaProducto detalleDocumentoVentaProducto) {
		this.detalleDocumentoVentaProducto = detalleDocumentoVentaProducto;
	}

	public List <TipoDocumentoIdentificacion> getTipoDocumentoIdentificacion() {
		return tipoDocumentoIdentificacion;
	}

	public void setTipoDocumentoIdentificacion(
			List <TipoDocumentoIdentificacion> tipoDocumentoIdentificacion) {
		this.tipoDocumentoIdentificacion = tipoDocumentoIdentificacion;
	}

	public List <Producto> getProductos() {
		return productos;
	}

	public void setProductos(List <Producto> productos) {
		this.productos = productos;
	}
	
}
