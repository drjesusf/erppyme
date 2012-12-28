package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Producto;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ProductoRepositoryImpl implements ProductoRepository {
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	public ProductoRepositoryImpl(SessionFactory sessionFactory){
		hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	public ProductoRepositoryImpl(){}
	
	public void insert(Producto producto) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(producto);
		session.getTransaction().commit();
	}

	public void update(Producto producto) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(producto);
		session.getTransaction().commit();
	}

	public void delete(Producto producto) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.delete(producto);
		session.getTransaction().commit();
	}

	public List consulta() {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Producto> lstProductos = session.createQuery("from Producto").list();
		session.close();
		return lstProductos;
	}

	public Producto obtenerProducto(Integer codProducto) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Producto existenteProducto= (Producto)session.createQuery("from Producto where codProducto = " + codProducto).uniqueResult();
		session.close();
		return existenteProducto;
	}
	
	public List filtrarProductos(String identificador,String cadena) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		//Producto existenteProducto= (Producto)session.createQuery("from Producto where " + identificador + " + like " + ProductoId).uniqueResult();
		List lstProductos = session.createCriteria(Producto.class)
									.add(Restrictions.like(identificador, cadena+"%")).list();
		
		session.close();
		return lstProductos;
	}

}
