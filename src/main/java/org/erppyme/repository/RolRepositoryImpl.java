package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Cliente;
import org.erppyme.security.Rol;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RolRepositoryImpl implements RolRepository {
	
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	public RolRepositoryImpl(SessionFactory sessionFactory){
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	public RolRepositoryImpl(){}
	@Override
	public void insert(Rol rol) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(rol);
		session.getTransaction().commit();

	}

	@Override
	public void update(Rol rol) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(rol);
		session.getTransaction().commit();

	}

	@Override
	public void delete(Rol rol) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.delete(rol);
		session.getTransaction().commit();

	}

	@Override
	public List obtenerRoles() {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List lstRoles= session.createQuery("from Rol where estado = 'ACT'").list();
		
		session.close();
		return lstRoles;
	}

	@Override
	public Rol obtenerRol(Integer codRol) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Rol existenteRol= (Rol)session.createQuery("from Rol where codRol = :codRol")
							.setParameter("codRol", codRol).uniqueResult();
		
		session.close();
		return existenteRol;
	}

}
