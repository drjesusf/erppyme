<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
 
<html >


<form:form method="POST" modelAttribute="usuario"
	name="formUsuario" id="formUsuario" class="form-horizontal" action="">
	
	<fieldset>
    <legend></legend>
    <input type="hidden" id="codUsuario" name="codUsuario">
    
    <div id="controlNombres" class="control-group">
		<label class="control-label" for="nombre">Nombre</label>
		<div class="controls">
			<form:input path="nombres" class="input-medium" />
			<span class="help-inline" id="e_nombres" style="visibility: hidden;">Ingresar Nombre</span>
		</div>		
	</div>
	
	<div id="controlApellidos" class="control-group">
		<label class="control-label" for="apellidos">Apellido</label>
		<div class="controls">
			<form:input path="apellidos" class="input-medium" />
			<span class="help-inline" id="e_apellidos" style="visibility: hidden;">Ingresar Apellido</span>
		</div>		
	</div>
    
    <div id="controlEstado" class="control-group">
		<label class="control-label" for="inputEstado">Estado</label>
		<div class="controls">
			<form:select path="estado" class="input-medium">
				<form:option value="ACT">ACTIVO</form:option>
				<form:option value="INA">INACTIVO</form:option>
			</form:select>
			<span class="help-inline" id="e_estado" style="visibility: hidden;">Seleccionar estado</span>
		</div>
	</div>
	
	<div id="controlFechaCreacion" class="control-group">
		<label class="control-label" for="fechaCreacion">Fecha de Creacion</label>
		<div class="controls">
			<input type="text" id="fechaCreacion" name="fechaCreacion" 
				value='' 
 				class="input-medium" /> 
			<span class="help-inline" id="e_fechaCreacion" style="visibility: hidden;">Ingresar Fecha de Creacion</span>
			
		</div>		
	</div>
    <div id="controlUsuario" class="control-group">
		<label class="control-label" for="usuario">Usuario</label>
		<div class="controls">
			<form:input path="usuario" class="input-medium" />
			<span class="help-inline" id="e_usuario" style="visibility: hidden;">Ingresar Usuario</span>
		</div>		
	</div>
    
    <div id="controlPassword" class="control-group">
		<label class="control-label" for="password">Password</label>
		<div class="controls">
			<form:password path="password" class="input-medium" />
			<span class="help-inline" id="e_password" style="visibility: hidden;">Ingresar Password</span>
		</div>		
	</div>
    
    <div id="controlPassword_confirmacion" class="control-group">
		<label class="control-label" for="password_confirmacion">Repetir Password</label>
		<div class="controls">
			<form:password path="password_confirmacion" class="input-medium" />
			<span class="help-inline" id="e_password_confirmacion" style="visibility: hidden;">Ingresar Password</span>
		</div>		
	</div>
    
  </fieldset>
  
</form:form>

 
<!-- </body> -->
</html>