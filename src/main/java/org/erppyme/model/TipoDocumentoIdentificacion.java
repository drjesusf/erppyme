package org.erppyme.model;

import java.io.Serializable;

public class TipoDocumentoIdentificacion implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer tipoDocumentoIdentificacionId;
	private String descripcion;
	
	public TipoDocumentoIdentificacion(){}
	public TipoDocumentoIdentificacion(Integer tipoDocumentoIdentificacionId,
			String descripcion) {
		super();
		this.tipoDocumentoIdentificacionId = tipoDocumentoIdentificacionId;
		this.descripcion = descripcion;
	}
	public Integer getTipoDocumentoIdentificacionId() {
		return tipoDocumentoIdentificacionId;
	}
	public void setTipoDocumentoIdentificacionId(Integer tipoDocumentoIdentificacionId) {
		this.tipoDocumentoIdentificacionId = tipoDocumentoIdentificacionId;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
}
