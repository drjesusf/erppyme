package org.erppyme.service;

import org.erppyme.repository.TipoDocumentoVentaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class TipoDocumentoVentaServiceImpl implements TipoDocumentoVentaService {

	@Autowired
	private TipoDocumentoVentaRepository tipoDocumentoVentaRepository; 

	public int obtenerCodTipoDocumentoVenta(String nombre) {
		int codTipoDocumentoVenta = 0;
		codTipoDocumentoVenta = tipoDocumentoVentaRepository.obtenerCodTipoDocumentoVenta(nombre);
		
		return codTipoDocumentoVenta;
	}

}
