package org.erppyme.modelview;

import org.erppyme.model.DetalleDocumentoVentaProducto;
import org.erppyme.model.DocumentoVenta;
import org.erppyme.model.Venta;
import org.springframework.stereotype.Component;

//@Component(value="factura")
public class Factura {
	
	private Venta venta;
	private DocumentoVenta documentoVenta;
	private DetalleDocumentoVentaProducto detalleDocumentoVentaProducto;
	
	public Factura(Venta venta, DocumentoVenta documentoVenta,
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
	
}
