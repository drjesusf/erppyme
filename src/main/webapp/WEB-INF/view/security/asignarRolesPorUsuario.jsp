<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
 
<html >
<head>
	<c:import url="../jspf/recursos.jsp"></c:import>
	<title>.:ERPPYME:. Asignacion de roles por usuario</title>	
</head>

<body onload="seleccionarItemNavBar()">
	<input id="ventanaActiva" hidden="true" value="asignarRolesPorUsuario">
	
	<c:import url="../jspf/navbar.jsp"></c:import>
	<div class="well well-small" align="center">
		<b>Asignaci&oacute;n de Roles por Usuario</b>
	</div>
		
	<div class="container">
		<div class="row alert alert-info">
	    	<div class="span12">
	    		<c:import url="../security/busquedaUsuarios.jsp"></c:import>
	    	</div>
	    </div>
	    
	    <div class="row">
	    	<div class="span6">
	    		<table class="table">
	    			<thead>
	    				<tr>
	    					<th>Usuario</th>
	    					<th>Nombres</th>
	    					<th>Fecha Creaci&oacute;n</th>
	    				</tr>
	    			</thead>
	    			<tbody>
	    				<tr>
	    					<td></td>
	    					<td></td>
	    					<td></td>
	    				</tr>
	    			</tbody>	
	    		
	    		</table>
	    	</div>
	    </div>	
	    <div class="row">
	    	<div class="span4">
	    		Accesos Totales<br>
	    		<select multiple="multiple">
				  <option>1</option>
				  <option>2</option>
				  <option>3</option>
				  <option>4</option>
				  <option>5</option>
				</select>
	    	</div>
	    	<div class="span2" >
<!-- 	    		<button type="button" class="btn"> <i class=" icon-arrow-right"> </i></button><br> -->
<!-- 	    		<button type="button" class="btn"> <i class=" icon-arrow-left"> </i></button> -->
				<br><br><br>
	    		<a href="">  <i class=" icon-arrow-right"> </i> </a><br>
	    		<a href="">  <i class=" icon-arrow-left"> </i> </a>
	    	</div>
	    	<div class="span4">
	    		Accesos del usuarios <i class=" icon-user"> </i><br>
	    		
	    		<select multiple="multiple">
				  <option>1</option>
				  <option>2</option>
				  <option>3</option>
				  <option>4</option>
				  <option>5</option>
				</select>
	    	</div>
	    	
	    </div>
	    <br>
	    <div class="row">
	    	<div class="span10" align="right">
	    		<button class="btn btn-primary">Grabar</button>
	    	</div>
	    </div>
	</div>
</body>
</html>