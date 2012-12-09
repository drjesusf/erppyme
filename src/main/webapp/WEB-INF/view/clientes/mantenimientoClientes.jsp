<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
 
<html >
<head>
	<c:import url="../jspf/recursos.jsp"></c:import>
	<title>.:ERPPYME:. Relacion de Clientes</title>	
	<style scoped>
       #clientsDb {
/*            width: 400px; */
/*            height: 120px;   */
       }
    </style>
	<script>
		$(function() {
			$("a").each(function(){
				$(this).tooltip("hide");
			});
			
			$("table#clientes").tablesorter({ sortList: [[1,0]] });
		});
		function ventanaNuevoCliente(){
			limpiarFormulario();
			$("#formCliente").attr("action", "nuevoCliente.htm");
			$("#modalNuevo").modal("show");
		};
		function agregarNuevoCliente(){
			limpiarFormulario();
			if(validarCliente())
				document.formCliente.submit();
			
		}
		function ventanaModificarCliente(codCliente){
			limpiarFormulario();
			$("#formCliente").attr("action", "modificarCliente.htm");
			$.ajax({
				url:"obtenerCliente.htm",
				dataType : "JSON",
				type: "POST",
				data : {codCliente : codCliente},				
				beforeSend:function(){
				},
				success:function(response){
					$("#modalNuevo").modal("show");
					$("#codCliente").val(response.codCliente);
					$("#nombre").val(response.nombre);
					$("#apellidos").val(response.apellidos);
					$("#direccion").val(response.direccion);					
					$("#tipoDocumentoIdentificacion select").val(response.tipoDocumentoIdentificacion.codTipoDocumentoIdentificacion);
					$("#nroDocumentoIdentificacion").val(response.nroDocumentoIdentificacion);
					$("#telefono").val(response.telefono);
					$("#celular").val(response.celular);					
					$("#estado").val(response.estado);
				} ,
				error: function(response){
					alert("error");
				}
			});
		}
		
		function guardarCliente(){
			limpiarFormulario();
			if(validarCliente())
				document.nuevoCliente.submit();
		}
		function eliminaCliente(){
			document.location.href = "eliminarCliente.htm?clienteEliminarId="+$("#clienteEliminarId").val();
		}
		function ventanaEliminarCliente(codCliente){
			$("#modalEliminar").modal("show");
			$("#clienteEliminarId").val(codCliente);
		}
		function cargarGrillaClientes(codCliente){
			document.location.href = "obtenerClienteFiltrado.htm?codCliente="+codCliente;
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function () {
			$("#nombre").keyup(function(){
				if($("#nombre").val()!= ""){
					$("#controlNombre").removeClass();
					$("#controlNombre").addClass("control-group");
					$("#e_nombre").css('visibility', 'hidden');
				}
			});
			$("#apellidos").keyup(function(){
				if($("#apellidos").val()!= ""){
					$("#controlApellidos").removeClass();
					$("#controlApellidos").addClass("control-group");
					$("#e_apellidos").css('visibility', 'hidden');
				}
			});
			$("#direccion").keyup(function(){
				if($("#direccion").val()!= ""){
					$("#controlDireccion").removeClass();
					$("#controlDireccion").addClass("control-group");
					$("#e_direccion").css('visibility', 'hidden');
				}
			});
			$("#nroDocumentoIdentificacion").keyup(function(){
				if($("#nroDocumentoIdentificacion").val()!= ""){
					$("#controlNroDocumentoIdentificacion").removeClass();
					$("#controlNroDocumentoIdentificacion").addClass("control-group");
					$("#e_nroDocumentoIdentificacion").css('visibility', 'hidden');
				}
			});
			$("#telefono").keyup(function(){
				if($("#telefono").val()!= ""){
					$("#controlTelefono").removeClass();
					$("#controlTelefono").addClass("control-group");
					$("#e_telefono").css('visibility', 'hidden');
				}
			});
			$("#celular").keyup(function(){
				if($("#celular").val()!= ""){
					$("#controlCelular").removeClass();
					$("#controlCelular").addClass("control-group");
					$("#e_celular").css('visibility', 'hidden');
				}
			});
			
			$("#tipoDocumentoIdentificacion select").change(function(){
				if($("#tipoDocumentoIdentificacion select").val()!=0){
					$("#controlTipoDocumentoIdentificacion").removeClass();
					$("#controlTipoDocumentoIdentificacion").addClass("control-group");
					$("#e_tipoDocumentoIdentificacion").css('visibility', 'hidden');
				}else {
					$("#controlTipoDocumentoIdentificacion").addClass("error");
					$("#e_tipoDocumentoIdentificacion").css('visibility', 'visible');
				}
			});
		});
	
		function validarCliente(){
			var numeros = /0-9/;
			var validar = true;
			
			if($("#nombre").val() == "") {
				validar = false;
				$("#controlNombre").addClass("error");
				$("#e_nombre").css('visibility', 'visible');				
			}else{
				$("#e_nombre").css('visibility', 'hidden');
				$("#controlNombre").removeClass();
				$("#controlNombre").addClass("control-group");
			}
			if($("#apellidos").val() == "") {
				validar = false;
				$("#controlApellidos").addClass("error");
				$("#e_apellido").css('visibility', 'visible');
			}else{
				$("#e_apellido").css('visibility', 'hidden');
				$("#controlApellidos").removeClass();
				$("#controlApellidos").addClass("control-group");
			}
			if($("#direccion").val() == "") {
				validar = false;
				$("#controlDireccion").addClass("error");
				$("#e_direccion").css('visibility', 'visible');
			}else{
				$("#e_direccion").css('visibility', 'hidden');
				$("#controlDireccion").removeClass();
				$("#controlDireccion").addClass("control-group");
			}
			if($("#tipoDocumentoIdentificacion select").val() == 0) {
				validar = false;
				$("#controlTipoDocumentoIdentificacion").addClass("error");
				$("#e_tipoDocumentoIdentificacion").css('visibility', 'visible');
			}else{
				$("#e_tipoDocumentoIdentificacion").css('visibility', 'hidden');
				$("#controlTipoDocumentoIdentificacion").removeClass();
				$("#controlTipoDocumentoIdentificacion").addClass("control-group");
			}
			if($("#nroDocumentoIdentificacion").val() == "" && !numeros.test($("#nroDocumentoIdentificacion").val())) {
				validar = false;
				$("#controlNroDocumentoIdentificacion").addClass("error");
				$("#e_nroDocumentoIdentificacion").css('visibility', 'visible');
			}else{
				$("#e_nroDocumentoIdentificacion").css('visibility', 'hidden');
				$("#controlNroDocumentoIdentificacion").removeClass();
				$("#controlNroDocumentoIdentificacion").addClass("control-group");
			}
			if($("#telefono").val() == "") {
				validar = false;
				$("#controlTelefono").addClass("error");
				$("#e_telefono").css('visibility', 'visible');
			}else{
				$("#e_telefono").css('visibility', 'hidden');
				$("#controlTelefono").removeClass();
				$("#controlTelefono").addClass("control-group");
			}
			if($("#celular").val() == "") {
				validar = false;
				$("#controlCelular").addClass("error");
				$("#e_celular").css('visibility', 'visible');
			}else{
				$("#e_celular").css('visibility', 'hidden');
				$("#controlCelular").removeClass();
				$("#controlCelular").addClass("control-group");
			}
			if($("#estado").val() == 0) {
				validar = false;
				$("#controlEstado").addClass("error");
				$("#e_estado").css('visibility', 'visible');
			}else{
				$("#e_estado").css('visibility', 'hidden');
				$("#controlEstado").removeClass();
				$("#controlEstado").addClass("control-group");
			}
			
			return validar;
		}
		
		function limpiarFormulario(){
			$("#controlNombre").removeClass();
			$("#controlNombre").addClass("control-group");
			$("#controlApellidos").removeClass();
			$("#controlApellidos").addClass("control-group");
			$("#controlDireccion").removeClass();
			$("#controlDireccion").addClass("control-group");
			$("#controlTipoDocumentoIdentificacion").removeClass();
			$("#controlTipoDocumentoIdentificacion").addClass("control-group");
			$("#controlNroDocumentoIdentificacion").removeClass();
			$("#controlNroDocumentoIdentificacion").addClass("control-group");
			$("#controlTelefono").removeClass();
			$("#controlTelefono").addClass("control-group");
			$("#controlCelular").removeClass();
			$("#controlCelular").addClass("control-group");
			$("#controlEstado").removeClass();
			$("#controlEstado").addClass("control-group");
			
			$("#e_nombre").css('visibility', 'hidden');
			$("#e_apellido").css('visibility', 'hidden');
			$("#e_direccion").css('visibility', 'hidden');
			$("#e_tipoDocumentoIdentificacion").css('visibility', 'hidden');
			$("#e_nroDocumentoIdentificacion").css('visibility', 'hidden');
			$("#e_telefono").css('visibility', 'hidden');
			$("#e_celular").css('visibility', 'hidden');
			$("#e_estado").css('visibility', 'hidden');			
		}
	</script>
</head>
<body onload="seleccionarItemNavBar()">
	<input id="ventanaActiva" hidden="true" value="mantenimientoClientes">
	<c:import url="../jspf/navbar.jsp"></c:import>
	
	<div class="container">
<!--	  <div class="row-fluid">-->
	    <div class="row alert alert-info">
	    	<div class="span12">
	    		<c:import url="../clientes/busquedaClientes.jsp"></c:import>
	    	</div>
	    </div>
	    <div class="row">
	    	<div class="span12">
	    		<div class="row ">
		    		<div class="tabbable tabs-left">
					  <ul class="nav nav-tabs">
					  	<li class="active"><a href="#tipoId1" data-toggle="tab">Lista de Clientes</a></li>
<!-- 		    			<li><a href="#tipoId2" data-toggle="tab">Tipo Id. 2</a></li>  -->
<!-- 		    			<li><a href="#tipoId3" data-toggle="tab">Tipo Id. 3</a></li> -->
					  </ul>
					  <div class="tab-content">
						  <div class="tab-pane active" id="tipoId1">
					      	<div id="clientsDb">
				            	<table class="table table-bordered" id="clientes">
				            		<thead>
				            			<tr>
				            				<th colspan="10">
				            					<a href="#" id="tooltip" rel="tooltip" data-placement="right" title="Click para agregar un nuevo cliente"
				            						onclick="ventanaNuevoCliente()">
				            						<i class="icon-plus">
				            						</i>
				            						<span class="label label-info">Agregar</span>  
				            						
				            					</a>
				            				</th>
				            			</tr>
				            			<tr >
				            				<th hidden="true">C&oacute;digo</th>
				            				<th align="center">Nombre</th>
				            				<th align="center">Apellidos</th>
				            				<th align="center">Direcci&oacute;n</th>
				            				<th align="center">T,Doc</th>
				            				<th align="center">Nro.Doc</th>
				            				<th align="center">Telefono</th>
				            				<th align="center">Celular</th>
				            				<th align="center">Estado</th>
				            				<th align="center" >Acci&oacute;n</th>
				            			</tr>
				            		</thead>
				            		<tbody>
				            			
				            			<c:forEach items="${lstClientes}" var="cliente">
				            			
				            				<tr  <c:if test="${cliente.estado =='PAS'}">
				            						class='error'
				            					 </c:if>
				            				>
					            				<td hidden="true">${cliente.codCliente}</td>
					            				<td>${cliente.nombre}</td>
					            				<td>${cliente.apellidos}</td>
					            				<td>${cliente.direccion}</td>
					            				<td>${cliente.tipoDocumentoIdentificacion.descripcion}</td>
					            				<td>${cliente.nroDocumentoIdentificacion}</td>
					            				<td>${cliente.telefono}</td>
					            				<td>${cliente.celular}</td>
					            				<td>${cliente.estado}</td>
					            				<td>				            					
					            					<div class="btn-group">
					            						<a class="btn" onclick="ventanaModificarCliente(${cliente.codCliente})" data-toggle="modal" role="button"> <i class="icon-pencil"></i> </a> &nbsp;
					            						<a class="btn" onclick="ventanaEliminarCliente(${cliente.codCliente})"  data-toggle="modal" role="button"> <i class="icon-trash"></i> </a>
					            							
					            					</div>
					            				</td>
				            				</tr>
				            			</c:forEach>
				            			
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
	
	<div id="modalEliminar" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel2">Eliminar Cliente</h3>
	  </div>
	  <div class="modal-body">
	  	<form action="eliminarCliente.htm" name="eliminarCliente" method="POST" >
	  		<input type="hidden" id="clienteEliminarId">
	  	</form>
	  	
	    Esta seguro que desea eliminar el Cliente seleccionado?
	
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-danger" onclick="eliminaCliente()">Si</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">No</button>
	  </div>
	</div>
	
	<div id="modalNuevo" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel3">Nuevo Cliente</h3>
	  </div>
	  <div class="modal-body">
	  	<c:import url="../clientes/cliente.jsp"></c:import>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-primary" onclick="agregarNuevoCliente()">Agregar</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
	  </div>
	</div>
	
</body>  
</html>
