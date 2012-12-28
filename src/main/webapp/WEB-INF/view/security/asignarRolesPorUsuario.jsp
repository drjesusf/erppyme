<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
 
<html >
<head>
	<c:import url="../jspf/recursos.jsp"></c:import>
	<title>.:ERPPYME:. Administraci&oacute;n de usuarios</title>
	
	<script type="text/javascript">
		function cargarGrillaUsuarios(codUsuario){
			$.ajax({
				url:"../security/obtenerUsuario.htm",
				dataType : "JSON",
				type: "POST",
				data : {codUsuario : codUsuario},				
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
		function ventanaListaDeRoles(codUsuario){
			$("#modalRoles").modal("show");
		}
		
		function ventanaNuevoUsuario(){
			$("#modalUsuario").modal("show");
		}
		function ventanaModificarUsuario(codUsuario){
			limpiarFormulario();
			$("#formUsuario").attr("action", "../security/modificarUsuario.htm");
			$.ajax({
				url:"../security/obtenerUsuario.htm",
				dataType : "JSON",
				type: "POST",
				data : {codUsuario : codUsuario},				
				beforeSend:function(){
				},
				success:function(response){
					$("#modalUsuario").modal("show");
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
			$("#modalUsuario").modal("show");
		}
		function ventanaEliminarUsuario(codUsuario){
			$("#modalEliminarUsuario").modal("show");
		}
	</script>	
	
	<script>
		$(function() {
			$("a").each(function(){
				$(this).tooltip("hide");
			});
		});
	</script>
</head>

<body onload="seleccionarItemNavBar()">
	<input id="ventanaActiva" hidden="true" value="asignarRolesPorUsuario">
	
	<c:import url="../jspf/navbar.jsp"></c:import>
	<div class="well well-small text-info" align="center">
			<b>Asministraci&oacute;n de Usuarios</b>
	</div>
		
	<div class="container">
		<div class="row alert alert-info">
	    	<div class="span12">
	    		<c:import url="../security/busquedaUsuarios.jsp"></c:import>
	    	</div>
	    </div>
	    
	    <div class="row">
	    	<div class="span8">
	    		<table class="table">
	    			<thead>
	    				<tr>
	    					<th colspan="6">Lista de Usuarios
	    						&nbsp;
	    						<a href="#" id="tooltip" rel="tooltip" data-placement="right" title="Agregar nuevo Usuario"
            						onclick="ventanaNuevoUsuario()">
            						<i class="icon-plus">
            						</i>
            						<span class="label label-info">Agregar</span>  
            					</a>
	    					</th>
	    				</tr>
	    				<tr>
	    					<th>Usuario</th>
	    					<th>Nombres</th>
	    					<th>Fecha Creaci&oacute;n</th>
	    					<th>Estado</th>
	    					<th>Acciones</th>
	    					<th>Roles</th>
	    				</tr>
	    			</thead>
	    			<tbody id="usuarios">
	    				<c:forEach items="${lstUsuarios}" var="usuario" >
	    				<tr>
	    					<td>${usuario.usuario }</td>
	    					<td>${usuario.nombres } &nbsp; ${usuario.apellidos}</td>
	    					<td><f:formatDate type="date"  pattern="yyyy-MM-dd" value="${usuario.fechaCreacion.time }"/></td>
	    					<td>${usuario.estado}</td>
	    					<td align="center"> 
	    						<a href="#" id="tooltip" rel="tooltip" data-placement = "right" title="Actualizar Usuario" 
	    							onclick="ventanaModificarUsuario(${usuario.codUsuario})" data-toggle="modal" role="button"
	    						>  
	    							<i class="icon-pencil"> </i>
	    						 </a> &nbsp;
	    						<a href="#" id="tooltip" rel="tooltip" data-placement = "right" title="Eliminar Usuario" 
	    							onclick="ventanaEliminarUsuario(${usuario.codUsuario})" data-toggle="modal" role="button"
	    						>  
	    							<i class="icon-trash"> </i>
	    						 </a> 
	    					</td>
	    					<td align="center"> 
	    						<a href="#" id="tooltip" rel="tooltip" data-placement = "right" title="Ver Lista de Roles" 
	    							onclick="ventanaListaDeRoles(${usuario.codUsuario})" data-toggle="modal" role="button"
	    						>  
	    							<i class="icon-th-list"> </i>
	    						 </a> 
	    					</td>
	    				</tr>
	    				</c:forEach>
	    			</tbody>	
	    		
	    		</table>
	    	</div>
	    </div>	
	    
	    
	</div>
	
	<div id="modalUsuario" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel1">Usuario</h3>
	  </div>
	  <div class="modal-body">
	  	<c:import url="../security/usuario.jsp"></c:import>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-primary" onclick="">Agregar</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
	  </div>
	</div>
	
	<div id="modalEliminarUsuario" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel2">Usuario</h3>
	  </div>
	  <div class="modal-body">
	  	<span> ¿Esta seguro que desea eliminar el usuario seleccionado? </span>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-danger" onclick="">Eliminar</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
	  </div>
	</div>
	
	<div id="modalRoles" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel2">Lista de Roles</h3>
	  </div>
	  <div class="modal-body">
	  	<c:import url="../security/roles.jsp"></c:import>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-primary" onclick="">Agregar</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
	  </div>
	</div>
</body>
</html>