<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ConexionBD.Conexion" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
        
        </head>

        <body>
			       <%
			       Conexion consulta = new Conexion();
				   String result=consulta.CargaNoticias2();				   
					String scrip="<script type=\"text/javascript\">(function($) {$(function() { $(\"#scroller\").simplyScroll();});})(jQuery);</script>";
			        String marco="<ul id=\"scroller\">"+result+"</ul>";
					out.println(marco);
					out.println(scrip);
					%>	        
        </body>

        </html>