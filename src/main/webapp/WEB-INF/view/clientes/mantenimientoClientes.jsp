
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
 
<html >
<head>
	<c:import url="../jspf/recursos.jsp"></c:import>
	<title>.:ERPPYME:. Relacion de Clientes</title>	
	<style scoped>
       #clientsDb {
<!--           width: 400px;-->
<!--           height: 120px;-->   
       }
    </style>
	<script>
		function ventanaModificarCliente(clienteId){
			
			$.ajax({
				url:"obtenerCliente.htm",
				type: "POST",
				data : {clienteId : clienteId},				
				beforeSend:function(){
						
				},
				success:function(){
					
					$("#modalModificar").modal("show");		
				} 
			});
		}
		function guardarCliente(){
			
		}
	</script>
</head>
<body>

	<c:import url="../jspf/navbar.jsp"></c:import>
	
	<div class="container-fluid">
	  <div class="row-fluid">
	    
	    <div class="span12">
	    	<c:import url="busquedaClientes.jsp"></c:import>
			<br>
	    	<div class="row">
	    		<div class="tabbable tabs-left">
				  <ul class="nav nav-tabs">
				  	<li class="active"><a href="#tipoId1" data-toggle="tab">Tipo Id. 1</a></li>
	    			<li><a href="#tipoId2" data-toggle="tab">Tipo Id. 2</a></li> 
	    			<li><a href="#tipoId3" data-toggle="tab">Tipo Id. 3</a></li>
				  </ul>
				  <div class="tab-content">
					  <div class="tab-pane active" id="tipoId1">
				      	<div id="clientsDb">
			            	<table class="table table-bordered">
			            		<thead>
			            			<tr >
			            				<th colspan="9">Lista de clientes</th>
			            			</tr>
			            			<tr>
			            				<th>C&oacute;digo</th>
			            				<th>Nombre</th>
			            				<th>Apellidos</th>
			            				<th>Direcci&oacute;n</th>
			            				<th>Tipo Documento</th>
			            				<th>Nro. Documento</th>
			            				<th>Telefono</th>
			            				<th>Celular</th>
			            				<th>Estado</th>
			            				<th>Acci&oacute;n</th>
			            			</tr>
			            		</thead>
			            		<tbody>
			            			
			            			<c:forEach items="${lstClientes}" var="cliente">
			            				<tr>
				            				<td>${cliente.clienteId}</td>
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
				            						<a class="btn" onclick="ventanaModificarCliente(${cliente.clienteId})" data-toggle="modal" role="button"> <i class="icon-pencil"></i> </a>
				            						<a class="btn" onclick="ventanaEliminarCliente(${cliente.clienteId})" href="#modalEliminar" data-toggle="modal" role="button"> <i class="icon-trash"></i> </a>
				            							
				            					</div>
				            				</td>
			            				</tr>
			            			</c:forEach>
			            			
			            		</tbody>
			            	</table>
			            </div>
				      </div>
				      <div class="tab-pane active" id="tipoId2">
				      	<div id="clientsDb">
			            
			            </div>
				      </div>
				      <div class="tab-pane active" id="tipoId3">
				      	<div id="clientsDb">
			            
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
	    <c:import url="nuevoCliente.jsp"></c:import>
	  </div>
	  <div class="modal-footer">
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cerrar</button>
	    <button class="btn btn-primary">Guardar</button>
	  </div>
	</div>
</body>  
</html>
