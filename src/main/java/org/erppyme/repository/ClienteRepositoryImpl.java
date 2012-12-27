package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Cliente;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ClienteRepositoryImpl implements ClienteRepository {
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	public ClienteRepositoryImpl(SessionFactory sessionFactory){
		hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	public ClienteRepositoryImpl(){}
	
	public void insert(Cliente cliente) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(cliente);
		session.getTransaction().commit();
	}

	public void update(Cliente cliente) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(cliente);
		session.getTransaction().commit();
		
	}

	public void delete(Cliente cliente) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.delete(cliente);
		session.getTransaction().commit();
	}

	public List consulta() {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Cliente> lstClientes = session.createQuery("from Cliente").list();
		session.close();
		return lstClientes;
	}
	@Override
	public Cliente obtenerCliente(Integer codCliente) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Cliente existenteCliente= (Cliente)session.createQuery("from Cliente where codCliente = " + codCliente).uniqueResult();
		
		session.close();
		return existenteCliente;
	}
	
	public List filtrarClientes(String identificador,String cadena) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		//Cliente existenteCliente= (Cliente)session.createQuery("from Cliente where " + identificador + " + like " + codCliente).uniqueResult();
		List lstClientes = session.createCriteria(Cliente.class)
									.add(Restrictions.like(identificador, cadena+"%")).list();
		
		session.close();
		return lstClientes;
	}

}
