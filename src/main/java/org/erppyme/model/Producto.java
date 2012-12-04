package org.erppyme.model;

import java.math.BigDecimal;

import org.springframework.stereotype.Component;

@Component(value = "producto")
public class Producto {
	
	private int codProducto;
	private String nombre;
	private String descripcion;
	private int codUnidadMedida;
	private String estado;
	private BigDecimal precioReferencial;
	
	public Producto(){}
	
	public Producto(int codProducto, String nombre, String descripcion, int codUnidadMedida,
						String estado, BigDecimal precioReferencial)
	{
		super();
		this.codProducto = codProducto;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.codUnidadMedida = codUnidadMedida;
		this.estado = estado;
		this.precioReferencial = precioReferencial;
	}
	
	public int getCodProducto() {
		return codProducto;
	}

	public void setCodProducto(int codProducto) {
		this.codProducto = codProducto;
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

	public int getCodUnidadMedida() {
		return codUnidadMedida;
	}

	public void setCodUnidadMedida(int codUnidadMedida) {
		this.codUnidadMedida = codUnidadMedida;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public BigDecimal getPrecioReferencial() {
		return precioReferencial;
	}

	public void setPrecioReferencial(BigDecimal precioReferencial) {
		this.precioReferencial = precioReferencial;
	}
}
