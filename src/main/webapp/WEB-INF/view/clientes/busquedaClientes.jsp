<script>
     $(function() {  
    	 
         $( "#buscarCliente" ).autocomplete({ 
            minLength: 2,  
            source: function (request, response) {
                $.getJSON("filtroClientes.htm?identificador="+$("#columna").val(), 
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
    function filtrarPor(columna){
    	$("#columna").val(columna);
    }
</script>

<!--<div class="row">-->
	<input type="hidden" id="columna" value="nombre">
	<div class="span12">
		<b>Buscar por :</b> 
		<div class="btn-group" data-toggle="buttons-radio">
		  <button type="button" class="btn btn-info active" onclick="filtrarPor('nombre')">Nombre</button>
		  <button type="button" class="btn btn-info" onclick="filtrarPor('apellidos')">Apellido</button>
		  <button type="button" class="btn btn-info" onclick="filtrarPor('nroDocumentoIdentificacion')">N.Docuemnto</button>
		</div>	
		&nbsp;&nbsp;<b>Buscar Cliente :</b>&nbsp;  <input type="text" id="buscarCliente"  class="input-medium search-query"/>
		<input type="hidden" id="buscarCliente-id" />
		<a href="#" id="tooltip" rel="tooltip" data-placement = "right" title="Ingresar texto para realizar busqueda">
			<i class="icon-search"></i>
		</a>
	</div>
<!--</div>-->
<br>




