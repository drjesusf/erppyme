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
// 		$("input[type=text]").addClass("text-box-tabla");

	});
	
	function obtenerProductoPorCodProducto(codProducto){	
		$.ajax({
			url:"../productos/obtenerProducto.htm",  
			dataType : "JSON",
			type: "POST",
			data : {codProducto : codProducto},	
			beforeSend:function(){},
			success:function(response){
				$("#numeroItemDetalleGuiaRemision").val($("#numeroItem").val()+1);
				$("#tablaDetalleGuiaRemision > tbody:last").append("<tr>"+
						"<td hidden='true'>1</td>"+ 
						"<td hidden='true'>0</td>"+
						"<td hidden='true'>1</td>"+
						"<td align='center' >"+$("#numeroItemDetalleGuiaRemision").val()+"</td>"+
						"<td align='center' ><a class='etiqueta' href='#' rel='tooltip' data-placement='right' title='"+response.nombre+"'>"+response.codProducto+"</a></td>"+
						"<td align='center' ><input type='text' id='cantidadUnidadesProducto' value='0' style='display:table-cell; width:99%; height: 32px ; border: 0; padding:0;'/></td>"+
						"<td align='center' ><input type='text' id='descripcion' value='"+response.nombre+"' style='display:table-cell; width:99%; height: 32px ; border: 0; padding:0;'/></td>"+
						"<td align='center' >"+response.precioReferencial+"</td>"+
						"<td align='center' >0</td>"+ 
						"<td align='center' ><div class='btn-group'>"+
						"<a class='btn' rel='tooltip' data-original-title='Modificar' data-toggle='modal' data-placement='left' role='button'> <i class='icon-pencil'></i></a>"+
						"<a class='btn' rel='tooltip' data-original-title='Eliminar' data-toggle='modal'  data-placement='left' role='button'> <i class='icon-trash'></i></a>"+
						"</div></td>/tr>")
						;
				$("[rel=tooltip]").tooltip();
				
// 				<th align="center" width="5%">Item</th>
// 				<th align="center" width="11%">Cod. Producto</th>
// 				<th align="center" width="6%">Cantidad</th>
// 				<th align="center" width="42%">Descripcion</th>
// 				<th align="center" width="14%">Precio Unitario</th>
// 				<th align="center" width="11%">Total</th>
// 				<th align="center" width="10%">Acci&oacute;n</th>
// 				<th align="center" width="1%"></th>
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