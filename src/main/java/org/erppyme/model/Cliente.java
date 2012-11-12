package org.erppyme.model;

import java.io.Serializable;

import org.springframework.stereotype.Component;;
@Component(value = "cliente")
public class Cliente implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer clienteId;
	
	private String nombre;
	private String apellidos;
	private String direccion;
	private TipoDocumentoIdentificacion  tipoDocumentoIdentificacion;
	private Integer nroDocumentoIdentificacion;
	private Integer telefono;
	private Integer celular;
	private String estado;
	public Cliente(){
		
	}
	
	public Cliente(Integer clienteId, String nombre, String apellidos,
			String direccion,
			TipoDocumentoIdentificacion tipoDocumentoIdentificacion,
			Integer nroDocumentoIdentificacion, Integer telefono,
			Integer celular, String estado) {
		super();
		this.clienteId = clienteId;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.direccion = direccion;
		this.tipoDocumentoIdentificacion = tipoDocumentoIdentificacion;
		this.nroDocumentoIdentificacion = nroDocumentoIdentificacion;
		this.telefono = telefono;
		this.celular = celular;
		this.estado = estado;
	}

	public Integer getClienteId() {
		return clienteId;
	}
	public void setClienteId(Integer clienteId) {
		this.clienteId = clienteId;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public TipoDocumentoIdentificacion getTipoDocumentoIdentificacion() {
		return tipoDocumentoIdentificacion;
	}
	public void setTipoDocumentoIdentificacion(
			TipoDocumentoIdentificacion tipoDocumentoIdentificacion) {
		this.tipoDocumentoIdentificacion = tipoDocumentoIdentificacion;
	}
	public Integer getNroDocumentoIdentificacion() {
		return nroDocumentoIdentificacion;
	}
	public void setNroDocumentoIdentificacion(Integer nroDocumentoIdentificacion) {
		this.nroDocumentoIdentificacion = nroDocumentoIdentificacion;
	}
	public Integer getTelefono() {
		return telefono;
	}
	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}
	public Integer getCelular() {
		return celular;
	}
	public void setCelular(Integer celular) {
		this.celular = celular;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
	
}
