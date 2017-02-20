<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        
        
         <link rel="stylesheet" href="../cleditor/script/jquery.cleditor.css" />
         
         
		
		<script src="../cleditor/script/jquery.min.js"></script>
	   <script src="../cleditor/script/jquery.cleditor.min.js"></script>
	   
	
	    
		
		
	    
	    
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
	    
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
			.container {
			    width: 70%;
			    padding-top:15px;
			}
			.panel-heading {
			    padding: 6px 15px;
			    }
			
			.input-sm {
			    height: 26px;
			    font-size: 11px;
			}
			 ul, ul li {
				 color: black;
			}
			.nav > li > a:hover, .nav > li > a:focus {
			    background-color: #112D58;
			    color:white;
			}
			.btn-default {
			    color: #333;
			    background-color: #D8D6D6;
			    border-color: #ccc;
			}
			
		
		</style>
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:8pt; }
       	
        
       
	</style>
		<script type="text/javascript">
        $(document).ready(function ($) { $("#contenido").cleditor(); });
    </script>
	
		<script type="text/javascript">	
		
			
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
    	
    	

<style>

	body
		{
		font-family: Arial, Helvetica, sans-serif;
		font-size: 12px;
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
        <li> <a href="/ModuloNutricion/ExamenesNutricion/Inicio.jsp"> <span class="glyphicon glyphicon-home"></span> Inicio </a> </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Mantenimiento </a>
	        <ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3" style="background-color: #E0E0E0;">
				<li><a href="/ModuloNutricion/ExamenesNutricion/Trifoliar.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Manejo de Trifoliar </a></li>	
				<li><a href="/ModuloNutricion/ExamenesNutricion/RegistroAlimento.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Registro de alimentos </a></li>
				<li><a href="/ModuloNutricion/ExamenesNutricion/TablaDieta.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Tablas de dietas </a></li>
		    </ul>
         </li>
         <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Citas </a>
        	<ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3" style="background-color: #E0E0E0;">
				<li><a href="/ModuloNutricion/ExamenesNutricion/Citas.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Nuevo</a></li>
				<li><a href="/ModuloNutricion/ExamenesNutricion/cal.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Calendario </a></li>
			</ul>
        </li>
        <li> <a href="/ModuloNutricion/ExamenesNutricion/ConsultaExterna.jsp"> <span class="glyphicon glyphicon-book"></span> Consulta externa </a> 
        	
        </li>
        <li> <a href="/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp"> <span class="glyphicon glyphicon-book"></span> Multifasico </a>
        	
        </li>
        <li> <a href="/ModuloNutricion/ExamenesNutricion/Reporte.jsp"> <span class="glyphicon glyphicon-book"></span> Reportes </a>
        	
        </li>
        </ul>
        </nav>
        
        <section class="col-sm-10">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Manejo de Trifoliares</h3>
        </div>
        <div class="panel-body">
	
	
	
	
	
	 <form action="../RegistroAlimento" method="post" class="form-inline" role="form" onsubmit="return false">
	
    
     <div class="row">  
	  <div class="form-group">
		
		
		<textarea class="form-control input-sm" id="contenido" cols="50" rows="25"></textarea>
		
	  </div>
     </div>
    
    
  
     
   <label id="mensajes">.</label>
      
     <div class="row" align="center" id="guard" >
      		<div class="form-group" >			
							<button class="btn btn-default" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Guardar" />Guardar</button>
							
			</div>
		</div>
     
     
	 	
	 </form>
<script type="text/javascript">
var UsuarioSesion = "null";
var IdUsuarioSesion = "null";
var PerfilSesion ="null";

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
    		
    		if(PerfilSesion=="nutri"){
				document.getElementById("UsuarioSesion").innerHTML ='<label>Usuario:'+UsuarioSesion+' | <a id="CerrarSesion1" title="Cerrar sesion" href="#" onclick="CerrarSesion(); return false;"  style="color: blue;">Cerrar sesion</a>&nbsp;&nbsp;&nbsp;&nbsp;</label>';
				CargaRegistro();
			}else{
				alert("sale2");
				window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
			}
		}
		
	}
	else{
		document.cookie = "CookieUsuario="+encodeURIComponent(UsuarioSesion);
		document.cookie = "CookieIDUsuario="+encodeURIComponent(IdUsuarioSesion);
		document.cookie = "CookiePerfil="+encodeURIComponent(PerfilSesion);
		
		if(PerfilSesion=="nutri"){
			document.getElementById("UsuarioSesion").innerHTML ='<label>Usuario:'+UsuarioSesion+' | <a id="CerrarSesion1" title="Cerrar sesion" href="#" onclick="CerrarSesion(); return false;"  style="color: blue;">Cerrar sesion</a>&nbsp;&nbsp;&nbsp;&nbsp;</label>';
			CargaRegistro();
		}else{
			window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
		}
	}
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

function CargaInicio(){
	document.getElementById("guard").style.display = 'block';
	VerificarSesion();
}
</script>

<script type="text/javascript">
var idTRIFOLIAR=0;





var pesoArchivo=false;
//This function adds paramaters to the post of flexigrid. You can add a verification as well by return to false if you don't want flexigrid to submit			

	

function EditarRegistro(){
	if(idTRIFOLIAR=="0"){
		MensajeServidor(2,"Error, seleccione un registro valido");
	}else{
		//window.location.replace("/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp?MID="+idMultifasicos);
	}
}
function validar_vacio(entrada){
	var resultado="";
	if(entrada!=""){
		resultado=entrada;
	}
	return resultado;
}
function Guardar(){

	var aux=''+document.getElementById('contenido').value+'';
	
	var contenido=encodeURI(aux);
	
	if(contenido!=""){
		AñadirRegistro(contenido);
	}else{
		MensajeServidor(2,"Error, faltan campos a ingresar");
	}
	
}



function AñadirRegistro(contenido){
	var action="ModificarInicio";
	var cadena = ['a='+action,'contenido='+contenido].join('&');
	

	$.ajax({
        url: "../TablaTrifoliar",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		//$('#contenido').val('').blur();
        		
        		MensajeServidor(1,"Registro almacenado correctamente");
        		
        	}else{
        		MensajeServidor(2,data.descripcion);
        	}
        	
        	
        	
        }
	});
	
}
function CargaRegistro(){
	var action="cargaInicio";
	cadena = [ 	'idTRIFOLIAR='+1,'a='+action].join('&');
		$.ajax({
	        url: "../TablaTrifoliar",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		var textos= decodeURI(data.contenido);
	        		$('#contenido').val(textos).blur();
	        	}else{
	        		MensajeServidor(2,"Error, no se puede eliminar");
	        		
	        	}
	        }
	    });
	
	
}


function MensajeServidor(codigo,descripcion){
	if(codigo==1){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'green';
	}else if(codigo==2){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'red';
	}else if(codigo==3){
		document.getElementById('mensajes').innerHTML = '';
	}
}


function Contenido(){
	$('#contenido').val('<p>new text data</p>').blur();
	var codigo=document.getElementById('contenido').value;
	//alert(codigo);
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