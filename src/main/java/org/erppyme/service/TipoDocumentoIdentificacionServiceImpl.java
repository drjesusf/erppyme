package org.erppyme.service;

import java.util.List;

import org.erppyme.model.TipoDocumentoIdentificacion;
import org.erppyme.repository.TipoDocumentoIdentificacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipoDocumentoIdentificacionServiceImpl implements
		TipoDocumentoIdentificacionService {
	
	@Autowired
	private TipoDocumentoIdentificacionRepository tipoDocumentoIdentificacionRepository;
	
	public List<TipoDocumentoIdentificacion> consulta() {
		List<TipoDocumentoIdentificacion> lstDocumentoIdentificacions = tipoDocumentoIdentificacionRepository.consulta();
		return lstDocumentoIdentificacions;
	}

}
