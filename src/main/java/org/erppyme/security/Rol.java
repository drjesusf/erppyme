package org.erppyme.security;

public class Rol {
	private int codRol;
	private String descripcion;
	private String estado;
	
	public Rol() {	
		super();
	}
	
	public Rol(int codRol, String descripcion) {
		super();
		this.codRol = codRol;
		this.descripcion = descripcion;
	}
	public int getCodRol() {
		return codRol;
	}
	public void setCodRol(int codRol) {
		this.codRol = codRol;
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
