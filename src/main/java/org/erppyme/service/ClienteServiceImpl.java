package org.erppyme.service;

import java.util.List;

import org.erppyme.model.Cliente;

import org.erppyme.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ClienteServiceImpl implements ClienteService {
	
	private ClienteRepository clienteRepository;
	
	@Autowired
	public ClienteServiceImpl(ClienteRepository clienteRepository){
		this.clienteRepository = clienteRepository;
	}

	public ClienteServiceImpl(){}
	
	public void insert(Cliente cliente) {
		clienteRepository.insert(cliente);

	}

	public void update(Cliente cliente) {
		clienteRepository.update(cliente);

	}


	public void delete(Cliente cliente) {
		clienteRepository.delete(cliente);

	}

	public List consulta() {
		List<Cliente> lstClientes = clienteRepository.consulta();
		return lstClientes;
	}

	public Cliente obtenerCliente(Integer clienteId) {
		Cliente existenteCliente = clienteRepository.obtenerCliente(clienteId);
		return existenteCliente;
	}

	public List filtrarClientes(String identificador, String cadena) {
		return clienteRepository.filtrarClientes(identificador, cadena);
		
	}

	@Override
	public Cliente buscarClientePorIdentificacion(
			Integer nroDocumentoIdentificacion) {
		return clienteRepository.buscarClientePorIdentificacion(nroDocumentoIdentificacion);
	}

}
