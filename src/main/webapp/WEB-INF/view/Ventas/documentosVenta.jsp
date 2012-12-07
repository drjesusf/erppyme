<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="tabbable">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tabFactura" data-toggle="tab">Factura</a></li>
					<li ><a href="#tabGuiaRemision" data-toggle="tab">Guia de Remision</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="tabGuiaRemision">
						<c:import url="../ventas/guiaRemision.jsp"></c:import>
					</div>
					<div class="tab-pane active" id="tabFactura">
						<c:import url="../ventas/factura.jsp"></c:import>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>