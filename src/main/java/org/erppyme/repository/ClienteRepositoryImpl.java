package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Cliente;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
	@Override
	public void insert() {
		// TODO Auto-generated method stub

	}

	@Override
	public void update() {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub

	}

	@Override
	public List consulta() {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Cliente> lstClientes = session.createQuery("from Cliente").list();
		session.close();
		return lstClientes;
	}
	@Override
	public Cliente obtenerCliente(Integer clienteId) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Cliente existenteCliente= (Cliente)session.createQuery("from Cliente where clienteId = " + clienteId).uniqueResult();
		
		session.close();
		return existenteCliente;
	}

}
