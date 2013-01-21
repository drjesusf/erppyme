package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Venta;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class VentaRepositoryImpl implements VentaRepository {

	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	public VentaRepositoryImpl(SessionFactory sessionFactory){
		hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	public VentaRepositoryImpl()
	{
		
	}
	
	@Override
	public Venta obtenerVenta(Integer codVenta) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(Venta venta) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(venta);
		session.getTransaction().commit();
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
