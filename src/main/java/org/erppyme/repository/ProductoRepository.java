package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Producto;

public interface ProductoRepository {
	public void insert(Producto producto);
	public void update(Producto producto);
	public void delete(Producto producto);
	public List consulta();
	public Producto obtenerProducto(Integer codProducto);
	public List filtrarProductos(String identificador,String cadena);
	
}
