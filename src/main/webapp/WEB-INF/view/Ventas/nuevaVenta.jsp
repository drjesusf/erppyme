<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form method="POST" modelAttribute="venta"
	class="form-horizontal" name="nuevaVenta" action="nuevaVenta.htm">

	<div class="control-group" hidden = "true">
		<label class="control-label" for="codCliente"></label>
		<div class="controls">
			<form:input path="cliente.codCliente" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="nombreCliente">Nombre de Cliente</label>
		<div class="controls">
			<form:input path="cliente.nombreCliente" />
		</div>
	</div>
	
	<div class="control-group" hidden="true">
		<label class="control-label" for="fechaVenta"></label>
		<div class="controls">
			<form:input path="fechaVenta" />
		</div>
	</div>
	
	<div class="control-group" hidden="true">
		<label class="control-label" for="montoBruto"></label>
		<div class="controls">
			<form:input path="montoBruto" />
		</div>
	</div>
		<div class="control-group" hidden="true">
		<label class="control-label" for="montoNeto"></label>
		<div class="controls">
			<form:input path="montoNeto" />
		</div>
	</div>
		<div class="control-group" hidden="true">
		<label class="control-label" for="descuento"></label>
		<div class="controls">
			<form:input path="descuento" />
		</div>
	</div>
	<div class="control-group" hidden="true">
		<label class="control-label" for="estado"></label>
		<div class="controls">
			<form:input path="estado" value="ACT"/>
		</div>
	</div>
</form:form>

