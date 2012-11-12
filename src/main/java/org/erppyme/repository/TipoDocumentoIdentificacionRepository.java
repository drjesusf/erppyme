package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.TipoDocumentoIdentificacion;

public interface TipoDocumentoIdentificacionRepository {

	public abstract List<TipoDocumentoIdentificacion> consulta();

}