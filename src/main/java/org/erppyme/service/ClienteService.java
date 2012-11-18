package org.erppyme.service;

import java.util.List;

import org.erppyme.model.Cliente;

public interface ClienteService {
	public Cliente obtenerCliente(Integer clienteId);
	public void insert(Cliente cliente);
	public void update(Cliente cliente);
	public void delete(Cliente cliente);
	public List consulta();
	public List filtrarClientes(String identificador,String cadena);
}
