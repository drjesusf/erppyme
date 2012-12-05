package org.erppyme.service;

import java.util.List;
import org.erppyme.model.Producto;
import org.erppyme.repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductoServiceImpl implements ProductoService {

	@Autowired
	private ProductoRepository productoRepository;

	public Producto obtenerProducto(Integer codProducto) {
		Producto producto = productoRepository.obtenerProducto(codProducto);
		return producto;
	}


	public void insert(Producto producto) {
		productoRepository.insert(producto);
	}


	public void update(Producto producto) {
		productoRepository.update(producto);
	}


	public void delete(Producto producto) {
		productoRepository.delete(producto);
	}


	public List consulta() {
		List<Producto> listaProductos= productoRepository.consulta();
		return listaProductos;
	}


	public List filtrarProductos(String identificador, String cadena) {
		// TODO Auto-generated method stub
		return null;
	}
	


}
