package org.erppyme.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.erppyme.repository.UsuarioRepository;
import org.erppyme.security.Rol;
import org.erppyme.security.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class CustomUserDetailsService implements UserDetailsService {
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	public CustomUserDetailsService(){}
	
	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		
		Usuario usuarioExistente = usuarioRepository.obtenerUsuarioPorUsername(username);
		List<Rol> listRols = new ArrayList<Rol>(usuarioExistente.getRoles());
		User user = new User(usuarioExistente.getUsuario(),usuarioExistente.getPassword(),
								true,true,true,true,getAuthorities(listRols));
//		User user  =  new User("dcubas", "1234", true, true, true, true, new List<>)
		return user;
	}
	
	public Collection<? extends GrantedAuthority> getAuthorities(List<Rol> roles) {
		List<String> lstRoles = new ArrayList<String>();
		for (Rol rol : roles) {
			lstRoles.add(rol.getDescripcion());
		}
		List<GrantedAuthority> authList = getGrantedAuthorities(lstRoles);
		return authList;
		
	}
	
	public static List<GrantedAuthority> getGrantedAuthorities(List<String> roles) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (String role : roles) {
			authorities.add(new SimpleGrantedAuthority(role));
		}
		return authorities;
	}
	
	public List<String> getRoles(Integer role) {
		List<String> roles = new ArrayList<String>();

		if (role.intValue() == 1) {
			roles.add("ROLE_USER");
			roles.add("ROLE_ADMIN");

		} else if (role.intValue() == 2) {
			roles.add("ROLE_USER");
		}

		return roles;
	}
}
