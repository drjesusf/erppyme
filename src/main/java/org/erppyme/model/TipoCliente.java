package org.erppyme.model;

import org.springframework.stereotype.Component;

@Component(value="tipoCliente")
public class TipoCliente{
	
	private Integer codTipoCliente;
	private String nombre;
	
	public TipoCliente(){}

	public TipoCliente(Integer codTipoCliente, String nombre) {
		super();
		this.codTipoCliente = codTipoCliente;
		this.nombre = nombre;
	}

	public Integer getcodTipoCliente() {
		return codTipoCliente;
	}

	public void setcodTipoCliente(Integer codTipoCliente) {
		this.codTipoCliente = codTipoCliente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
