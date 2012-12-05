package org.erppyme.model;

import org.springframework.stereotype.Component;;

@Component(value = "tipoDocumentoVenta")
public class TipoDocumentoVenta{

	private Integer codTipoDocumentoVenta;
	private String nombre;
	private String descripcion;
	private String estado;
	
	public TipoDocumentoVenta(){}
	
	public TipoDocumentoVenta(	Integer codTipoDocumentoVenta, String nombre,
								String descripcion,	String estado) {
		super();
		this.codTipoDocumentoVenta=codTipoDocumentoVenta;
		this.nombre=nombre;
		this.descripcion=descripcion;
		this.estado=estado;
	}

	public Integer getCodTipoDocumentoVenta() {
		return codTipoDocumentoVenta;
	}

	public void setCodTipoDocumentoVenta(Integer codTipoDocumentoVenta) {
		this.codTipoDocumentoVenta = codTipoDocumentoVenta;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
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
