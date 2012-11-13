<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<form:form  method="POST" commandName="cliente" action="grabarCliente">
		Nombre:<form:input path="nombre"/>
			
	</form:form>
	
</body>
</html>