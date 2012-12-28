/***************************************/
/*
 * GREYPOWER Java Scripts
 * En este archivo estan los scripts utilizados
 */
/***************************************/

/*
 * Personalizacion del Tooltips de bootstrap
 */
$(document).ready(function() {
	$("[rel=tooltip]").tooltip();
});

/*
 * Manejo de la barra de navegacion principal
 */
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
