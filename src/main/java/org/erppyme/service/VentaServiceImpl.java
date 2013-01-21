package org.erppyme.service;

import java.util.List;

import org.erppyme.model.Venta;
import org.erppyme.repository.VentaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VentaServiceImpl implements VentaService {

	@Autowired
	private VentaRepository ventaRepository;
	
	@Override
	public Venta obtenerVenta(Integer codVenta) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(Venta venta) {
		ventaRepository.insert(venta);

	}

	@Override
	public void update(Venta venta) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Venta venta) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Venta> consulta() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Venta> filtrarVentas(String identificador, String cadena) {
		// TODO Auto-generated method stub
		return null;
	}

}
