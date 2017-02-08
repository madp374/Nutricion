<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>

<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>

<%@page import="javax.servlet.ServletResponse"%>
<%@include file="Conexion2.jsp" %>

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
  		 File reportfile = new File (application.getRealPath(".\\Reportes\\reporte3.jasper"));
  		  
  		 Map<String,Object> parameter = new HashMap<String,Object>();
  		 String valor = request.getParameter("genero");
         parameter.put("generos",new String(valor));
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