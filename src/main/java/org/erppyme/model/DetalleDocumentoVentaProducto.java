package org.erppyme.model;

import java.math.BigDecimal;
import org.springframework.stereotype.Component;;

@Component(value = "detalleDocumentoVentaProducto")
public class DetalleDocumentoVentaProducto{

	private Integer codDetallesDocumentoVentaProducto;
	private Producto producto;
	private DocumentoVenta documentoVenta;
	private int cantidadUnidadesProducto;
	private BigDecimal precioProducto;
	private String  descripcion;
	private String estado;
	
	public DetalleDocumentoVentaProducto(){}
	
	public DetalleDocumentoVentaProducto(Integer codDetallesDocumentoVentaProducto, Producto producto,
										DocumentoVenta documentoVenta, int cantidadUnidadesProducto, 
										BigDecimal precioProducto, String  descripcion, String estado) {
		super();
		this.codDetallesDocumentoVentaProducto = codDetallesDocumentoVentaProducto;
		this.producto = producto;
		this.documentoVenta = documentoVenta;
		this.cantidadUnidadesProducto = cantidadUnidadesProducto;
		this.precioProducto = precioProducto;
		this.descripcion = descripcion;
		this.estado = estado;
	}
	
	public Integer getCodDetallesDocumentoVentaProducto() {
		return codDetallesDocumentoVentaProducto;
	}

	public void setCodDetallesDocumentoVentaProducto(
			Integer codDetallesDocumentoVentaProducto) {
		this.codDetallesDocumentoVentaProducto = codDetallesDocumentoVentaProducto;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public DocumentoVenta getDocumentoVenta() {
		return documentoVenta;
	}

	public void setDocumentoVenta(DocumentoVenta documentoVenta) {
		this.documentoVenta = documentoVenta;
	}

	public int getCantidadUnidadesProducto() {
		return cantidadUnidadesProducto;
	}

	public void setCantidadUnidadesProducto(int cantidadUnidadesProducto) {
		this.cantidadUnidadesProducto = cantidadUnidadesProducto;
	}

	public BigDecimal getPrecioProducto() {
		return precioProducto;
	}

	public void setPrecioProducto(BigDecimal precioProducto) {
		this.precioProducto = precioProducto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	
}
