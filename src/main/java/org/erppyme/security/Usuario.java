package org.erppyme.security;

public class Usuario {
	private int codUsuario;
	private String nombres;
	private String apellidos;
	private String usuario;
	private String password;
	public Usuario() {
		super();
	}
	public Usuario(int codUsuario, String nombres, String apellidos,
			String usuario, String password) {
		super();
		this.codUsuario = codUsuario;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.usuario = usuario;
		this.password = password;
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
	
	
	
}
