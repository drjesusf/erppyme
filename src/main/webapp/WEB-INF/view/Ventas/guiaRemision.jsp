<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form method="POST" modelAttribute="guiaRemision"
	class="form-horizontal" name="formGuiaRemision"  id="formGuiaRemision" action="guardarNuevaGuiaRemision.htm">
	
	<div class="row-fluid">
		<div class="span4">
			
		</div>
		<div class="span4">
			
		</div>
		<div class="span4">
			<div class="control-group">
				<label class="control-label" for="nroDocumento">Nro. Guia</label>
				<div class="controls">
					<form:input path="documentoVenta.nroDocumento" />
				</div>
			</div>
		</div>
	</div>
	
	<div class="row-fluid">
		<div class="span12">
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
		</div>
	</div>
	
	<div class="row-fluid">
		<div class="span12">
			<div class="control-group">
				<label class="control-label" for="nroDocumentoIdentificacion">Nro. Doc. Ident.</label>
				<div class="controls">
					<form:input path="cliente.nroDocumentoIdentificacion" />
				</div>
			</div>
		</div>
	</div>
	
	<div class="control-group" hidden="true">
		<label class="control-label" for="codCliente">codCliente</label>
		<div class="controls">
			<form:input path="cliente.codCliente" />
		</div>
	</div>
	
	<div class="row-fluid">
		<div class="span6">
			<div class="control-group">
				<label class="control-label" for="nombre">Nombre</label>
				<div class="controls">
					<form:input path="cliente.nombre" />
				</div>
			</div>
		</div>
		<div class="span2">
			<div class="control-group">
				<label class="control-label" for="fecha">Fecha</label>
				<div class="controls">
					<form:input path="documentoVenta.fechaEmision" />
				</div>
			</div>
		</div>
		<div class="span4">
<!-- 			<div class="control-group"> -->
<!-- 				<label class="control-label" for="fecha">Fecha</label> -->
<!-- 				<div class="controls"> -->
<%-- 					<form:input path="documentoVenta.fechaEmision" /> --%>
<!-- 				</div> -->
<!-- 			</div> -->
		</div>
	</div>
	
	<div class="row-fluid">
		<div class="span6">
			<div class="control-group">
				<label class="control-label" for="direccion">Direccion</label>
				<div class="controls">
					<form:input path="cliente.direccion" />
				</div>
			</div>
		</div>
		<div class="span2">
			<div class="control-group">
				<label class="control-label" for="numeroOrdenCompra">Nro. Orden de Compra</label>
				<div class="controls">
					<form:input path="venta.codVenta" />
				</div>
			</div>
		</div>
		<div class="span4">
			
		</div>
	</div>
	
	

</form:form>