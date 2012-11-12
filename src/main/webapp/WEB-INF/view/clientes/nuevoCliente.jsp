
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form method="POST" commandName="cliente" class="form-horizontal">
	
  <div class="control-group">
    <label class="control-label" for="nombre">Nombres</label>
    <div class="controls">
      <form:input path="nombre" />
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="apellidos">Apellidos</label>
    <div class="controls">
      <form:input path="apellidos" />
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="direccion">Direcci&oacute;n</label>
    <div class="controls">
      <form:input path="direccion" />
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputTipoDoc">Tipo Doc.</label>
    <div class="controls">
      	<form:select path="tipoDocumentoIdentificacion">
      		<form:option value="0">--Seleccionar--</form:option>
      		<form:options items="${lstTipoDocumentoIdentificacions}"
      					  itemValue="tipoDocumentoIdentificacionId" 
      					  itemLabel="descripcion"/>
		</form:select>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputNroId">Nro Id.</label>
    <div class="controls">
      <input type="text" id="inputNroId" placeholder="NroId">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputTelefono">Telefono</label>
    <div class="controls">
      <input type="text" id="inputTelefono" placeholder="Telefono">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputCelular">Celular</label>
    <div class="controls">
      <input type="text" id="inputCelular" placeholder="Celular">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputEstado">Estado</label>
    <div class="controls">
      <input type="text" id="inputEstado" placeholder="Estado">
    </div>
  </div>
</form:form>
