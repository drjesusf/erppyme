<script>
     $(function() {  
    	 
         $( "#buscarProducto" ).autocomplete({ 
            minLength: 2,  
            source: function (request, response) {
                $.getJSON("filtroProductos.htm?identificador="+$("#columna").val(), 
                		{	term: request.term }
                		, 
                		response
                );
            },            
            select: function( event, ui ) {
            	var nombreCompleto = ui.item.nombre
                 $( "#buscarProductos" ).val( nombreCompleto ); 
                 $( "#buscarCodProducto" ).val( ui.item.codProducto); 
                 cargarGrillaProductos(ui.item.codProducto);
                return false;
            }
        })
        .data( "autocomplete" )._renderItem = function( ul, item ) {
            return $( "<li>" )
                .data( "item.autocomplete", item )
                .append( "<a>" + item.nombre + "</a>" )
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
		</div>	
		&nbsp;&nbsp;<b>Buscar Producto :</b>&nbsp;  <input type="text" id="buscarProducto"  class="input-medium search-query"/>
		<input type="hidden" id="buscarCodProducto" />
		<a href="#" id="tooltip" rel="tooltip" data-placement = "right" title="Ingresar texto para realizar busqueda">
			<i class="icon-search"></i>
		</a>
	</div>
<!--</div>-->
<br>




