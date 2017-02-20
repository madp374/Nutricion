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
  		//File reportfile = new File (application.getRealPath("\\Administracion\\reporte3.jasper"));
  		int idvet = Integer.parseInt(request.getParameter("fu"));
  		//System.out.println(idvet);
  		int diferencia = 0;
  		
  		 File reportfile; 
  		 Map<String,Object> parameter = new HashMap<String,Object>();
  		 
  		 if(diferencia == 0){
  			
  	    	parameter.put("idvet",new Integer(idvet));
  			reportfile = new File (application.getRealPath("Dieta.jasper"));
  	    	
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

</body>
</html>