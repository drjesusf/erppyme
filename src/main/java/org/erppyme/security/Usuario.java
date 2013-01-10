package org.erppyme.security;

import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Usuario {
	private int codUsuario;
	private String nombres;
	private String apellidos;
	private String usuario;
	private String password;
	private String password_confirmacion;
	private String estado;
	private Date fechaCreacion;
	private Set<Rol> roles;  
	
	public Usuario() {
		super();
		roles = new HashSet<Rol>(0);
	}
	public Usuario(int codUsuario, String nombres, String apellidos,
			String usuario, String password, String estado, Date fechaCreacion) {
		super();
		this.codUsuario = codUsuario;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.usuario = usuario;
		this.password = password;
		this.estado = estado;
		this.fechaCreacion = fechaCreacion;
		roles = new HashSet<Rol>(0);
	}
	public int getCodUsuario() {
		return codUsuario;
	}
	public void setCodUsuario(int codUsuario) {
		this.codUsuario = codUsuario;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public Set<Rol> getRoles() {
		return roles;
	}
	public void setRoles(Set<Rol> roles) {
		this.roles = roles;
	}
	public Date getFechaCreacion() {
		return fechaCreacion;
	}
	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}
	public String getPassword_confirmacion() {
		return password_confirmacion;
	}
	public void setPassword_confirmacion(String password_confirmacion) {
		this.password_confirmacion = password_confirmacion;
	}
	
	
	
}
