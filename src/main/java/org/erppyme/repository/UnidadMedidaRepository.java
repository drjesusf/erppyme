package org.erppyme.repository;

import java.util.List;
import org.erppyme.model.UnidadMedida;

public interface UnidadMedidaRepository {
	
	public void insert(UnidadMedida unidadMedida);
	public void update(UnidadMedida unidadMedida);
	public void delete(UnidadMedida unidadMedida);
	public List<UnidadMedida> consulta();
	public UnidadMedida obtenerUnidadMedida(Integer codUnidadMedida);
	public List<UnidadMedida> filtrarUnidadMedida(String identificador,String cadena);
	
}
