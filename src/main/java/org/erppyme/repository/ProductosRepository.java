package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Cliente;

public interface ProductosRepository {
	public void insert(Cliente cliente);
	public void update(Cliente cliente);
	public void delete(Cliente cliente);
	public List consulta();
	public Cliente obtenerCliente(Integer clienteId);
	public List filtrarClientes(String identificador,String cadena);
	
}
