<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
 
<html >
<head>
	<c:import url="../../view/jspf/recursos.jsp"></c:import> 
	<tiles:insertAttribute name="titulo-content" />
</head>
<body onload="seleccionarItemNavBar()">

<%-- 	<c:import url="../../view/jspf/navbar.jsp"></c:import> --%>
	<tiles:insertAttribute name="menu-content" />
	<tiles:insertAttribute name="interno-content" />
	<tiles:insertAttribute name="piePagina-content" />
</body>  
</html>
