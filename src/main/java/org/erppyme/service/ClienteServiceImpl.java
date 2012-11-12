package org.erppyme.service;

import java.util.ArrayList;
import java.util.List;

import org.erppyme.model.Cliente;
import org.erppyme.model.TipoCliente;
import org.erppyme.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ClienteServiceImpl implements ClienteService {
	@Autowired
	private ClienteRepository clienteRepository;
	
//	@Autowired
//	public ClienteServiceImpl(ClienteRepository clienteRepository){
//		this.clienteRepository = clienteRepository;
//	}
	@Override
	public void insert() {
		// TODO Auto-generated method stub

	}

	@Override
	public void update() {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub

	}

	public List consulta() {
		List<Cliente> lstClientes = clienteRepository.consulta();
		return lstClientes;
	}

	public Cliente obtenerCliente(Integer clienteId) {
		Cliente existenteCliente = clienteRepository.obtenerCliente(clienteId);
		return existenteCliente;
	}

	

}
