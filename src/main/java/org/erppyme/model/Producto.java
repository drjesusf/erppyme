package org.erppyme.model;

import java.math.BigDecimal;

import org.springframework.stereotype.Component;

@Component(value = "producto")
public class Producto {
	
	private int codProducto;
	private String nombre;
	private String descripcion;
	private UnidadMedida unidadMedida;
	private String estado;
	private BigDecimal precioReferencial;
	private int stock;
	
	public Producto(){}
	
	public Producto(int codProducto, String nombre, String descripcion, UnidadMedida unidadMedida,
						String estado, BigDecimal precioReferencial, int stock)
	{
		super();
		this.codProducto = codProducto;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.setUnidadMedida(unidadMedida);
		this.estado = estado;
		this.precioReferencial = precioReferencial;
		this.stock = stock;
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

	public UnidadMedida getUnidadMedida() {
		return unidadMedida;
	}

	public void setUnidadMedida(UnidadMedida unidadMedida) {
		this.unidadMedida = unidadMedida;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}
}
