<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
 
<html >
<head>
	<c:import url="../jspf/recursos.jsp"></c:import>
	<title>.:ERPPYME:. Relacion de Productos</title>	
	<style scoped>
       #clientsDb {
/*            width: 400px; */
/*            height: 120px;   */
       }
    </style>
	<script>
// 		$(function() {
// 			$("a").each(function(){
// 				$(this).tooltip("hide");
// 			});
			
// 			$("table#clientes").tablesorter({ sortList: [[1,0]] });
// 		});
// 		function ventanaNuevoCliente(){
// 			$("#modalNuevo").modal("show");
// 		};
// 		function agregarNuevoCliente(){
// 			document.nuevoCliente.submit();
// 		}
// 		function ventanaModificarCliente(clienteId){					
// 			$.ajax({
// 				url:"obtenerCliente.htm",
// 				dataType : "JSON",
// 				type: "POST",
// 				data : {clienteId : clienteId},				
// 				beforeSend:function(){
// 				},
// 				success:function(response){
// 					$("#modalModificar").modal("show");
// 					$("#clienteId").val(response.clienteId);
// 					$("#nombre").val(response.nombre);
// 					$("#apellidos").val(response.apellidos);
// 					$("#direccion").val(response.direccion);					
// 					$("#tipoDocumentoIdentificacion select").val(response.tipoDocumentoIdentificacion.tipoDocumentoIdentificacionId);
// 					$("#nroDocumentoIdentificacion").val(response.nroDocumentoIdentificacion);
// 					$("#telefono").val(response.telefono);
// 					$("#celular").val(response.celular);					
// 					$("#estado").val(response.estado);
// 				} ,
// 				error: function(response){
// 					alert("eeror");
// 				}
// 			});
// 		}
		
// 		function guardarCliente(){
// 			document.modificarCliente.submit();
// 		}
// 		function eliminaCliente(){
// 			document.location.href = "eliminarCliente.htm?clienteEliminarId="+$("#clienteEliminarId").val();
// 		}
// 		function ventanaEliminarCliente(clienteId){
// 			$("#modalEliminar").modal("show");
// 			$("#clienteEliminarId").val(clienteId);
// 		}
// 		function cargarGrillaClientes(clienteId){
// 			document.location.href = "obtenerClienteFiltrado.htm?clienteId="+clienteId;
// 		}
	</script>
	
</head>
<body>

	<c:import url="../jspf/navbar.jsp"></c:import>
	HOLA
	
</body>  
</html>
