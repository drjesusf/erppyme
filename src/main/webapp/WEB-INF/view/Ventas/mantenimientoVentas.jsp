<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html>
<head>
<c:import url="../jspf/recursos.jsp"></c:import>
<title>.:ERPPYME:. Relacion de Ventas</title>
<style scoped>
#clientsDb { /*            width: 400px; */
	/*            height: 120px;   */
	
}
</style>
<script>
	function ventanaNuevo() {
		$('#modalNuevo').modal({
	        backdrop: true,
	        keyboard: true
	    }).css({
	        width: 'auto',
	        'margin-left': function () {
	            return -($(this).width() / 2);
	        }
	    });
		$("#modalNuevo").modal("show");
	};
	
	function agregarNuevo() {
		document.nuevoProducto.submit();
	}
	
	function mostrarModalDocumentosVenta() {
		$('#modalDocumentosVenta').modal({
	        backdrop: true,
	        keyboard: true
	    }).css({
// 	    	height: '300px',
	        width: '800px',
	        'margin-left': function () {
	            return -($(this).width() / 2);
	        }
	    });
		$("#modalDocumentosVenta").modal("show");
	};
	
	function mostrarModalNuevaGuiaRemision() {
		$('#modalNuevaGuiaRemision').modal({
	        backdrop: true,
	        keyboard: true
	    }).css({
	    	height: '95%',
	        width: '95%',
	        'margin-left': function () {
	            return -($(this).width() / 2);
	        },
		    'margin-top': function () {
	            return -($(this).height() / 2);
	        }
	    });
		$("#modalNuevaGuiaRemision").modal("show");
	};
	
	function mostrarModalNuevaFactura() {
		$('#modalNuevaFactura').modal({
	        backdrop: true,
	        keyboard: true
	    }).css({
// 	    	height: '300px',
	        width: '800px',
	        'margin-left': function () {
	            return -($(this).width() / 2);
	        }
	    });
		$("#modalNuevaFactura").modal("show");
	};
	
	function ventanaModificar(codProducto){					
		$.ajax({
			url:"obtenerProducto.htm",
			dataType : "JSON",
			type: "POST",
			data : {codProducto : codProducto},				
			beforeSend:function(){
			},
			success:function(response){
				$("#modalModificar").modal("show");
				$("#codProducto").val(response.codProducto);
				$("#nombre").val(response.nombre);
				$("#descripcion").val(response.descripcion);
				$("#codUnidadMedida").val(response.codUnidadMedida);					
				$("#precioReferencial").val(response.precioReferencial);					
				$("#estado").val(response.estado);
			} ,
			error: function(response){
				alert("error");
			}
		});
	}
	
	function guardarProducto(){
		document.modificarProducto.submit();
	}
	function eliminaProducto(){
		document.location.href = "eliminarProducto.htm?codProducto="+$("#codProductoEliminar").val();
	}
	function ventanaEliminar(codProducto){
		$("#modalEliminar").modal("show");
		$("#codProductoEliminar").val(codProducto);
	}
	function cargarGrillaProductos(codProducto){
		document.location.href = "obtenerProductoFiltrado.htm?codProducto="+codProducto;
	}
	
</script>
<style type="text/css" >

</style>
</head>
<body onload="seleccionarItemNavBar()">
	<input id="ventanaActiva" hidden="true" value="mantenimientoVentas">
	<c:import url="../jspf/navbar.jsp"></c:import>

	<div class="container">
		<!-- 	  <div class="row-fluid"> -->
		<div class="row alert alert-info">
			<div class="span12">
<%-- 				<c:import url="busquedaProductos.jsp"></c:import> --%>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="row ">
					<div class="tabbable tabs-left">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#ListaVentas" data-toggle="tab">Lista de Ventas</a></li>
							<li><a href="#ListaGuiasRemision" data-toggle="tab">Guias de Remision</a></li> 
							<li><a href="#ListaFacturas" data-toggle="tab">Facturas</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="ListaVentas">
								<div id="clientsDb">
									<table class="table table-bordered" id="clientes">
										<thead>
											<tr>
												<th colspan="10"><a href="#" id="tooltip" rel="tooltip"
													data-placement="right"
													title="Click para agregar una nueva venta"
													onclick="ventanaNuevo()"> <i class="icon-plus" /></i>
														<span class="label label-info">Agregar</span>
												</a>
<!-- 												<a class="btn" href="#" onclick="mostrarModalDocumentosVenta()"><i class="icon-fire"></i></a> -->
												</th>
											</tr>
											<tr>
												<th align="center">C&oacute;digo de Venta</th>
												<th align="center">Fecha</th>
												<th align="center">Nombre de Cliente</th>
												<th align="center">Total Bruto</th>
												<th align="center">Total Descuento</th>
												<th align="center">Total Neto</th>
												<th align="center">Acci&oacute;n</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane" id="ListaGuiasRemision">
								<div id="clientsDb">
									<table class="table table-bordered" id="clientes">
										<thead>
											<tr>
												<th colspan="10"><a href="#" id="tooltip" rel="tooltip"
													data-placement="right"
													title="Click para agregar un nuevo documento"
													onclick="mostrarModalNuevaGuiaRemision()"> <i class="icon-plus" /></i>
														<span class="label label-info">Agregar</span>
												</a></th>
											</tr>
											<tr>
												<th align="center" hidden="true">C&oacute;digo de Guia</th>
												<th align="center">Nro. Guia</th>
												<th align="center">Cliente</th>
												<th align="center">Fecha</th>
												<th align="center">Nro. Factura Relacionada</th>
												<th align="center">Estado</th>
												<th align="center">Acci&oacute;n</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane" id="ListaFacturas">
								<div id="clientsDb">
									<table class="table table-bordered" id="clientes">
										<thead>
											<tr>
												<th colspan="10"><a href="#" id="tooltip" rel="tooltip"
													data-placement="right"
													title="Click para agregar un nuevo documento"
													onclick="ventanaNuevo()"> <i class="icon-plus" /></i>
														<span class="label label-info">Agregar</span>
												</a></th>
											</tr>
											<tr>
												<th align="center" hidden="true">C&oacute;digo de Factura</th>
												<th align="center">Nro. Factura</th>
												<th align="center">Cliente</th>
												<th align="center">Fecha</th>
												<th align="center">Total Monto Bruto</th>
												<th align="center">Total Descuentos</th>
												<th align="center">Total Monto Neto</th>
												<th align="center">Nro. Guia Relacionada</th>
												<th align="center">Estado</th>
												<th align="center">Acci&oacute;n</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="modalNuevaGuiaRemision" class="modal hide" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel3" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel3">Nueva Guia de Remision</h3>
		</div>
		<div class="modal-body" style="height: 380px">
<%-- 			<c:import url="../ventas/guiaRemision.jsp"></c:import> --%>
		</div>
<!-- 		<div class="modal-footer"> -->
<!-- 			<button class="btn btn-primary" onclick="agregarNuevo()">Agregar</button> -->
<!-- 			<button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button> -->
<!-- 		</div> -->
	</div>
</body>
</html>
