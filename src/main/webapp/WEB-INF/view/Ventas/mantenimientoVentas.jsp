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
							<li><a href="#ListaDocumentos" data-toggle="tab">Lista de Documentos</a></li> 
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
												</a></th>
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
							<div class="tab-pane " id="ListaDocumentos">
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
												<th align="center">C&oacute;digo de Venta</th>
												<th align="center">Fecha</th>
												<th align="center">Tipo de Documento</th>
												<th align="center">Estado</th>
												<th align="center">Acci&oacute;n</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane active" id="tipoId3">
								<div id="clientsDb"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="modalModificar" class="modal hide" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">Modificar Producto</h3>
		</div>
		<div class="modal-body">
<%-- 			<c:import url="modificarProducto.jsp"></c:import> --%>
		</div>
		<div class="modal-footer">
			<button class="btn btn-primary" onclick="guardarProducto()">Guardar</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Cerrar</button>
		</div>
	</div>

	<div id="modalEliminar" class="modal hide" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel2" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel2">Eliminar Producto</h3>
		</div>
		<div class="modal-body">
			<form action="eliminarProducto.htm" name="eliminarProducto"
				method="POST">
				<input type="hidden" id="codProductoEliminar">
			</form>
			¿Esta seguro que desea eliminar la venta seleccionada?
		</div>
		<div class="modal-footer">
			<button class="btn btn-danger" onclick="eliminaProducto()">Si</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">No</button>
		</div>
	</div>

	<div id="modalNuevo" class="modal hide" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel3" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel3">Nueva Venta</h3>
		</div>
		<div class="modal-body">
<%-- 			<c:import url="nuevaVenta.jsp"></c:import> --%>
		</div>
		<div class="modal-footer">
			<button class="btn btn-primary" onclick="agregarNuevo()">Agregar</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
		</div>
	</div>
</body>
</html>
