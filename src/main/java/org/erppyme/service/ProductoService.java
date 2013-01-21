package org.erppyme.service;

import java.util.List;

import org.erppyme.model.Producto;
import org.erppyme.model.Venta;

public interface ProductoService {
	public Producto obtenerProducto(Integer codProducto);
	public void insert(Producto producto);
	public void update(Producto producto);
	public void delete(Producto producto);
	public List consulta();
	public List filtrarProductos(String identificador,String cadena);
	
}
