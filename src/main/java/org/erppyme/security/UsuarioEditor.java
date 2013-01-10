package org.erppyme.security;
import java.beans.PropertyEditorSupport;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.erppyme.service.CustomUserDetailsService;

public class UsuarioEditor extends PropertyEditorSupport  {
	
	private CustomUserDetailsService customUserDetailsService;
	
	public UsuarioEditor(CustomUserDetailsService customUserDetailsService){
		this.customUserDetailsService = customUserDetailsService;
	}
	public void setAsText(String text) throws IllegalArgumentException{
		DateFormat formatter ; 
		Date date ;
		try{
			formatter = new SimpleDateFormat("dd-MMM-yy");
			date = (Date)formatter.parse( text ); 
			Calendar cal = Calendar.getInstance();
			cal.setTime( date );
			setValue(cal);
		}catch(ParseException e){
			System.out.println(e.getMessage());;
		}
	}
}
