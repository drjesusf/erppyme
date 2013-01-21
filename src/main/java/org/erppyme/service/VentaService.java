package org.erppyme.service;

import java.util.List;

import org.erppyme.model.Venta;

public interface VentaService {

	public Venta obtenerVenta(Integer codVenta);
	public void insert(Venta venta);
	public void update(Venta venta);
	public void delete(Venta venta);
	public List<Venta> consulta();
	public List<Venta> filtrarVentas(String identificador,String cadena);
}
