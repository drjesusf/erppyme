<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script type="text/javascript">
	$(document).ready(function() {

		$("#producto\\.codProducto").change(function() {
			$("#modalBusquedaProducto").modal("hide");

			if($("#producto\\.codProducto option:selected").val() != 0 )
			{
// 				alert("seleccionado: "+$("#producto\\.codProducto option:selected").val());
				ingresarProductoTabla($("#producto\\.codProducto option:selected").val());
// 				obtenerProductoPorCodigo($("#producto\\.codProducto option:selected").val());
				
			}
		}).change();
	});
	
	function obtenerProductoPorCodProducto(codProducto){					
		$.ajax({
			url:"../productos/obtenerProducto.htm",  
			dataType : "JSON",
			type: "POST",
			data : {codProducto : codProducto},	
			beforeSend:function(){},
			success:function(response){
				$("#tablaDetalleGuiaRemision > tbody:last").append("<tr>"+
						"<td hidden='true'>1</td>"+ 
						"<td hidden='true'>0</td>"+
						"<td hidden='true'>1</td>"+
						"<td align='center'>1</td>"+
						"<td align='center'>"+response.codProducto+"</td>"+
						"<td align='center'>0</td>"+
						"<td align='center'>"+response.nombre+"</td>"+
						"<td align='center'>"+response.precioReferencial+"</td>"+
						"<td align='center'>0</td>"+ 
						"<td align='center'><div class='btn-group'>"+
						"<a class='btn' data-toggle='modal' role='button'> <i class='icon-pencil'></i></a>"+
						"<a class='btn' data-toggle='modal' role='button'> <i class='icon-trash'></i></a>"+
						"</div></td></tr>");
				
// 				$('#myTable > tbody:last').append('<tr>...</tr><tr>...</tr>');
// 				$("#codProducto").val(response.codProducto);
// 				$("#nombre").val(response.nombre);
// 				$("#descripcion").val(response.descripcion);
// 				$("#codUnidadMedida").val(response.codUnidadMedida);					
// 				$("#precioReferencial").val(response.precioReferencial);					
// 				$("#estado").val(response.estado);
			} ,
			error: function(response){
				alert("error 1");
			}
		});
	}
	
	function ingresarProductoTabla(codProducto)
	{
		obtenerProductoPorCodProducto($("#producto\\.codProducto option:selected").val());
	}
</script>

<div id="modalBusquedaProducto" class="modal hide" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel5" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">×</button>
		<h5 id="myModalLabel5" class="titulo-cabecera-modal">Busqueda de
			Producto</h5>
	</div>
	<div class="modal-body" style="max-height: 90%; padding-top: 1px">
		<div id="controlProducto" class="control-group">
			<label class="control-label" for="inputProducto">Producto</label>
			<div id="productos" class="controls">
				<form:select class="input-medium" path="producto.codProducto">
					<form:option value="0">--Seleccionar--</form:option>
					<form:options items="${lstProductos}" itemValue="codProducto"
						itemLabel="nombre" />
				</form:select>
				<span class="help-inline" id="e_producto"
					style="visibility: hidden;">Seleccionar Producto</span>
			</div>
		</div>
	</div>
</div>