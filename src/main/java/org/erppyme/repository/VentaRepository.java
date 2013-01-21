package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Venta;

public interface VentaRepository {
	public Venta obtenerVenta(Integer codVenta);
	public void insert(Venta venta);
	public void update(Venta venta);
	public void delete(Venta venta);
	public List<Venta> consulta();
	public List<Venta> filtrarVentas(String identificador,String cadena);
}
