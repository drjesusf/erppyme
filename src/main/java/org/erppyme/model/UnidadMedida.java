package org.erppyme.model;

import org.springframework.stereotype.Component;

@Component(value="unidadMedida")
public class UnidadMedida {

	private int codUnidadMedida;
	private String nombre;
	
	public UnidadMedida(int codUnidadMedida, String nombre)
	{
		this.codUnidadMedida = codUnidadMedida;
		this.nombre = nombre;
	}
	
	public UnidadMedida(){}
	
	public int getCodUnidadMedida() {
		return codUnidadMedida;
	}

	public void setCodUnidadMedida(int codUnidadMedida) {
		this.codUnidadMedida = codUnidadMedida;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}
