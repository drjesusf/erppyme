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
	
	function buscarClientePorIdentificacion(){
		var nroDocumentoIdentificacion = $("#cliente\\.nroDocumentoIdentificacion").val();
		$.ajax({
			url:"../clientes/buscarClientePorIdentificacion.htm",
			dataType : "JSON",
			type: "GET",
			data : {nroDocumentoIdentificacion : nroDocumentoIdentificacion},				
			beforeSend:function(){
			},
			success:function(response){
				$("#tipoDocumentoIdentificacion select").val(response.tipoDocumentoIdentificacion.codTipoDocumentoIdentificacion);
				$("#cliente\\.codCliente").val(response.codCliente);
				$("#cliente\\.nombre").val(response.nombre);
				$("#cliente\\.direccion").val(response.direccion);					
				$("#cliente\\.nroDocumentoIdentificacion").val(response.nroDocumentoIdentificacion);
			} ,
			error: function(response){
				alert("error");
			}
		});
	}
	

	function mostrarModalBusquedaProducto() {
		mostrarMedidasMonitor();
		$('#modalBusquedaProducto').modal({
	        backdrop: true,
	        keyboard: true
	    }).css({
	        width: 'auto',
	        'margin-left': function () {
	            return -($(this).width() / 2);
	        }
	    });
		$("#modalBusquedaProducto").modal("show");
	};

	function mostrarMedidasMonitor() {
		
// 		alert("LARGO 1: "+$("#collapseOne").height()+"--- largo1: "+$("#collapseTwo").height());
// 		alert("resolucion LARGO 1: "+screen.height+"--- resolucion ancho: "+screen.width);
// 		$("#collapseOne").height();
// 		$("#collapseOne").width();
	}
	
// 	function modificarTamanioCollapseDetalleGuiaRemision()
// 	{
// 		alert("ENTRA AQUI");
// 		if($("#collapseOne").height() == 0)
// 		{
// 			$("#collapseTwo").height(screen.height-116)
// 		}
// 	}
	
</script>
<input id="numeroItem" hidden="true" value ="0"/>
<form:form method="POST" modelAttribute="guiaRemision"
	class="form-horizontal" name="formGuiaRemision" id="formGuiaRemision"
	action="guardarNuevaGuiaRemision.htm">
	<div class="row-fluid">
		<div class="span12">
			<div class="btn-toolbar">
				<div class="btn-group">
					<a id="a_Guardar" href="#" rel="tooltip" title="Guardar"
						data-placement="right">
						<button class="btn">
							<i class="icon-hdd"></i>
						</button>
					</a> <a id="a_Imprimir" href="#" rel="tooltip" title="Imprimir"
						data-placement="right">
						<button class="btn">
							<i class="icon-print"></i>
						</button>
					</a> <a id="a_Exportar" href="#" rel="tooltip"
						title="Exportar a archivo PDF" data-placement="right">
						<button class="btn">
							<i class="icon-download-alt"></i>
						</button>
					</a> <a id="a_Generar" href="#" rel="tooltip" title="Generar Factura"
						data-placement="right">
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
			<div id="collapseOne" class="accordion-body collapse in" onclick="modificarTamanioCollapseDetalleGuiaRemision()">
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
						<div class="span3 altura-elemento_formulario-alto"></div>
						<div class="span5 altura-elemento_formulario-alto">
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
										<form:input path="cliente.nroDocumentoIdentificacion" value="2042355518"/>
										<a id="a_Buscar" href="#" rel="tooltip" title="Buscar"
											onclick="buscarClientePorIdentificacion()">
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
								<div class="controls" >
									<form:input path="cliente.nombre" class="input-xlarge" type="text" />
								</div>
							</div>
						</div>
						<div class="span5 altura-elemento_formulario-alto">
							<div class="control-group">
								<label class="control-label" for="fecha">Fecha</label>
								<div class="controls">
									<div class="input-append">
										<form:input path="documentoVenta.fechaEmision"
											id="input_documentoVenta_fechaEmision" autocomplete="false" disabled="true"/>
										<a id="a_MostrarCalendario" href="#" rel="tooltip" 
											title="Calendario" onclick="button_documentoVenta_fechaEmision_onClick()">
											<button class="btn" type="button">
												<i class="icon-calendar"></i>
											</button>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="span1 altura-elemento_formulario-alto"></div>
					</div>

					<div class="row-fluid">
						<div class="span6 altura-elemento_formulario-alto">
							<div class="control-group">
								<label class="control-label" for="direccion">Direccion</label>
								<div class="controls">
									<form:input path="cliente.direccion" class="input-xlarge" type="text"/>
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
			<div id="collapseTwo" class="accordion-body collapse in" onclick="modificarTamanioCollapseDetalleGuiaRemision()">
				<div class="accordion-inner">
					<div class="row-fluid">
						<div class="span12">
							<table class="table table-bordered" id="cabeceraTablaDetalleGuiaRemision"
								style="margin-bottom: 0">
								<thead>
									<tr>
										<th colspan="10">
											<a class="etiqueta" href="#" id="tooltip" rel="tooltip" 
												data-placement="right"
												title="Click para agregar un nuevo producto"
												onclick="mostrarModalBusquedaProducto()">
												<i class="icon-plus"/>
												</i>
												<span class="label label-info">Agregar</span>
											</a>
										</th>
									</tr>
									<tr>
										<th hidden="true">numeroItem</th>
										<th hidden="true">codDocumentoVenta</th>
										<th hidden="true">cantidadUnidadesProducto</th>
										<th hidden="true">numeroItem</th>

										<th align="center" width="5%">Item</th>
										<th align="center" width="12%">Cod. Producto</th>
										<th align="center" width="6%">Cantidad</th>
										<th align="center" width="41%">Descripcion</th>
										<th align="center" width="14%">Precio Unitario</th>
										<th align="center" width="15%">Total</th>
										<th align="center" width="6%">Acci&oacute;n</th>
										<th align="center" width="1%"></th>
									</tr>
								</thead>
							</table>
							<div style="height: 200px; overflow: auto">
							
								<table class="table table-bordered" id="tablaDetalleGuiaRemision">
									<tbody>
										<tr>
											<td hidden="true">numeroItem</td>
											<td hidden="true">codDocumentoVenta</td>
											<td hidden="true">cantidadUnidadesProducto</td>
											<td hidden="true">numeroItem</td>

											<td align="center">Item</td>
											<td align="center"><a  href='#' rel='tooltip' data-placement='right' title='Click para agregar un nuevo producto'>HOLA</a></td>
											<td align="center" style="padding: 0px"><input type="text" class="text-box-tabla" id="cantidadUnidadesProducto" value=""/></td>
											<td align="center" style="padding: 0px"><input type="text" class="text-box-tabla" id="descripcion" name="descripcion" value="" /></td>
											<td align="center"></td>
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
	<c:import url="../productos/busquedaProductosCombo.jsp"></c:import>
</form:form>
