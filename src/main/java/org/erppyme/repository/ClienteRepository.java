package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Cliente;

public interface ClienteRepository {
	public void insert();
	public void update();
	public void delete();
	public List consulta();
	public Cliente obtenerCliente(Integer clienteId);
}
