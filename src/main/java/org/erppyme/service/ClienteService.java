package org.erppyme.service;

import java.util.List;

import org.erppyme.model.Cliente;

public interface ClienteService {
	public Cliente obtenerCliente(Integer clienteId);
	public void insert();
	public void update();
	public void delete();
	public List consulta();
}
