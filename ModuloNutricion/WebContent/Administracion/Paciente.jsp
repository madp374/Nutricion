<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

        <head>
 
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
		
		<link rel="stylesheet" media="all" type="text/css" href="../jquery/carrusel/style/style-demo.css">

	    <script src="../jquery/carrusel/script/jquery-1.11.1.js"></script>
	
	   
	    
	   <link href="../jquery/menuacordeon/css/dcaccordion.css" rel="stylesheet" type="text/css" />
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.cookie.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.hoverIntent.minified.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.dcjqaccordion.2.7.min.js'></script>
    	
    	<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />
    
    	<style type="text/css">
			#titulos { color: black; word-spacing: -5 px; letter-spacing: 3px;}
			
			.foto-inicio{	width:100%; height:100px; 	}
			
			.page-header {
			    padding-bottom: 9px;
			    margin: 0px 0 0px;
			}
			.btn-default {
			    color: #333;
			    background-color: #D8D6D6;
			    border-color: #ccc;
			    font-weight:bold;
			}
			.panel-heading {
			    padding: 6px 15px;
			    }
			.container {
			    width: 70%;
			    padding-top:15px;
			}
			.table-responsive {
			    overflow-x: hidden; 
			}
			.table {
			    margin-bottom: 0px;
			}
			.flexigrid {
			    font-size: 10px;
			}
			.input-sm {
			    height: 26px;
			    font-size: 11px;
			}
		</style>
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:8pt; }
       	
	</style>
		
	
		<script>	
		
			
			$(document).ready(function($){
				
				$('#accordion-3').dcAccordion({
					eventType: 'click',
					autoClose: false,
					saveState: false,
					disableLink: false,
					showCount: false,
					speed: 'slow'
				});
				 $("form").keypress(function(e) {
				        if (e.which == 13) {
				            return false;
				        }
				    });
			});
    	</script>
    	
    	<script type="text/javascript" src="../jquery/flexigrid/jquery.js"></script>
    	<link rel="stylesheet" type="text/css" href="../CSS/flexigrid/flexigrid/flexigrid.css">

<script type="text/javascript" src="../jquery/flexigrid/flexigrid.js"></script>

<style>

	body
		{
		font-family: Arial, Helvetica, sans-serif;
		font-size: 12px;
		}
		
	.flexigrid div.fbutton .add
		{
			background: url(../css/flexigrid/images/add.png) no-repeat center left;
		}	

	.flexigrid div.fbutton .delete
		{
			background: url(../css/flexigrid/images/close.png) no-repeat center left;
		}	
	 
	

		
</style>

        </head>

<body onload="CargaInicio()">
    
<div class="container">
<div class="panel2 panel-body">
<header class="row col-sm-12">
   <div class="page-header">
        
     <form class="form-inline">
	  <div class="row" align="center">
	  <div class="form-group">
	    <div style="float:right;">
			<a href="http://usalud.usac.edu.gt/index.jsp">
			<img src="../imagenes/logousac.png" width="200px" height="100px" >
		</a>
		</div> 
	  </div>
  
	  <div class="form-group">
	    <p><h4 align="center">&Aacute;rea de Medicina Preventiva e Investigaci&oacute;n</br>
				Clinica de Nutricion</br>
				Unidad de Salud. USAC</h4></p>
	  </div>
  
	  <div class="form-group">
	    <div style="float:left;">
			<a href="http://usalud.usac.edu.gt/index.jsp">
			<img src="../imagenes/logousalud2.gif" width="200px" height="100px"  onmouseout="this.src=&#39;../imagenes/logousalud2.gif&#39;;" onmouseover="this.src=&#39;../imagenes/logousac.png&#39;;">
		</a>
		</div> 
	  </div>
	</div>
	<div class="row" align="right">
		<div class="form-group" >
	  	
				<p id="UsuarioSesion">Usuario:</p>
			</div>
	 </div>
	</form>
	
       		 
  </div>
</header>
        
        <div class="row col-sm-12">
        
<nav class="col-sm-2">
        <ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3">
        <li> <a href="/ModuloNutricion/Administracion/Inicio.jsp"> <span class="glyphicon glyphicon-home"></span> Inicio </a> </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Mantenimiento </a>
	        <ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3" style="background-color: #E0E0E0;">
				<li><a href="/ModuloNutricion/Administracion/Trifoliar.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Manejo de Trifoliar </a></li>
				<li><a href="/ModuloNutricion/Administracion/RegistroAlimento.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Registro de alimentos </a></li>
		    	<li><a href="/ModuloNutricion/Administracion/RegistroTipoExamen.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Tipo de Examen </a></li>
		    	<li><a href="/ModuloNutricion/Administracion/RegistroFacultad.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Facultad </a></li>
		    	<li><a href="/ModuloNutricion/Administracion/RegistroEnfermedad.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Enfermedad </a></li>
		    	<li><a href="/ModuloNutricion/Administracion/TablaDieta.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Tablas de dietas </a></li>
		    	<li><a href="/ModuloNutricion/Administracion/Paciente.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Paciente </a></li>
		    	<li><a href="/ModuloNutricion/Administracion/Usuario.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Usuarios </a></li>
		    </ul>
         </li>
         <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Citas </a>
        	<ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3" style="background-color: #E0E0E0;">
				<li><a href="/ModuloNutricion/Administracion/Citas.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Nuevo</a></li>
				<li><a href="/ModuloNutricion/Administracion/cal.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Calendario </a></li>
			</ul>
        </li>
        <li> <a href="/ModuloNutricion/Administracion/ConsultaExterna.jsp"> <span class="glyphicon glyphicon-book"></span> Consulta externa </a> 
        	
        </li>
        <li> <a href="/ModuloNutricion/Administracion/ExamenMultifasico.jsp"> <span class="glyphicon glyphicon-book"></span> Multifasico </a>
        	
        </li>
        <li> <a href="/ModuloNutricion/Administracion/Reporte3.jsp"> <span class="glyphicon glyphicon-book"></span> Reportes </a>
        	
        </li>
        </ul>
        </nav>
        
        <section class="col-sm-10">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Paciente</h3>
        </div>
        <div class="panel-body">
	
	
	
	<div class="table-responsive">
	<table class="table" align="center">
	<tr>
	<td>
	<table id="flex1" style="display:none" ></table>
	</td>
	</tr>
	</table>
	</div>
	
	 <form action="../Usuario" method="post" class="form-inline" role="form" onsubmit="return false">
&nbsp;  
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Registro Academico</label>
		<input class="form-control input-sm" name="codigo" id="codigo" type="number" />
	  </div>

<div id="NRegPacienteNoEncontrado"> 
<div class="row-fluid">
<br>
&nbsp; 
<div class="form-group">
    <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Nombres y Apellidos</label>
    <input class="form-control input-sm" type="text"  name="nombre1" id="nombre1" maxlength="40" />
</div>
<br>
&nbsp;
<div class="form-group">
    <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >CUI</label>
    <input class="form-control input-sm" type="number" placeholder="digitos sin espacios o guiones"  name="cui1" id="cui1" min="0" />
</div>
<br>
&nbsp;
<div class="form-group">
    <p id="dep5"></p>
</div>
<br>
&nbsp;
<div class="form-group">

    <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Tipo de paciente</label>
    <select  class="form-control input-sm"  id="tipopaciente1">
    	<option value="0"></option>
        <option value="1">Estudiante</option>
        <option value="2">Trabajador</option>
    </select>
</div>
<br>
&nbsp;
<div class="form-group">

    <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Sexo</label>
    <select  class="form-control input-sm"  id="sexo1">
        <option value="Femenino">Femenino</option>
        <option value="Masculino">Masculino</option>
    </select>
</div>
<br>
&nbsp;
<div class="form-group">
    <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Fecha Nac.</label>
    <input class="form-control input-sm" type="date"  name="fechaNac" id="fechaNac" pattern='(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d' placeholder="DD/MM/YYYY"   style="width: 140px;" maxlength="10" />
</div>
<br>
&nbsp;
<div class="form-group">
    <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Edad</label>
    <input class="form-control input-sm" type="text"  name="edad1" id="edad1" style="width: 70px;" readonly/>
</div>
<br>
&nbsp;
<div class="form-group">
    <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Correo</label>
    <input class="form-control input-sm" type="email" placeholder="correo@ejemplo.com"  name="correo1" id="correo1" style="width: 130px;" />
</div>
<br>
&nbsp;
<div class="form-group">
    <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Telefono</label>
    <input class="form-control input-sm" type="number" name="telefono1" id="telefono1" style="width: 100px;" />
</div>
</div>



 
  </div>
     <label id="mensajes">.</label>
     <div class="row" align="center" id="guard" >
      		<div class="form-group" >			
							<button class="btn btn-default" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Guardar" />Guardar</button>
							
			</div>
		</div>
     <div class="row" align="center" id="ini" >
      		<div class="form-group" >			
							<button class="btn btn-default" onclick="NuevoRegistro()" >
						     <img src="../imagenes/nuevo.png" width="40" height="30" title="Nuevo" />Nuevo</button>
							
			</div>
			<div class="form-group" >		
							<button class="btn btn-default" onclick="EliminarRegistro()" >
						     <img src="../imagenes/eliminar.png" width="40" height="30" title="Eliminar" />Eliminar</button>
							
			</div>
		</div>
      <div class="row" align="center" id="Mod" >
      		<div class="form-group" >			
							<button class="btn btn-default" onclick="NuevoRegistro()" >
						     <img src="../imagenes/nuevo.png" width="40" height="30" title="Nuevo" />Nuevo</button>
							
			</div>
            <div class="form-group" >			
							<button class="btn btn-default" onclick="Modificar()" >
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Modificar" />Modificar</button>
							
			</div>
			<div class="form-group" >		
							<button class="btn btn-default" onclick="EliminarRegistro()" >
						     <img src="../imagenes/eliminar.png" width="40" height="30" title="Eliminar" />Eliminar</button>
							
			</div>
		</div>
	 	
	 </form>
	

<script type="text/javascript">
var idUSUARIO=0;
var UsuarioSesion = "null";
var IdUsuarioSesion = "null";
var PerfilSesion = "null"
var NomUsuario="null";

$("#flex1").flexigrid
(
{
url: '../TablaPaciente',
method: 'POST',
dataType: 'xml',
colModel : [
	{display: 'Seleccionar', name : 'chktradio', width : 90, sortable : false, align: 'left'},
	{display: 'Registro Academico', name : 'idPACIENTE', width : 110, sortable : true, align: 'center'},
	{display: 'Nombre', name : 'nombre', width : 120, sortable : true, align: 'left'},
	{display: 'Facultad', name : 'F.nombre', width : 120, sortable : true, align: 'left'},
	{display: 'CUI', name : 'CUI', width : 120, sortable : true, align: 'left'}
	],
searchitems : [
	{display: 'Registro Academico', name : 'idPACIENTE', isdefault: true},
	{display: 'Nombre', name : 'nombre'},
	{display: 'Facultad', name : 'F.nombre'},
	{display: 'CUI', name : 'CU'}
	],
sortname: "idPACIENTE",
sortorder: "asc",
usepager: true,
title: 'Registro de pacientes',
useRp: true,
rp: 10,
showTableToggleBtn: true,
width: 650,
onSubmit: addFormData,
height: 120,
}
);




//This function adds paramaters to the post of flexigrid. You can add a verification as well by return to false if you don't want flexigrid to submit			
function addFormData()
	{
	
	//passing a form object to serializeArray will get the valid data from all the objects, but, if the you pass a non-form object, you have to specify the input elements that the data will come from
	var dt = $('#sform').serializeArray();
	$("#flex1").flexOptions({params: dt});
	return true;
	}
	
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function VerificarSesion(){
	<% HttpSession misession= request.getSession(true); %>
	
	UsuarioSesion = "<%=misession.getAttribute("NUSUARIO")%>";
	IdUsuarioSesion = "<%=misession.getAttribute("NIDSUARIO")%>";
	PerfilSesion = "<%=misession.getAttribute("NPERFIL")%>";
	NomUsuario = "<%=misession.getAttribute("NomUsuario")%>";
	
	if(UsuarioSesion=="null"||IdUsuarioSesion=="null"||PerfilSesion=="null"){
		
		var x=decodeURIComponent(document.cookie).length;
		if(x==0){
			//sale
			window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
		}
		else{
			UsuarioSesion = getCookie(decodeURIComponent("CookieUsuario"));
    		IdUsuarioSesion = getCookie(decodeURIComponent("CookieIDUsuario"));
    		PerfilSesion = getCookie(decodeURIComponent("CookiePerfil"));
    		NomUsuario = getCookie(decodeURIComponent("CookieNomUsuario"));
    		
    		if(PerfilSesion=="admi"){
				document.getElementById("UsuarioSesion").innerHTML ='<label>Usuario:'+UsuarioSesion+' | <a id="CerrarSesion1" title="Cerrar sesion" href="#" onclick="CerrarSesion(); return false;"  style="color: blue;">Cerrar sesion</a>&nbsp;&nbsp;&nbsp;&nbsp;</label>'
				document.getElementById("Mod").style.display = 'none';
				document.getElementById("ini").style.display = 'none';
				document.getElementById("guard").style.display = 'block';
			}else{
				window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
			}
		}
		
	}
	else{
		document.cookie = "CookieUsuario="+encodeURIComponent(UsuarioSesion);
		document.cookie = "CookieIDUsuario="+encodeURIComponent(IdUsuarioSesion);
		document.cookie = "CookiePerfil="+encodeURIComponent(PerfilSesion);
		document.cookie = "CookieNomUsuario="+encodeURIComponent(NomUsuario);
		
		if(PerfilSesion=="admi"){
			document.getElementById("UsuarioSesion").innerHTML ='<label>Usuario:'+UsuarioSesion+' | <a id="CerrarSesion1" title="Cerrar sesion" href="#" onclick="CerrarSesion(); return false;"  style="color: blue;">Cerrar sesion</a>&nbsp;&nbsp;&nbsp;&nbsp;</label>'
			document.getElementById("Mod").style.display = 'none';
			document.getElementById("ini").style.display = 'none';
			document.getElementById("guard").style.display = 'block';
		}else{
			window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
		}
	}
}

function CargaInicio(){
	VerificarSesion();
	CargaFacultad();
}
function CerrarSesion(){
	<%misession.setAttribute("NUSUARIO", "null");%>
    <%misession.setAttribute("NIDSUARIO", "null");%>
    <%misession.setAttribute("NPERFIL", "null");%>
    <%misession.setAttribute("NomUsuario", "null");%>
        		
     document.cookie = "CookieUsuario=; max-age=0";
     document.cookie = "CookieIDUsuario=; max-age=0";
     document.cookie = "CookiePerfil=; max-age=0";
     document.cookie = "CookieNomUsuario=; max-age=0";
	
	window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
	
}
function EditarRegistro(){
	if(idUSUARIO=="0"){
		MensajeServidor(2,"Error, seleccione un registro valido");
	}else{
		//window.location.replace("/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp?MID="+idMultifasicos);
	}
}
function validar_email(x){
	var resultado="";
	 var atpos = x.indexOf("@");
	    var dotpos = x.lastIndexOf(".");
	    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
	        alert("Error, Ingrese un correo valido");
	        resultado="";
	    }else{
	    	resultado=x;
	    }
	    return resultado;
}
function validar_vacio(entrada){
	var texto="";
	texto=document.getElementById(entrada).value;
	if(texto==""){
		texto="";
	}
	return texto;
}
function validar_numerovacio(entrada){
	var texto="";
	texto=document.getElementById(entrada).value;
	if(texto==""){
		texto="0";
	}
	return texto;
}
function limpiar_campos(){
	document.getElementById("codigo").readOnly = false;
	document.getElementById('codigo').value  = "";
	document.getElementById('nombre1').value  = "";
	document.getElementById('sexo1').value  = "";
	document.getElementById('edad1').value  = "";
	document.getElementById('facultad1').value  = 0;
	document.getElementById('cui1').value  = "";
	document.getElementById('correo1').value  = "";
	document.getElementById('telefono1').value  = "";
	document.getElementById('tipopaciente1').value=0;
	document.getElementById('fechaNac').value  = "";
}
function Guardar(){
	var carnet=validar_numerovacio('codigo');
	var variable11="";
	var variable12="";
	var variable13="";
	var variable14="";
	variable11=validar_vacio('nombre1');
	variable12=validar_vacio('sexo1');
	variable13=validar_vacio('fechaNac');
	variable14=validar_numerovacio('facultad1');
	var variable140=validar_vacio('edad1');
	var variable141=validar_vacio('cui1');
	var variable142=validar_numerovacio('tipopaciente1');
	var variable143=validar_vacio('correo1');
	var variable144=validar_numerovacio('telefono1');
	
	if(codigo!="0"&&variable11!=""&&edad1!=""&&variable142!="0"&&variable14!="0"){
		var action="insertarpaciente";
		var cadena = [ 	'carnet='+ carnet,'a='+action
    		         	   ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p15='+variable141
    		         	   ,'p16='+variable142,'p17='+variable143,'p18='+variable144].join('&');
		
		AñadirUsuarioBD(cadena);
	}else{
		MensajeServidor(2,"Error, faltan campos a ingresar");
	}
}
function Modificar(){
	var carnet=validar_numerovacio('codigo');
	var variable11="";
	var variable12="";
	var variable13="";
	var variable14="";
	variable11=validar_vacio('nombre1');
	variable12=validar_vacio('sexo1');
	variable13=validar_vacio('fechaNac');
	variable14=validar_numerovacio('facultad1');
	var variable140=validar_vacio('edad1');
	var variable141=validar_vacio('cui1');
	var variable142=validar_numerovacio('tipopaciente1');
	var variable143=validar_vacio('correo1');
	var variable144=validar_numerovacio('telefono1');
	
	if(codigo!="0"&&variable11!=""&&edad1!=""&&variable142!="0"&&variable14!="0"){
		var res = variable13.split("-");
		variable13=res[2]+"/"+res[1]+"/"+res[0];
		var action="modificar";
		var cadena = [ 	'carnet='+ carnet,'a='+action
    		         	   ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p41='+variable141
    		         	   ,'p42='+variable142,'p43='+variable143,'p44='+variable144].join('&');
		
		$.ajax({
	        url: "../Paciente",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	if(data.resultado=='OK'){
	        		limpiartabla();
	        		limpiar_campos();
	        		document.getElementById("guard").style.display = 'block';
	    			document.getElementById("Mod").style.display = 'none';
	    			document.getElementById("ini").style.display = 'none';
	        		MensajeServidor(1,data.descripcion);
	        	}else{
	        		MensajeServidor(2,data.descripcion);
	        	}
	        	
	        	
	        	
	        }
		});
	}else{
		MensajeServidor(2,"Error, faltan campos a ingresar");
	}

}
function AñadirUsuarioBD(cadena){
	var action="agregar";


	$.ajax({
        url: "../Paciente",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		limpiartabla();
        		limpiar_campos();
        		MensajeServidor(1,"Registro almacenado correctamente");
        		document.getElementById("guard").style.display = 'block';
    			document.getElementById("Mod").style.display = 'none';
    			document.getElementById("ini").style.display = 'none';
        	}else{
        		MensajeServidor(2,data.descripcion);
        	}
        	
        	
        	
        }
	});
	
}
function EliminarRegistro(){
	   var carnet=validar_numerovacio('codigo');
		
		var action="eliminar";
		cadena = [ 	'carnet='   + carnet,'a='+action].join('&');
		$.ajax({
	        url: "../Paciente",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		 MensajeServidor(1,data.descripcion);	
	        		 limpiartabla();
	         		limpiar_campos();
	         		document.getElementById("guard").style.display = 'block';
	     			document.getElementById("Mod").style.display = 'none';
	     			document.getElementById("ini").style.display = 'none';
	        			
	        		 limpiartabla();
	        	}else{
	        		MensajeServidor(2,"Error, el alimento esta siendo utilizado en otro registro y no puede ser eliminado");
	        		
	        	}
	        }
	    });
	
	
}

function limpiartabla(){

	  $('#flex1').flexReload();
}
function MensajeServidor(codigo,descripcion){
	if(codigo==1){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'green';
	}else if(codigo==2){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'red';
	}else if(codigo==3){
		document.getElementById('mensajes').innerHTML = "";
	}
}
function DatosSeleccionados(id){
	idUSUARIO=id;
	MensajeServidor(3,"");
	document.getElementById("codigo").readOnly = true;
	document.getElementById('codigo').value = id;
	BuscarPaciente(id);
	document.getElementById("guard").style.display = 'none';
	document.getElementById("Mod").style.display = 'block';
	document.getElementById("ini").style.display = 'none';
	
}
function NuevoRegistro(){
	limpiar_campos();
	document.getElementById("guard").style.display = 'block';
	document.getElementById("Mod").style.display = 'none';
	document.getElementById("ini").style.display = 'none';
	MensajeServidor(3,"");
}
function valorselect(entrada){
	var resultado="";
	if(entrada=='1'){
		resultado="activo";
	}else if(entrada=='2'){
		resultado="inactivo";
	}
	return resultado;
}
function valorselectInverso(entrada){
	var resultado=0;
	if(entrada=='activo'){
		resultado=1;
	}else if(entrada=='inactivo'){
		resultado=2;
	}
	return resultado;
}
function CargaFacultad(){
	var resultado="";
	var action="buscar";
	var carnet="a";
	cadena = [ 	'carnet='   + carnet,'a='+action].join('&');
	$.ajax({
        url: "../Facultad",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        		resultado="<option value=\"0\"></option>";
        	    for ( i=0; i < data.resultado.length; i++) {  
        	    	resultado+="<option value=\""+data.resultado[i].id+"\">"+decodeURIComponent(data.resultado[i].nombre)+"</option>";
        	      
        	    }
        	   // document.getElementById("NRegPacienteEncontrado").style.display = 'none';
        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'block';
        	   
    			var marcos="<select class=\"form-control input-sm\" id=\"facultad1\" name=\"facultad1\" onkeydown=\"CambioFac(event)\">";
    			marcos+=resultado+"</select>";
    			
    			var labelfac='<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Facultad/Dependencia</label>&nbsp;'
    			document.getElementById("dep5").innerHTML =labelfac+ marcos;
    			AccionCarnetCarga=true;
        }
	});
	
}
function BuscarPaciente(entrada){
	var carnet="";
	carnet=entrada;
	
	var action="PacienteTabla";
	cadena = [ 	'carnet='   + carnet,'a='+action].join('&');
	$.ajax({
        url: "../Paciente",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	
        	if(data.resultado=='OK'){
   	        		document.getElementById('nombre1').value  = data.nombre;
	        		document.getElementById('sexo1').value  = data.sexo;
	        		document.getElementById('edad1').value  = data.fecha;
	        		document.getElementById('facultad1').value  = data.facultad;
	        		document.getElementById('cui1').value  = data.CUI;
	        		document.getElementById('correo1').value  = data.correo;
	        		document.getElementById('telefono1').value  = data.telefono;
	        		document.getElementById('tipopaciente1').value=data.TipoPaciente;
	        		document.getElementById('fechaNac').value  = data.fechaNac;
        	}
        	
        }
    });
	
}
function ValidarFecha(){
	var texto=document.getElementById('fechaNac').value;
	if(texto!=""){
		 var res2 = texto.split("-");
		 texto=res2[2]+"/"+res2[1]+"/"+res2[0];
		 var res = texto.split("/");
		 var longitud=res.length;
		 if(longitud==3){
			 var dia = res[0];
			 var mes = res[1];
			 var ano = res[2];
			 
			 if(dia<32&&mes<13){
				 fecha_hoy = new Date();
    			 ahora_ano = fecha_hoy.getYear();
    			 ahora_mes = fecha_hoy.getMonth();
    			 ahora_dia = fecha_hoy.getDate();
    			 edad = (ahora_ano + 1900) - ano;
    			     
    			     if ( ahora_mes < (mes - 1)){
    			       edad--;
    			     }
    			     if (((mes - 1) == ahora_mes) && (ahora_dia < dia)){ 
    			       edad--;
    			     }
    			     if (edad > 1900){
    			         edad -= 1900;
    			     }
    			     if(edad>0){
    			    	 document.getElementById("edad1").value=edad;
    			    	 document.getElementById("correo1").focus();
    			     }else{
    			    	 //Edad invalida
    			    	 alert(" Edad invalida");
    			    	 document.getElementById('fechaNac').value="";
    			     }
    			     
			 }else{
				//fecha invalida
				 alert(" Fecha de nacimiento invalida");
				 document.getElementById('fechaNac').value="";
			 }
			 
		 }else{
			 //formato fecha invalido
			 alert(" Formato de fecha de nacimiento invalida");
			 document.getElementById('fechaNac').value="";
		 }
		 
	}
}
document.getElementById('fechaNac').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		ValidarFecha();
		 return false;
       
	}
}
document.getElementById('nombre1').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("cui1").focus();
		 return false;
       
	}
}
document.getElementById('cui1').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("facultad1").focus();
		 return false;
       
	}
}
function CambioFac(event){
	if(event.keyCode == 13){
		
		document.getElementById("tipopaciente1").focus();
		 return false;
       
	}
}
function CambioTEx(event){
	if(event.keyCode == 13){
		
		document.getElementById("nombre1").focus();
		 return false;
       
	}
}
document.getElementById('tipopaciente1').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("sexo1").focus();
		 return false;
       
	}
}
document.getElementById('sexo1').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("fechaNac").focus();
		 return false;
       
	}
}
document.getElementById('correo1').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("telefono1").focus();
		 return false;
       
	}
}
</script>
        

            
            
        
        </div>
        </div>
        </section>
        </div>
        <footer class="row col-sm-12">
        <div class="panel panel-body">
        <p>Edificio Bienestar Estudiantil 3er Nivel, Ciudad Universitaria Zona 12, Guatemala C.A TELEFONO: 24188000 FAX:24189633</p>
        </div>
        </footer>
        </div>
        </div>
        </body>

        </html>