package org.erppyme.service;

import java.util.List;
import org.erppyme.model.UnidadMedida;

public interface UnidadMedidaService {
	
	public UnidadMedida obtenerProducto(Integer codUnidadMedida);
	public void insert(UnidadMedida unidadMedida);
	public void update(UnidadMedida unidadMedida);
	public void delete(UnidadMedida unidadMedida);
	public List<UnidadMedida> consulta();
	public List<UnidadMedida> filtrarUnidadesMedida(String identificador,String cadena);

}
