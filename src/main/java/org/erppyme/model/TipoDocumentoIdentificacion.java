package org.erppyme.model;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component(value="tipoDocumentoIdentificacion")
public class TipoDocumentoIdentificacion implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer codTipoDocumentoIdentificacion;
	private String descripcion;
	
	public TipoDocumentoIdentificacion(){}
	
	public TipoDocumentoIdentificacion(Integer codTipoDocumentoIdentificacion,
			String descripcion) {
		super();
		this.codTipoDocumentoIdentificacion = codTipoDocumentoIdentificacion;
		this.descripcion = descripcion;
	}
	public Integer getcodTipoDocumentoIdentificacion() {
		return codTipoDocumentoIdentificacion;
	}
	public void setcodTipoDocumentoIdentificacion(Integer codTipoDocumentoIdentificacion) {
		this.codTipoDocumentoIdentificacion = codTipoDocumentoIdentificacion;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
}
