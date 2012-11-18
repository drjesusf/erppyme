<!--<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>--> 
<!--<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>--> 

<style>
    #project-label {
        display: block;
        font-weight: bold;
        margin-bottom: 1em;
    }
    #project-icon {
        float: left;
        height: 32px;
        width: 32px;
    }
    #project-description {
        margin: 0;
        padding: 0;
    }
</style>

<script>
     $(function() {  
         $( "#buscarCliente" ).autocomplete({ 
            minLength: 2,  
            source: function (request, response) {
                $.getJSON("filtroClientes.htm?identificador=nombre", 
                		{	term: request.term }
                		, 
                		response
                );
            },            
            select: function( event, ui ) {
            	var nombreCompleto = ui.item.nombre +" "+ ui.item.apellidos
                 $( "#buscarCliente" ).val( nombreCompleto ); 
                 $( "#buscarCliente-id" ).val( ui.item.clienteId ); 
                 cargarGrillaClientes(ui.item.clienteId);
                return false;
            }
        })
        .data( "autocomplete" )._renderItem = function( ul, item ) {
            return $( "<li>" )
                .data( "item.autocomplete", item )
                .append( "<a>" + item.nombre + "&nbsp"+ item.apellidos +"<br>" + 
                				 item.tipoDocumentoIdentificacion.descripcion + "&nbsp"+ item.nroDocumentoIdentificacion + "</a>" )
                .appendTo( ul );
        };
    });
</script>
<!-- <div class="row"> -->
<!-- 	<div class="span12"> -->
<!-- 		<div class="btn-group" data-toggle="buttons-radio"> -->
<!--                 <button type="button" class="btn btn-primary">Left</button> -->
<!--                 <button type="button" class="btn btn-primary">Middle</button> -->
<!--                 <button type="button" class="btn btn-primary">Right</button> -->
<!-- 			</div> -->
<!-- 	</div> -->
<!-- </div> -->
<div class="row">
	<div class="span12">
		Buscar Cliente :&nbsp;  <input type="text" id="buscarCliente"  class="input-medium search-query" />
		<input type="hidden" id="buscarCliente-id" />
	</div>
	
</div>


