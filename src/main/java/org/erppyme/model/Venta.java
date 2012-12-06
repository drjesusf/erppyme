package org.erppyme.model;

import java.math.BigDecimal;
import java.util.Date;
import org.springframework.stereotype.Component;


@Component(value = "venta")
public class Venta {

	private int codVenta;
	private Cliente cliente;
	private Date fechaVenta;
	private BigDecimal montoBruto;
	private BigDecimal montoNeto;
	private BigDecimal descuento;
	private String estado;
	
	public Venta(){}
	
	public Venta( int codVenta, Cliente cliente, Date fechaVenta, BigDecimal montoBruto,
			 		BigDecimal montoNeto, BigDecimal descuento, String estado)
	{
		this.codVenta = codVenta;
		this.cliente = cliente;
		this.fechaVenta = fechaVenta;
		this.montoBruto = montoBruto;
		this.montoNeto = montoNeto;
		this.descuento = descuento;
		this.estado = estado;


	}


	public int getCodVenta() {
		return codVenta;
	}

	public void setCodVenta(int codVenta) {
		this.codVenta = codVenta;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Date getFechaVenta() {
		return fechaVenta;
	}

	public void setFechaVenta(Date fechaventa) {
		this.fechaVenta = fechaventa;
	}

	public BigDecimal getMontoBruto() {
		return montoBruto;
	}

	public void setMontoBruto(BigDecimal montoBruto) {
		this.montoBruto = montoBruto;
	}

	public BigDecimal getMontoNeto() {
		return montoNeto;
	}

	public void setMontoNeto(BigDecimal montoNeto) {
		this.montoNeto = montoNeto;
	}

	public BigDecimal getDescuento() {
		return descuento;
	}

	public void setDescuento(BigDecimal descuento) {
		this.descuento = descuento;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
}
