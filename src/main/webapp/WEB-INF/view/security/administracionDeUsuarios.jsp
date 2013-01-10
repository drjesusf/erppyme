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
// 			limpiarFormulario();
			habilitarElementos();
			$("#lblTituloUsuario").html("Usuario - Modificar Usuario");
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
					$("#codUsuario").val(response.codUsuario);
					$("#usuario").val(response.usuario);
					$("#nombres").val(response.nombres);
					$("#apellidos").val(response.apellidos);
					$("#estado").val(response.estado);					
					$("#fechaCreacion").val(response.fechaCreacion);
					$("#estado").val(response.estado);
					$("#password").val(response.password);
					
					$("#controlFechaCreacion").hide();
					$("#controlPassword").hide();
					$("#controlPassword_confirmacion").hide();					
					
				} ,
				error: function(response){
					alert("error");
				}
			});
			$("#modalUsuario").modal("show");
		}
		function ventanaEliminarUsuario(codUsuario){
			$("#lblTituloEliminarUsuario").html("Usuario - Eliminar");
			$("#modalEliminarUsuario").modal("show");
		}
		function ventanaCambiarContrasenaUsuario(codUsuario){
			habilitarElementos();
			$("#lblTituloUsuario").html("Usuario - Cambiar Contrase&ntilde;a ");
			$("#formUsuario").attr("action", "../security/cambiarContrasenaUsuario.htm");
			$("#formUsuario").attr("onclick", "guardarContrasenaUsuario()");
			
			$.ajax({
				url:"../security/obtenerUsuario.htm",
				dataType : "JSON",
				type: "POST",
				data : {codUsuario : codUsuario},				
				beforeSend:function(){
				},
				success:function(response){
					$("#modalUsuario").modal("show");
					$("#codUsuario").val(response.codUsuario);
					$("#usuario").val(response.usuario);
					$("#nombres").val(response.nombres);
					$("#apellidos").val(response.apellidos);
					$("#estado").val(response.estado);					
					$("#fechaCreacion").val(response.fechaCreacion);
					$("#estado").val(response.estado);
// 					$("#password").val(response.password);
					
					$("#controlFechaCreacion").hide();
					$("#controlEstado").hide();
					
				} ,
				error: function(response){
					alert("error");
				}
			});
			$("#modalUsuario").modal("show");
		}
		function guardarUsuario(){
			if(validarUsuario()){
				document.formUsuario.submit();
			}
		}
		function guardarContrasenaUsuario(){
			alert("guardarContrasenaUsuario");
		}
		function habilitarElementos(){
			$("#controlUsuario").show();
			$("#controlNombres").show();
			$("#controlApellidos").show();
			$("#controlEstado").show();					
			$("#controlFechaCreacion").show();
			$("#controlEstado").show();
			$("#controlPassword").show();
			$("#controlPassword_confirmacion").show();
		}
		function validarUsuario(){
			var validar = true;
			if($("#nombres").val() == "") {
				validar = false;
				$("#controlNombres").addClass("error");
				$("#e_nombres").css('visibility', 'visible');				
			}else{
				$("#e_nombres").css('visibility', 'hidden');
				$("#controlNombres").removeClass();
				$("#controlNombres").addClass("control-group");
			}
			if($("#apellidos").val() == "") {
				validar = false;
				$("#controlApellidos").addClass("error");
				$("#e_apellidos").css('visibility', 'visible');				
			}else{
				$("#e_apellidos").css('visibility', 'hidden');
				$("#controlApellidos").removeClass();
				$("#controlApellidos").addClass("control-group");
			}
			if($("#usuario").val() == "") {
				validar = false;
				$("#controlUsuario").addClass("error");
				$("#e_usuario").css('visibility', 'visible');				
			}else{
				$("#e_usuario").css('visibility', 'hidden');
				$("#controlUsuario").removeClass();
				$("#controlUsuario").addClass("control-group");
			}
			if($("#password").val() == "") {
				validar = false;
				$("#controlPassword").addClass("error");
				$("#e_password").css('visibility', 'visible');				
			}else{
				$("#e_password").css('visibility', 'hidden');
				$("#controlPassword").removeClass();
				$("#controlPassword").addClass("control-group");
			}
			if($("#password_confirmacion").val() == "") {
				validar = false;
				$("#controlPassword_confirmacion").addClass("error");
				$("#e_password_confirmacion").css('visibility', 'visible');				
			}else{
				$("#e_password_confirmacion").css('visibility', 'hidden');
				$("#controlPassword_confirmacion").removeClass();
				$("#controlPassword_confirmacion").addClass("control-group");
			}
			return validar;
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
			<b>Administraci&oacute;n de Usuarios</b>
	</div>
		
	<div class="container">
		<div class="row alert alert-info">
	    	<div class="span12">
	    		<c:import url="../security/busquedaUsuarios.jsp"></c:import>
	    	</div>
	    </div>
	    
	    <div class="row">
	    	<div class="span10">
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
	    					<th>Cambiar contrase&ntilde;a</th>
	    				</tr>
	    			</thead>
	    			<tbody id="usuarios">
	    				<c:forEach items="${lstUsuarios}" var="usuario" >
	    				<tr>
	    					<td>${usuario.usuario }</td>
	    					<td>${usuario.nombres } &nbsp; ${usuario.apellidos}</td>
	    					<td><f:formatDate type="date"  pattern="yyyy-MM-dd" value="${usuario.fechaCreacion }"/></td>
	    					<td>
	    						<c:if test="${usuario.estado=='ACT'}">
	    							<span class="label label-success">
	    							${usuario.estado}
	    							</span>
	    						</c:if>
	    						<c:if test="${usuario.estado=='INA'}">
	    							<span class="label label-warning">
	    							${usuario.estado}
	    							</span>
	    						</c:if>	    						
	    					</td>
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
	    					<td>
	    						<a href="#" id="tooltip" rel="tooltip" data-placement = "right" title="Cambiar contrase&ntilde;a" 
	    							onclick="ventanaCambiarContrasenaUsuario(${usuario.codUsuario})" data-toggle="modal" role="button"
	    						>  
	    							<i class="icon-lock"> </i>
	    						 </a>
	    					</td>
	    				</tr>
	    				</c:forEach>
	    			</tbody>	
	    		
	    		</table>
	    	</div>
	    </div>	
	    
	    
	</div>
	
	<div id="modalUsuario" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="lblTituloUsuario" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="lblTituloUsuario">Usuario - </h3>
	  </div>
	  <div class="modal-body">
	  	<c:import url="../security/usuario.jsp"></c:import>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-primary" onclick="guardarUsuario()">Guardar</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
	  </div>
	</div>
	
	<div id="modalEliminarUsuario" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="lblTituloEliminarUsuario" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="lblTituloEliminarUsuario">Usuario - </h3>
	  </div>
	  <div class="modal-body">
	  	<span> ¿Esta seguro que desea eliminar el usuario seleccionado? </span>
	  </div>
	  <div class="modal-footer">
	    <button class="btn btn-danger" onclick="">Eliminar</button>
	    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
	  </div>
	</div>
	
	<div id="modalRoles" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="lblTituloRoles" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="lblTituloRoles">Lista de Roles</h3>
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