<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
 
<html >
<head>
	<c:import url="../jspf/recursos.jsp"></c:import>
</head>
<body>
<div class="container">
	<div class="row-fluid" >	
		<div class="span6" >
			<form action="../j_spring_security_check"  class="form-horizontal" method="POST" >
				<fieldset>
					<legend>
						Login de Usuario
					</legend>
					
				  <div class="control-group">
				    <label class="control-label" for="j_username">Usuario</label>
				    <div class="controls">
				      <input type="text" name="j_username" class="input-medium" >
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="j_password">Password</label>
				    <div class="controls">
				      <input type="password" name="j_password" class="input-medium">
				    </div>
				  </div>
				  <div class="control-group">
				    <div class="controls">		     
				      <button type="submit" class="btn btn-primary">Ingresar</button>
				    </div>
				  </div>
				
				</fieldset>
			</form>
			<br>
			Reason : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
		
	</div>
</div>	
</body>
</html>