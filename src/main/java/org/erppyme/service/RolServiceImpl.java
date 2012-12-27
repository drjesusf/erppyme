package org.erppyme.service;

import java.util.List;

import org.erppyme.repository.RolRepository;
import org.erppyme.security.Rol;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RolServiceImpl implements RolService {
	private RolRepository rolRepository;
	
	@Autowired
	public RolServiceImpl(RolRepository  rolRepository){
		this.rolRepository = rolRepository;
	}
	public RolServiceImpl(){}
	@Override
	public void insert(Rol rol) {
		rolRepository.insert(rol);

	}

	@Override
	public void update(Rol rol) {
		rolRepository.update(rol);

	}

	@Override
	public void delete(Rol rol) {
		rolRepository.delete(rol);

	}

	@Override
	public Rol obtenerRol(Integer codRol) {
		return rolRepository.obtenerRol(codRol);
	}

	@Override
	public List obtenerRoles() {
		
		return rolRepository.obtenerRoles();
	}

}
