
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
			document.getElementById("liVentas").setAttribute("class",clasesLiDropDown);
			document.getElementById("liSeguridad").setAttribute("class",clasesLiDropDown);
			break;
		case "mantenimientoProductos":
			document.getElementById("liIndex").removeAttribute("class");
			document.getElementById("liClientes").setAttribute("class",clasesLiDropDown);
			document.getElementById("liProductos").setAttribute("class", clasesLiDropDownActivo);
			document.getElementById("liVentas").setAttribute("class",clasesLiDropDown);
			document.getElementById("liSeguridad").setAttribute("class",clasesLiDropDown);
			break;
		case "mantenimientoVentas":
			document.getElementById("liIndex").removeAttribute("class");
			document.getElementById("liClientes").setAttribute("class",clasesLiDropDown);
			document.getElementById("liProductos").setAttribute("class",clasesLiDropDown);
			document.getElementById("liVentas").setAttribute("class", clasesLiDropDownActivo);
			document.getElementById("liSeguridad").setAttribute("class",clasesLiDropDown);
			break;
		
		case "asignarRolesPorUsuario":
			document.getElementById("liIndex").removeAttribute("class");
			document.getElementById("liClientes").setAttribute("class",clasesLiDropDown);
			document.getElementById("liProductos").setAttribute("class",clasesLiDropDown);
			document.getElementById("liVentas").setAttribute("class",clasesLiDropDown);
			document.getElementById("liSeguridad").setAttribute("class", clasesLiDropDownActivo);
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
				<a href="../security/inicio.htm">Inicio</a>
			</li>
			<li class="dropdown" id="liClientes">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Clientes
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
			      <li> <a href="../clientes/mantenimientoClientes.htm">Mantenimiento Clientes</a> </li> 
			    </ul>
			</li>
			<li class="dropdown" id="liProductos">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Productos
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
			      <li> <a href="../productos/mantenimientoProductos.htm">Mantenimiento Productos</a> </li> 
			    </ul>
			</li>
			<li id="liVentas">
				<a href="../ventas/mantenimientoVentas.htm">Ventas</a>
			</li>
			<li class="dropdown" id="liSeguridad">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Seguridad
					<b class="caret"></b>
				</a>				
				<ul class="dropdown-menu">
<!-- 				  <li> <a href="../security/administracionUsuarios.htm">Administraci&oacute;n de Usuarios</a> </li> -->
			      <li> <a href="../security/asignarRolesPorUsuario.htm">Asignar Roles por Usuario</a> </li> 
			    </ul>
			</li>
		  </ul>
		
       </div>
 
    </div>
  </div>
</div>
	