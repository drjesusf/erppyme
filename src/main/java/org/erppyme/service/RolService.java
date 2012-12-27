package org.erppyme.service;

import java.util.List;

import org.erppyme.security.Rol;

public interface RolService {
	
	public void insert(Rol rol);
	public void update(Rol rol);
	public void delete(Rol rol);
	public Rol obtenerRol(Integer clienteId);
	public List obtenerRoles();
	
}
