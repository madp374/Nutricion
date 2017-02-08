<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>

<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>

<%@page import="javax.servlet.ServletResponse"%>
<%@include file="Conexion.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
  <%
 
 	ServletOutputStream outputstream = response.getOutputStream();
  	try{
  		// File reportfile = new File (application.getRealPath("\\Administracion\\reporte3.jasper"));
  		String fecha_ini = request.getParameter("fecha_ini");
  		String fecha_fin = request.getParameter("fecha_fin");
  		String aut = request.getParameter("fu").replace("%20", " ");
  		int diferencia = 0;
  		
  		 File reportfile; 
  		 Map<String,Object> parameter = new HashMap<String,Object>();
  		 
  		 if(diferencia==0){
  			String valor= "Periodo: "+fecha_ini+" a "+fecha_fin;
  			
  			String Sfi[]=fecha_ini.split("/");
  			String Sff[]=fecha_fin.split("/");
  			
  			String fini=Sfi[2]+"-"+Sfi[1]+"-"+Sfi[0];
  			String ffin=Sff[2]+"-"+Sff[1]+"-"+Sff[0];
  			
  			
  	        String autor="Realizado por: "+aut;
  	       
  	        
  	        parameter.put("DatoFechaIni",new String(fini));
  	    	parameter.put("DatoFechaFin",new String(ffin));
  	    	parameter.put("FechaTexto",new String(valor));
  	    	parameter.put("Autor",new String(autor));
  			reportfile = new File (application.getRealPath("EstadisticasCE1.jasper"));
  		 }else{
  			reportfile = new File (application.getRealPath("Error.jasper"));
  			 //System.out.println("nada");
  		 }
  		
  		
  		
  		 byte[] bytes = JasperRunManager.runReportToPdf(reportfile.getPath(), parameter, con);
  		 response.setContentType("application/pdf");
  	     response.setContentLength(bytes.length);
         outputstream.write(bytes,0,bytes.length);
         outputstream.flush();
         outputstream.close();
         
         out.clear(); // where out is a JspWriter
         out = pageContext.pushBody();
        
  	}catch (Exception e) {
  		e.printStackTrace();
  	}finally {
  		outputstream.flush();
        outputstream.close();
  	}
	 
  %>
  <%!
	public String TextoFecha(String fecha){
	  String resultado="";
	  if(fecha.equals("01")){
		  resultado="Enero";
	  }else if(fecha.equals("02")){
		  resultado="Febrero";
	  }else if(fecha.equals("03")){
		  resultado="Marzo";
	  }else if(fecha.equals("04")){
		  resultado="Abril";
	  }else if(fecha.equals("05")){
		  resultado="Mayo";
	  }else if(fecha.equals("06")){
		  resultado="Junio";
	  }else if(fecha.equals("07")){
		  resultado="Julio";
	  }else if(fecha.equals("08")){
		  resultado="Agosto";
	  }else if(fecha.equals("09")){
		  resultado="Septiembre";
	  }else if(fecha.equals("10")){
		  resultado="Octubre";
	  }else if(fecha.equals("11")){
		  resultado="Noviembre";
	  }else if(fecha.equals("12")){
		  resultado="Diciembre";
	  }
	 return resultado;
	}
%>
</body>
</html>