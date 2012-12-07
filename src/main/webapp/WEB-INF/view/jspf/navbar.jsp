
<script type="text/javascript">
	function seleccionarItemNavBar()
	{
		var clasesLiDropDown = "dropdown";
		var clasesLiDropDownActivo = "active dropdown";
		var clasesLiActivo = "active";
		
		switch( document.getElementById("ventanaActiva").getAttribute("value") )
		{
		case "mantenimientoClientes":
			document.getElementById("liIndex").removeAttribute("class");
			document.getElementById("liClientes").setAttribute("class", clasesLiDropDownActivo);
			document.getElementById("liProductos").setAttribute("class",clasesLiDropDown);
			document.getElementById("liVentas").removeAttribute("class");
			break;
		case "mantenimientoProductos":
			document.getElementById("liIndex").removeAttribute("class");
			document.getElementById("liClientes").setAttribute("class",clasesLiDropDown);
			document.getElementById("liProductos").setAttribute("class", clasesLiDropDownActivo);
			document.getElementById("liVentas").removeAttribute("class");
			break;
		case "mantenimientoVentas":
			document.getElementById("liIndex").removeAttribute("class");
			document.getElementById("liClientes").setAttribute("class",clasesLiDropDown);
			document.getElementById("liProductos").setAttribute("class",clasesLiDropDown);
			document.getElementById("liVentas").setAttribute("class", clasesLiActivo);
			break;
		}
	}
</script>
<div class="navbar">
  <div class="navbar-inner">
    <div class="container">	  	 
	   <a href="#" class="brand">GreyPower</a>     
	   <ul class="nav pull-right">
	      <li class="dropdown">
	   		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
	     		Cuenta de Usuario
	     		<b class="caret"></b>
	   		</a>
		    <ul class="dropdown-menu">
				<li>
					<a href="#">Cerrar Sesi&oacute;n</a>
				</li>
		 		<li>
		 			<a href="#">Cambiar Contrase&ntilde;a</a>
		 		</li>			    	
		    </ul>
	 	  </li>
	   </ul>
       <!-- Everything you want hidden at 940px or less, place within here -->
       <div class="nav-collapse collapse">
          <p class="navbar-text pull-right">
			Logueado como <a class="navbar-link" href="#">Administrador</a>
		  </p>
		  <ul class="nav">
			<li class="active" id="liIndex">
				<a href="../erppyme">Inicio</a>
			</li>
			<li class="dropdown" id="liClientes">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Clientes
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
			      <li> <a href="mantenimientoClientes.htm">Mantenimiento Clientes</a> </li> 
			    </ul>
			</li>
			<li class="dropdown" id="liProductos">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Productos
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
			      <li> <a href="mantenimientoProductos.htm">Mantenimiento Productos</a> </li> 
			    </ul>
			</li>
			<li id="liVentas">
				<a href="mantenimientoVentas.htm">Ventas</a>
			</li>
		  </ul>
		
       </div>
 
    </div>
  </div>
</div>
	