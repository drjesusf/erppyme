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
			$("#modalNuevo").modal("show");
		};
		function agregarNuevoCliente(){
			if(validarCliente())
				document.nuevoCliente.submit();
			
		}
		function ventanaModificarCliente(codCliente){					
			$.ajax({
				url:"obtenerCliente.htm",
				dataType : "JSON",
				type: "POST",
				data : {codCliente : codCliente},				
				beforeSend:function(){
				},
				success:function(response){
					$("#modalModificar").modal("show");
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
					alert("eeror");
				}
			});
		}
		
		function guardarCliente(){
			document.modificarCliente.submit();
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
		function validarCliente(){
			var validar = true;
			$("#controlNombre").css("control-group");
			$("#controlApellidos").removeClass();
			$("#controlDireccion").removeClass();
			$("#controlTipoDocumentoIdentificacion").remove();
			$("#controlNroDocumentoIdentificacion").remove();
			$("#controlTelefono").remove();
			$("#controlCelular").remove();
			$("#controlEstado").remove();
			
			if($("#nombre").val() == "") {
				validar = false;
				$("#controlNombre").addClass("error");
			}
			if($("#apellidos").val() == "") {
				validar = false;
				$("#controlApellidos").addClass("error");
			}
			if($("#direccion").val() == "") {
				validar = false;
				$("#controlDireccion").addClass("error");
			}
			if($("#tipoDocumentoIdentificacion select").val() == "") {
				validar = false;
				$("#controlTipoDocumentoIdentificacion").addClass("error");
			}
			if($("#nroDocumentoIdentificacion select").val() == "") {
				validar = false;
				$("#controlNroDocumentoIdentificacion").addClass("error");
			}
			if($("#telefono").val() == "") {
				validar = false;
				$("#controlTelefono").addClass("error");
			}
			if($("#celular").val() == "") {
				validar = false;
				$("#controlCelular").addClass("error");
			}
			if($("#estado").val() == "") {
				validar = false;
				$("#controlEstado").addClass("error");
			}
			return validar;
		}
	</script>
</head>
<body>

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
	
	<div id="modalModificar" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel">Modificar Cliente</h3>
	  </div>
	  <div class="modal-body">
	    <c:import url="../clientes/modificarCliente.jsp"></c:import>
	
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-primary" onclick="guardarCliente()">Guardar</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cerrar</button>
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
	  	<c:import url="../clientes/nuevoCliente.jsp"></c:import>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-primary" onclick="agregarNuevoCliente()">Agregar</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
	  </div>
	</div>
	
</body>  
</html>
