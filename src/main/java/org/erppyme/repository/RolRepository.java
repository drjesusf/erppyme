package org.erppyme.repository;

import java.util.List;

import org.erppyme.security.Rol;

public interface RolRepository {
	public void insert(Rol rol);
	public void update(Rol rol);
	public void delete(Rol rol);
	public List obtenerRoles();
	public Rol obtenerRol(Integer codRol);
	
}
