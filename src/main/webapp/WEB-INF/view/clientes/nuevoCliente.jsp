
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<form:form method="POST" modelAttribute="cliente"
	class="form-horizontal" name="nuevoCliente" id="nuevoCliente" action="nuevoCliente.htm">
	<input type="hidden" id="accion" name="accion" value="nuevo">
	
	<form:hidden path="codCliente" />
	<div id="controlNombre" class="control-group">
		<label class="control-label" for="nombre">Nombres</label>
		<div class="controls">
			<form:input path="nombre" class="input-medium" />
			<span class="help-inline" id="e_nombre" style="visibility: hidden;">Ingresar nombre</span>
		</div>
		
	</div>
	<div id="controlApellidos" class="control-group">
		<label class="control-label" for="apellidos">Apellidos</label>
		<div class="controls">
			<form:input path="apellidos" class="input-medium" />
			<span class="help-inline" id="e_apellido" style="visibility: hidden;">Ingresar apellido</span>
		</div>
	</div>
	<div id="controlDireccion" class="control-group">
		<label class="control-label" for="direccion" class="input-medium">Direcci&oacute;n</label>
		<div class="controls">
			<form:input path="direccion" />
			<span class="help-inline" id="e_direccion" style="visibility: hidden;">Ingresar direcci&oacute;n</span>
		</div>
	</div>
	<div id="controlTipoDocumentoIdentificacion" class="control-group">
		<label class="control-label" for="inputTipoDoc">Tipo Doc.</label>
		<div id="tipoDocumentoIdentificacion" class="controls">
			<form:select class="input-medium"
				path="tipoDocumentoIdentificacion.codTipoDocumentoIdentificacion">
				<form:option value="0">--Seleccionar--</form:option>
				<form:options items="${lstTipoDocumentoIdentificacion}"
					itemValue="codTipoDocumentoIdentificacion" itemLabel="descripcion" />
			</form:select>
			<span class="help-inline" id="e_tipoDocumentoIdentificacion" style="visibility: hidden;">Seleccionar Documento</span>
		</div>
	</div>
	<div id="controlNroDocumentoIdentificacion" class="control-group">
		<label class="control-label" for="inputNroId">Nro Id.</label>
		<div class="controls">
			<form:input path="nroDocumentoIdentificacion" class="input-medium"/>
			<span class="help-inline" id="e_nroDocumentoIdentificacion" style="visibility: hidden;">Ingresar Documento</span>
		</div>
	</div>
	<div id="controlTelefono" class="control-group">
		<label class="control-label" for="inputTelefono">Telefono</label>
		<div class="controls">
			<form:input path="telefono" class="input-medium"/>
			<span class="help-inline" id="e_telefono" style="visibility: hidden;">Ingresar Telefono</span>
		</div>
	</div>
	<div id="controlCelular" class="control-group">
		<label class="control-label" for="inputCelular">Celular</label>
		<div class="controls">
			<form:input path="celular" class="input-medium" />
			<span class="help-inline" id="e_celular" style="visibility: hidden;">Ingresar celular</span>
		</div>
	</div>
	<div id="controlEstado" class="control-group">
		<label class="control-label" for="inputEstado">Estado</label>
		<div class="controls">
			<form:select path="estado" class="input-medium">
				<form:option value="ACT">ACTIVO</form:option>
				<form:option value="PAS">PASIVO</form:option>
			</form:select>
			<span class="help-inline" id="e_estado" style="visibility: hidden;">Seleccionar un estado</span>
		</div>
	</div>
</form:form>
