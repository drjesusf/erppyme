<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
 
<html >
<!-- <head> -->
<%-- 	<c:import url="../jspf/recursos.jsp"></c:import> --%>
<!-- </head> -->
<body>	
<%-- 	<c:import url="../jspf/navbar.jsp"></c:import> --%>
<script>
     $(function() {  
    	 
         $( "#buscarUsuario" ).autocomplete({ 
            minLength: 2,  
            source: function (request, response) {
                $.getJSON("../security/filtroUsuarios.htm?identificador="+$("#columna").val(), 
                		{	term: request.term }
                		, 
                		response
                );
            },            
            select: function( event, ui ) {
            	var nombreCompleto = ui.item.nombres +" "+ ui.item.apellidos
                 $( "#buscarUsuario" ).val( nombreCompleto ); 
                 $( "#buscarUsuario-id" ).val( ui.item.codUsuario ); 
//                  cargarGrillaUsuarios(ui.item.codUsuarios);
                return false;
            }
        })
        .data( "autocomplete" )._renderItem = function( ul, item ) {
            return $( "<li>" )
                .data( "item.autocomplete", item )
                .append( "<a>" + item.nombres + "&nbsp"+ item.apellidos +"<br>" + 
                				 item.usuario + "</a>" )
                .appendTo( ul );
        };
    });
    function filtrarPor(columna){
    	$("#columna").val(columna);
    }
</script>
	<input type="hidden" id="columna" value="usuario">
	<div class="container">
		<div class="row">
			<div class="span12">
				<b>Buscar por :</b> 
				<div class="btn-group" data-toggle="buttons-radio">
				  <button type="button" class="btn btn-info active" onclick="filtrarPor('usuario')">Usuario</button>
				  <button type="button" class="btn btn-info" onclick="filtrarPor('nombres')">Nombre</button>
				</div>	
				&nbsp;&nbsp;<b>Ingresar :</b>&nbsp;  <input type="text" id="buscarUsuario"  class="input-medium search-query"/>
				<input type="hidden" id="buscarUsuario-id" />
				<a href="#" id="tooltip" rel="tooltip" data-placement = "right" title="Ingresar texto para realizar busqueda">
					<i class="icon-search"></i>
				</a>
			</div>
			
		</div>
	</div>

	
</body>
</html>