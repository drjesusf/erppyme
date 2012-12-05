package org.erppyme.model;

import java.util.Date;

import org.springframework.stereotype.Component;;

@Component(value = "documentoVenta")
public class DocumentoVenta{
	
	private int codDocumentoVenta;
	private Venta venta;
	private TipoDocumentoVenta tipoDocumentoVenta;
	private String  nroDocumento;
	private Date fechaEmision;
	private String estado;
	
	public DocumentoVenta(){}
	
	public DocumentoVenta(	int codDocumentoVenta,Venta venta
							,TipoDocumentoVenta tipoDocumentoVenta,String  nroDocumento,
							Date fechaEmision, String estado) {
		super();
		this.codDocumentoVenta = codDocumentoVenta;
		this.venta = venta;
		this.tipoDocumentoVenta = tipoDocumentoVenta;
		this.nroDocumento = nroDocumento;
		this.fechaEmision = fechaEmision;
		this.estado = estado;
	}
	
	public int getCodDocumentoVenta() {
		return codDocumentoVenta;
	}

	public void setCodDocumentoVenta(int codDocumentoVenta) {
		this.codDocumentoVenta = codDocumentoVenta;
	}

	public Venta getVenta() {
		return venta;
	}

	public void setVenta(Venta venta) {
		this.venta = venta;
	}

	public TipoDocumentoVenta getTipoDocumentoVenta() {
		return tipoDocumentoVenta;
	}

	public void setTipoDocumentoVenta(TipoDocumentoVenta tipoDocumentoVenta) {
		this.tipoDocumentoVenta = tipoDocumentoVenta;
	}

	public String getNroDocumento() {
		return nroDocumento;
	}

	public void setNroDocumento(String nroDocumento) {
		this.nroDocumento = nroDocumento;
	}

	public Date getFechaEmision() {
		return fechaEmision;
	}

	public void setFechaEmision(Date fechaEmision) {
		this.fechaEmision = fechaEmision;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
}
