<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<script type="text/javascript">
	$(function() {
		$("#input_documentoVenta_fechaEmision").datepicker();
	});

	function button_documentoVenta_fechaEmision_onClick() {
		$("#input_documentoVenta_fechaEmision").focus();
	}
</script>

<form:form method="POST" modelAttribute="guiaRemision"
	class="form-horizontal" name="formGuiaRemision" id="formGuiaRemision"
	action="guardarNuevaGuiaRemision.htm">
	<div class="row-fluid">
		<div class="span12">
			<div class="btn-toolbar">
				<div class="btn-group">
					<a id="a_Guardar" href="#" rel="tooltip" title="Guardar" data-placement="right">
						<button class="btn">
							<i class="icon-hdd"></i>
						</button>
					</a> 
					<a id="a_Imprimir" href="#" rel="tooltip" title="Imprimir" data-placement="right">
						<button class="btn">
							<i class="icon-print"></i>
						</button>
					</a> 
					<a id="a_Exportar" href="#" rel="tooltip" title="Exportar a archivo PDF" data-placement="right">
						<button class="btn">
							<i class="icon-download-alt"></i>
						</button>
					</a> 
					<a id="a_Generar" href="#" rel="tooltip" title="Generar Factura" data-placement="right">
						<button class="btn">
							<i class="icon-asterisk"></i>
						</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="accordion" id="accordion2">
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse"
					href="#collapseOne"> Datos Generales </a>
			</div>
			<div id="collapseOne" class="accordion-body collapse in">
				<div class="accordion-inner">
					<div class="row-fluid">
						<div class="span4 altura-elemento_formulario-alto">
							<div id="controlTipoDocumentoIdentificacion"
								class="control-group">
								<label class="control-label" for="inputTipoDoc">Tipo
									Doc.</label>
								<div id="tipoDocumentoIdentificacion" class="controls">
									<form:select class="input-medium"
										path="tipoDocumentoIdentificacion.codTipoDocumentoIdentificacion">
										<form:option value="0">--Seleccionar--</form:option>
										<form:options items="${lstTipoDocumentoIdentificacion}"
											itemValue="codTipoDocumentoIdentificacion"
											itemLabel="descripcion" />
									</form:select>
									<span class="help-inline" id="e_tipoDocumentoIdentificacion"
										style="visibility: hidden;">Seleccionar Documento</span>
								</div>
							</div>
						</div>
						<div class="span4 altura-elemento_formulario-alto">
						</div>
						<div class="span4 altura-elemento_formulario-alto">
							<div class="control-group">
								<label class="control-label" for="nroDocumento">Nro.
									Guia</label>
								<div class="controls">
									<form:input path="documentoVenta.nroDocumento" />
								</div>
							</div>
						</div>
					</div>

					<div class="row-fluid ">
						<div class="span12 altura-elemento_formulario-alto">
							<div class="control-group">
								<label class="control-label" for="nroDocumentoIdentificacion">Nro.
									Doc. Ident.</label>
								<div class="controls">
									<div class="input-append">
										<form:input path="cliente.nroDocumentoIdentificacion" />
										<a id="a_Buscar" href="#" rel="tooltip" title="Buscar">
											<button class="btn" type="button">
												<i class="icon-search"></i>
											</button>
										</a>
									</div>
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
						<div class="span6 altura-elemento_formulario-alto">
							<div class="control-group">
								<label class="control-label" for="nombre">Nombre</label>
								<div class="controls">
									<form:input path="cliente.nombre" />
								</div>
							</div>
						</div>
						<div class="span4 altura-elemento_formulario-alto">
							<div class="control-group">
								<label class="control-label" for="fecha">Fecha</label>
								<div class="controls">
									<div class="input-append">
										<form:input path="documentoVenta.fechaEmision"
											id="input_documentoVenta_fechaEmision" />
										<a id="a_MostrarCalendario" href="#" rel="tooltip" title="Calendario">
											<button class="btn" type="button"
												id="button_documentoVenta_fechaEmision"
												onclick="button_documentoVenta_fechaEmision_onClick()">
												<i class="icon-calendar"></i>
											</button>
										</a>	
									</div>
								</div>
							</div>
						</div>
						<div class="span2 altura-elemento_formulario-alto"></div>
					</div>

					<div class="row-fluid">
						<div class="span6 altura-elemento_formulario-alto">
							<div class="control-group">
								<label class="control-label" for="direccion">Direccion</label>
								<div class="controls">
									<form:input path="cliente.direccion" />
								</div>
							</div>
						</div>
						<div class="span4 altura-elemento_formulario-alto">
							<div class="control-group">
								<label class="control-label" for="numeroOrdenCompra">O/Compra</label>
								<div class="controls">
									<form:input path="venta.codVenta" />
								</div>
							</div>
						</div>
						<div class="span2 altura-elemento_formulario-alto"></div>
					</div>

				</div>
			</div>
		</div>
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse"
					href="#collapseTwo">Detalle</a>
			</div>
			<div id="collapseTwo" class="accordion-body collapse">
				<div class="accordion-inner">
					<div class="row-fluid">
						<div class="span12">
							<table class="table table-bordered" id="tabla-clientes-cabecera"
								style="margin-bottom: 0">
								<thead>
									<!-- 									<tr> -->
									<!-- 										<th colspan="10"><a href="#" id="tooltip" rel="tooltip" -->
									<!-- 											data-placement="right" -->
									<!-- 											title="Click para agregar un nuevo producto" -->
									<!-- 											onclick="ventanaNuevo()"> <i class="icon-plus" /></i> <span -->
									<!-- 												class="label label-info">Agregar</span> -->
									<!-- 										</a></th> -->
									<!-- 									</tr> -->
									<tr>
										<th hidden="true">numeroItem</th>
										<th hidden="true">codDocumentoVenta</th>
										<th hidden="true">cantidadUnidadesProducto</th>
										<th hidden="true">numeroItem</th>

										<th align="center">Item</th>
										<th align="center">Cod. Producto </th>
										<th align="center">Cantidad</th>
										<th align="center">Descripcion</th>
										<th align="center">Precio Unitario</th>
										<th align="center">Total</th>
										<th align="center">Acci&oacute;n</th>
									</tr>
								</thead>
							</table>
							<div style="height:200px; overflow: auto">
								<table class="table table-bordered" id="tabla-clientes-cuerpo">
									<tbody>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>

										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>
	
											<td align="center">Item</td>
											<td align="center">codProducto </td>
											<td align="center">Cantidad</td>
											<td align="center">Descripcion</td>
											<td align="center">Precio Unitario</td>
											<td align="center">Total</td>
											<td align="center">Acci&oacute;n</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form:form>