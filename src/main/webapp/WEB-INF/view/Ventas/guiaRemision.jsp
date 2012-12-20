<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form method="POST" modelAttribute="guiaRemision"
	class="form-horizontal" name="guiaRemision" action="guardarNuevaGuiaRemision.htm">
	
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
	
	<div class="control-group">
		<label class="control-label" for="tipoDocumentoIdentificacion">Tipo Doc. Ident.</label>
		<div class="controls">
			<form:input path="tipoDocumentoIdentificacion" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="nroDocumentoIdentificacion">Nro. Doc. Ident.</label>
		<div class="controls">
			<form:input path="nroDocumentoIdentificacion" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="nombre">Nombre</label>
		<div class="controls">
			<form:input path="nombre" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="direccion">Direccion</label>
		<div class="controls">
			<form:input path="direccion" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="fecha">Fecha de Emision</label>
		<div class="controls">
			<form:input path="fecha" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="nroOrdenCompra">Nro. Orden de Compra</label>
		<div class="controls">
			<form:input path="nroOrdenCompra" />
		</div>
	</div>
	
	<div class="control-group" hidden="true">
		<label class="control-label" for="estado"></label>
		<div class="controls">
			<form:input path="estado" value="ACT"/>
		</div>
	</div>
</form:form>