<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%-- <c:import url="../jspf/recursos.jsp"></c:import> --%>

<script type="text/javascript"> 
    
    $(document).ready(function () {
    	   
        $("#producto\\.codProducto").change(function () {
        	$("#modalBusquedaProducto").modal("hide")
// 				alert("HOLA");
        }).change();
    });
</script>

<div id="controlProducto" class="control-group">
	<label class="control-label" for="inputProducto">Producto</label>
	<div id="productos" class="controls">
		<form:select class="input-medium" path="producto.codProducto" >
			<form:option value="0">--Seleccionar--</form:option>
			<form:options items="${lstProductos}" itemValue="codProducto"
 				itemLabel="nombre" /> 
 		</form:select> 
		<span class="help-inline" id="e_producto" style="visibility: hidden;">Seleccionar
 			Producto</span> 
 	</div> 
 </div> 