package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.TipoDocumentoIdentificacion;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TipoDocumentoIdentificacionRepositoryImpl implements TipoDocumentoIdentificacionRepository {
	
	private HibernateTemplate hibernateTemplate;
	@Autowired
	public TipoDocumentoIdentificacionRepositoryImpl(SessionFactory sessionFactory){
		hibernateTemplate = new HibernateTemplate(sessionFactory);
	} 
	
	public List<TipoDocumentoIdentificacion> consulta(){
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<TipoDocumentoIdentificacion> lstDocumentoIdentificacions = session.createQuery("from TipoDocumentoIdentificacion order by descripcion").list();
		session.close();
		return lstDocumentoIdentificacions;
	}
}
