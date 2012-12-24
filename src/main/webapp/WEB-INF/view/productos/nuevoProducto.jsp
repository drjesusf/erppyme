<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form method="POST" modelAttribute="producto"
	class="form-horizontal" name="nuevoProducto" action="nuevoProducto.htm">
	<div class="control-group">
		<label class="control-label" for="nombre">Nombre</label>
		<div class="controls">
			<form:input path="nombre" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="descripcion">Descripcion</label>
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
	<div class="control-group" hidden="true">
		<label class="control-label" for="estado"></label>
		<div class="controls">
			<form:input path="estado" value="ACT"/>
		</div>
	</div>
</form:form>
