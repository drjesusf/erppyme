<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form method="POST" modelAttribute="producto"
	class="form-horizontal" name="modificarProducto"
	action="modificarProducto.htm">

	<form:hidden path="codProducto" />
	<div class="control-group">
		<label class="control-label" for="nombre">Nombre</label>
		<div class="controls">
			<form:input path="nombre" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="apellidos">Descripcion</label>
		<div class="controls">
			<form:input path="descripcion" />
		</div>
	</div>
	<div id="controlUnidadesMedida" class="control-group">
		<label class="control-label" for="inputUnidadMedida">Unidad de Medida</label>
		<div id="unidadMedida" class="controls">
			<form:select class="input-medium"
				path="unidadMedida.codUnidadMedida">
				<form:option value="0">--Seleccionar--</form:option>
				<form:options items="${lstUnidadMedida}"
					itemValue="codUnidadMedida" itemLabel="nombre" />
			</form:select>
			<span class="help-inline" id="e_unidadMedida" style="visibility: hidden;">Seleccionar Unidad de Medida</span>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="precioReferencial">Precio
			Referencial</label>
		<div class="controls">
			<form:input path="precioReferencial" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="inputEstado">Estado</label>
		<div class="controls">
			<form:select path="estado">
				<form:option value="0">--Seleccionar--</form:option>
				<form:option value="ACT">ACTIVO</form:option>
				<form:option value="PAS">PASIVO</form:option>
			</form:select>
		</div>
	</div>

</form:form>

