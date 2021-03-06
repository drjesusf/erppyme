package org.erppyme.repository;

import java.util.List;

import org.erppyme.model.Cliente;
import org.erppyme.security.Usuario;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UsuarioRepositoryImpl implements UsuarioRepository {
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	public UsuarioRepositoryImpl(SessionFactory sessionFactory){
		hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	public UsuarioRepositoryImpl(){}
	
	public void insert(Usuario usuario){
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(usuario);
		session.getTransaction().commit();
	}
	public void update(Usuario usuario){
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(usuario);
		session.getTransaction().commit();
	}
	public void delete(Usuario usuario){
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.delete(usuario);
		session.getTransaction().commit();
	}
	public Usuario validarUsuario(Usuario usuario){
		Usuario usuarioValidar = null;
		boolean validarUsuario = false;
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		usuarioValidar = (Usuario)session.createQuery("from Usuario where usuario= :usuario")
									.setParameter("usuario", usuario)
									.uniqueResult();
		session.close();
		if(usuarioValidar!=null){
			if(usuarioValidar.getPassword() == usuario.getPassword()) validarUsuario=true;
		}
		
		if(validarUsuario) return usuarioValidar;
		else return null;
	}

	@Override
	public List consulta() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usuario obtenerUsuarioPorUsername(String usuario) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Usuario usuarioExistente = (Usuario)session.createQuery("from Usuario where usuario = :usuario")
				.setParameter("usuario", usuario)
				.uniqueResult();
		session.close();
		return usuarioExistente;
	}
	
	public List obtenerUsuarios(){
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List lstUsuarios = session.createQuery("from Usuario ").list();
		session.close();
		return lstUsuarios;
	}

	@Override
	public List filtrarUsuarios(String identificador, String cadena) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List lstUsuarios = session.createCriteria(Usuario.class)
				.add(Restrictions.like(identificador, cadena+"%")).list();
		session.close();
		return lstUsuarios;
	}

	@Override
	public Usuario obtenerUsuario(Integer codUsuario) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Usuario usuario = (Usuario)session.get(Usuario.class, codUsuario);
		session.close();
		return usuario;
	}
	
	

}
