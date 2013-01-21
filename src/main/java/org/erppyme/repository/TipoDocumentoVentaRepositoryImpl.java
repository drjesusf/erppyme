package org.erppyme.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class TipoDocumentoVentaRepositoryImpl implements
		TipoDocumentoVentaRepository {

	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	public TipoDocumentoVentaRepositoryImpl(SessionFactory sessionFactory){
		hibernateTemplate = new HibernateTemplate(sessionFactory);
	} 

	public TipoDocumentoVentaRepositoryImpl(){}
	
	public int obtenerCodTipoDocumentoVenta(String nombre) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		int codTipoDocumentoVenta = Integer.parseInt(session.createQuery("from TipoDocumentoVenta where nombre = "+nombre).uniqueResult().toString());
		session.close();
		return codTipoDocumentoVenta ;
	}

}
