package org.erppyme.model;

public class TipoCliente {
	private Integer tipoClienteId;
	private String nombre;
	
	public TipoCliente(){}

	public TipoCliente(Integer tipoClienteId, String nombre) {
		super();
		this.tipoClienteId = tipoClienteId;
		this.nombre = nombre;
	}

	public Integer getTipoClienteId() {
		return tipoClienteId;
	}

	public void setTipoClienteId(Integer tipoClienteId) {
		this.tipoClienteId = tipoClienteId;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
