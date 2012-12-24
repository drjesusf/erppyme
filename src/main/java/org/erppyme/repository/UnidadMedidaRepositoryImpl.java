package org.erppyme.repository;

import java.util.List;
import org.erppyme.model.UnidadMedida;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UnidadMedidaRepositoryImpl implements UnidadMedidaRepository {

	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	public UnidadMedidaRepositoryImpl(SessionFactory sessionFactory)
	{
		hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	@Override
	public void insert(UnidadMedida unidadMedida) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(unidadMedida);
		session.getTransaction().commit();
	}

	@Override
	public void update(UnidadMedida unidadMedida) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(unidadMedida);
		session.getTransaction().commit();
	}

	@Override
	public void delete(UnidadMedida unidadMedida) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.delete(unidadMedida);
		session.getTransaction().commit();
	}

	@Override
	public List<UnidadMedida> consulta() {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<UnidadMedida> lstUnidadMedida = session.createQuery("from UnidadMedida").list();
		session.close();
		return lstUnidadMedida;
	}

	@Override
	public UnidadMedida obtenerUnidadMedida(Integer codUnidadMedida) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		UnidadMedida existenteUnidadMedida = (UnidadMedida)session.createQuery("from UnidadesMedida where codUnidadMedida = " + codUnidadMedida).uniqueResult();
		session.close();
		return existenteUnidadMedida;
	}

	@Override
	public List<UnidadMedida> filtrarUnidadMedida(String identificador, String cadena) 
	{
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		//Producto existenteProducto= (Producto)session.createQuery("from Producto where " + identificador + " + like " + ProductoId).uniqueResult();
		List<UnidadMedida> lstUnidadMedida = session.createCriteria(UnidadMedida.class)
									.add(Restrictions.like(identificador, cadena+"%")).list();
		
		session.close();
		return lstUnidadMedida;
	}

}
