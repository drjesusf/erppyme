package org.erppyme.modelview;

import java.util.List;

import org.erppyme.model.Cliente;
import org.erppyme.model.DetalleDocumentoVentaProducto;
import org.erppyme.model.DocumentoVenta;
import org.erppyme.model.Producto;
import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.model.Venta;
import org.springframework.stereotype.Component;

@Component(value="guiaRemision")
public class GuiaRemision {

	private Cliente cliente;
	private Venta venta;
	private DocumentoVenta documentoVenta;
	private List <DetalleDocumentoVentaProducto> detallesDocumentoVentaProducto;
	private TipoDocumentoIdentificacion tipoDocumentoIdentificacion;
	private Producto producto;
	
	public GuiaRemision( Venta venta, DocumentoVenta documentoVenta,
						 List <DetalleDocumentoVentaProducto> detallesDocumentoVentaProducto,
						 TipoDocumentoIdentificacion tipoDocumentoIdentificacion,
						 Producto producto)
	{
		this.venta = venta;
		this.documentoVenta = documentoVenta;
		this.detallesDocumentoVentaProducto = detallesDocumentoVentaProducto;
		this.tipoDocumentoIdentificacion = tipoDocumentoIdentificacion;
		this.producto = producto;
	}
	
	public GuiaRemision(){}
	
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

	public List<DetalleDocumentoVentaProducto> getDetallesDocumentoVentaProducto() {
		return detallesDocumentoVentaProducto;
	}

	public void setDetallesDocumentoVentaProducto(
			List<DetalleDocumentoVentaProducto> detallesDocumentoVentaProducto) {
		this.detallesDocumentoVentaProducto = detallesDocumentoVentaProducto;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public TipoDocumentoIdentificacion getTipoDocumentoIdentificacion() {
		return tipoDocumentoIdentificacion;
	}

	public void setTipoDocumentoIdentificacion(
			TipoDocumentoIdentificacion tipoDocumentoIdentificacion) {
		this.tipoDocumentoIdentificacion = tipoDocumentoIdentificacion;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}


}
