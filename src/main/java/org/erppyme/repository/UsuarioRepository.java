package org.erppyme.repository;

import java.util.List;

import org.erppyme.security.Usuario;

public interface UsuarioRepository {
	public void insert(Usuario usuario);
	public void update(Usuario usuario);
	public void delete(Usuario usuario);
	public List consulta();
	public Usuario obtenerUsuarioPorUsername(String usuario);
	public Usuario validarUsuario(Usuario usuario);
	public List obtenerUsuarios();
	public List filtrarUsuarios(String identificador, String cadena);
	public Usuario obtenerUsuario(Integer codUsuario);
	
}
