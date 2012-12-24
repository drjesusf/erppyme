package org.erppyme.service;

import java.util.List;

import org.erppyme.model.UnidadMedida;
import org.erppyme.repository.UnidadMedidaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UnidadMedidaServiceImpl implements UnidadMedidaService {

	@Autowired
	private UnidadMedidaRepository unidadMedidaRepository;
	
	@Override
	public UnidadMedida obtenerProducto(Integer codUnidadMedida) {
		return unidadMedidaRepository.obtenerUnidadMedida(codUnidadMedida);
	}

	@Override
	public void insert(UnidadMedida unidadMedida) {
		unidadMedidaRepository.insert(unidadMedida);
	}

	@Override
	public void update(UnidadMedida unidadMedida) {
		unidadMedidaRepository.update(unidadMedida);
	}

	@Override
	public void delete(UnidadMedida unidadMedida) {
		unidadMedidaRepository.delete(unidadMedida);
	}

	@Override
	public List<UnidadMedida> consulta() {
		return unidadMedidaRepository.consulta();
	}

	@Override
	public List<UnidadMedida> filtrarUnidadesMedida(String identificador, String cadena) 
	{
		return unidadMedidaRepository.filtrarUnidadMedida(identificador, cadena);
	}

}
