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
        <li> <a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/Trifoliar.jsp"> <span class="glyphicon glyphicon-home"></span> Inicio </a> </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Mantenimiento </a>
	        <ul>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/Trifoliar.jsp"> <span class="glyphicon glyphicon-home"></span> Manejo de Trifoliar </a></li>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/RegistroAlimento.jsp"> <span class="glyphicon glyphicon-book"></span> Registro de alimentos </a></li>
		    </ul>
         </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Consulta externa </a> 
        	<ul>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/ExamenesNutricion/ConsultaExterna.jsp"><span class="glyphicon glyphicon-list-alt"></span>Nuevo</a></li>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/MantenimientoConsultaExterna.jsp"><span class="glyphicon glyphicon-list-alt"></span>Registros</a></li>
		    </ul>
        </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Multifasico </a>
        	<ul>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp"><span class="glyphicon glyphicon-list-alt"></span>Nuevo</a></li>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/ListadoMultifasico.jsp"><span class="glyphicon glyphicon-list-alt"></span>Registros</a></li>
		    </ul>
        </li>
        </ul>
        </nav>
        
        <section class="col-sm-10">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Registro de Usuarios</h3>
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
	 <div class="row">  
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Codigo</label>
		<input class="form-control input-sm" name="codigo" id="codigo" type="number" readonly/>
	  </div>
	 </div>
	<div class="row">  
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Usuario</label>
		<input class="form-control input-sm" name="usuario" id="usuario"  required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Contraseña</label>
		<input class="form-control input-sm" name="pass" id="pass" type="password" required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Nombre</label>
		<input class="form-control input-sm" name="noombre" id="nombre" required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Correo</label>
		<input class="form-control input-sm" name="correo" id="correo" type="email" required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Estado</label>
		 <select class="form-control input-sm" id="estado">
				<option value="1" >Activo</option>
				<option value="2" >Inactivo</option>
		</select>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Area</label>
		 <select class="form-control input-sm" id="area">
				<option value="1" >Nutricion</option>
				<option value="2" >Administracion</option>
		</select>
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
$("#flex1").flexigrid
(
{
url: '../Usuario',
method: 'POST',
dataType: 'xml',
colModel : [
	{display: 'Seleccionar', name : 'chktradio', width : 90, sortable : false, align: 'left'},
	{display: 'ID', name : 'idUSUARIO', width : 50, sortable : true, align: 'center'},
	{display: 'usuario', name : 'usuario', width : 80, sortable : true, align: 'left'},
	{display: 'nombre', name : 'U.nombre', width : 120, sortable : true, align: 'left'},
	{display: 'estado', name : 'estado', width : 120, sortable : true, align: 'left'},
	{display: 'area', name : 'R.nombre', width : 120, sortable : true, align: 'left'}
	],
searchitems : [
	{display: 'ID', name : 'idUSUARIO', isdefault: true},
	{display: 'usuario', name : 'usuario'},
	{display: 'nombre', name : 'U.nombre'},
	{display: 'estado', name : 'estado'},
	{display: 'area', name : 'R.nombre'}
	],
sortname: "idUSUARIO",
sortorder: "asc",
usepager: true,
title: 'Registro de usuarios',
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
    		
    		if(PerfilSesion=="admi"){
				document.getElementById("UsuarioSesion").innerHTML ='<label>Usuario:'+UsuarioSesion+' | <a id="CerrarSesion1" title="Cerrar sesion" href="#" onclick="CerrarSesion(); return false;"  style="color: blue;">Cerrar sesion</a>&nbsp;&nbsp;&nbsp;&nbsp;</label>'
			
			}else{
				window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
			}
		}
		
	}
	else{
		document.cookie = "CookieUsuario="+encodeURIComponent(UsuarioSesion);
		document.cookie = "CookieIDUsuario="+encodeURIComponent(IdUsuarioSesion);
		document.cookie = "CookiePerfil="+encodeURIComponent(PerfilSesion);
		
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
	
	
}
function CerrarSesion(){
	<%misession.setAttribute("NUSUARIO", "null");%>
    <%misession.setAttribute("NIDSUARIO", "null");%>
    <%misession.setAttribute("NPERFIL", "null");%>
        		
     document.cookie = "CookieUsuario=; max-age=0";
     document.cookie = "CookieIDUsuario=; max-age=0";
     document.cookie = "CookiePerfil=; max-age=0";
	
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
function Guardar(){
	var usuario=document.getElementById('usuario').value;
	var pass=document.getElementById('pass').value;
	var nombre=document.getElementById('nombre').value;
	var correo=validar_email(document.getElementById('correo').value);
	var estado=valorselect(document.getElementById('estado').value);
	var area=document.getElementById('area').value;
	
	if(usuario!=""&&pass!=""&&nombre!=""&&correo!=""){
		AñadirUsuarioBD(usuario,pass,nombre,correo,estado,area);
	}else{
		MensajeServidor(2,"Error, faltan campos a ingresar");
	}
}
function Modificar(){
	var codigo=document.getElementById('codigo').value;
	var usuario=document.getElementById('usuario').value;
	var pass=document.getElementById('pass').value;
	var nombre=document.getElementById('nombre').value;
	var correo=validar_email(document.getElementById('correo').value);
	var estado=valorselect(document.getElementById('estado').value);
	var area=document.getElementById('area').value;
	
	if(usuario!=""&&pass!=""&&nombre!=""&&correo!=""&&codigo!=""){
		var action="modificar";
		var cadena = ['a='+action,'codigo='+codigo,'usuario='+usuario,'pass='+pass,'nombre='+nombre
		              ,'correo='+correo,'estado='+estado,'area='+area].join('&');


		$.ajax({
	        url: "../Usuario",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	if(data.resultado=='OK'){
	        		limpiartabla();
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
function AñadirUsuarioBD(usuario,pass,nombre,correo,estado,area){
	var action="agregar";
	var cadena = ['a='+action,'usuario='+usuario,'pass='+pass,'nombre='+nombre,'correo='+correo
	              ,'estado='+estado,'area='+area].join('&');


	$.ajax({
        url: "../Usuario",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		idUSUARIO=0;
        		document.getElementById('codigo').value = "";
        		document.getElementById('usuario').value = "";
        		document.getElementById('pass').value = "";
        		document.getElementById('nombre').value = "";
        		document.getElementById('correo').value = "";
        		document.getElementById('estado').value = 1;
        		document.getElementById('area').value = 1;
        		limpiartabla();
        		MensajeServidor(1,"Registro almacenado correctamente");
        	}else{
        		MensajeServidor(2,data.descripcion);
        	}
        	
        	
        	
        }
	});
	
}
function EliminarRegistro(){
	if(idUSUARIO==0){
		MensajeServidor(2,"Error, seleccione un registro valido");		
	}
	else{
		
		var action="eliminardato";
		cadena = [ 	'idUSUARIO='   + idUSUARIO,
	             	'a='+action
	            ].join('&');
		$.ajax({
	        url: "../Usuario",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		 MensajeServidor(1,data.descripcion);	
	        		 
	        		    document.getElementById('codigo').value ="";
	        			document.getElementById('usuario').value ="";
	        			document.getElementById('pass').value ="";
	        			document.getElementById('nombre').value ="";
	        			document.getElementById('correo').value ="";
	        			document.getElementById('estado').value = 1;
	        			document.getElementById('area').value = 1;
	        			idUSUARIO=0;
	        			document.getElementById("guard").style.display = 'block';
	        			document.getElementById("Mod").style.display = 'none';
	        			document.getElementById("ini").style.display = 'none';
	        			
	        			document.getElementById("usuario").readOnly = false;
	        			
	        		 limpiartabla();
	        	}else{
	        		MensajeServidor(2,"Error, el alimento esta siendo utilizado en otro registro y no puede ser eliminado");
	        		
	        	}
	        }
	    });
	}
	
}
function CargaRegistro(id){
	if(idUSUARIO==0){
		MensajeServidor(2,"Error, seleccione un registro valido");		
	}
	else{
		
		var action="CargaRegistro";
		cadena = [ 	'idUSUARIO='   + id,
	             	'a='+action
	            ].join('&');
		$.ajax({
	        url: "../Usuario",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		// MensajeServidor(1,data.descripcion);	
	        		 document.getElementById('usuario').value = data.usuario;
	        		 document.getElementById("usuario").readOnly = true;
	        		 document.getElementById('pass').value = data.pass;
	        		 document.getElementById('nombre').value = data.nombre;
	        		 document.getElementById('correo').value = data.correo;
	        		 document.getElementById('estado').value = valorselectInverso(data.estado);
	        		 document.getElementById('area').value = data.rol;
	        		 idUSUARIO=id;
	        	}else{
	        		MensajeServidor(2,"Error, el alimento esta siendo utilizado en otro registro y no puede ser eliminado");
	        		
	        	}
	        }
	    });
	}
	
}
function limpiartabla(){
	  
	idUSUARIO="0";
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
	document.getElementById('codigo').value = id;
	CargaRegistro(id);
	document.getElementById("ini").style.display = 'none';
	document.getElementById("guard").style.display = 'none';
	document.getElementById("Mod").style.display = 'block';
	
}
function NuevoRegistro(){
	document.getElementById('codigo').value ="";
	document.getElementById('usuario').value ="";
	document.getElementById('pass').value ="";
	document.getElementById('nombre').value ="";
	document.getElementById('correo').value ="";
	document.getElementById('estado').value = 1;
	document.getElementById('area').value = 1;
	idUSUARIO=0;
	document.getElementById("guard").style.display = 'block';
	document.getElementById("Mod").style.display = 'none';
	document.getElementById("ini").style.display = 'none';
	MensajeServidor(3,"");
	document.getElementById("usuario").readOnly = false;
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