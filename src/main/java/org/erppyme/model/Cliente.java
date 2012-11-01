package org.erppyme.model;

public class Cliente {
	private Integer clienteId;
	private TipoCliente tipoCliente;
	private Integer numero;
	private String nombre;
	
	public Cliente(){
		
	}
	public Cliente(TipoCliente tipoCliente, Integer numero, String nombre) {
		super();
		this.tipoCliente = tipoCliente;
		this.numero = numero;
		this.nombre = nombre;
	}
	public Integer getClienteId() {
		return clienteId;
	}
	public void setClienteId(Integer clienteId) {
		this.clienteId = clienteId;
	}
	public TipoCliente getTipoCliente() {
		return tipoCliente;
	}
	public void setTipoCliente(TipoCliente tipoCliente) {
		this.tipoCliente = tipoCliente;
	}
	public Integer getNumero() {
		return numero;
	}
	public void setNumero(Integer numero) {
		this.numero = numero;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
