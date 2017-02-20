<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
       
       <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
       <link rel="shortcut icon" href="http://usalud.usac.edu.gt/favi.ico" type="image/x-icon">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   

  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>

  
 
        
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
		
		

	  	
	  	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	    
	   <link href="../jquery/menuacordeon/css/dcaccordion.css" rel="stylesheet" type="text/css" />
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.cookie.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.hoverIntent.minified.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.dcjqaccordion.2.7.min.js'></script>
    	
    	<style type="text/css">
			#titulos { color: black; word-spacing: -5 px; letter-spacing: 3px;}
			#header_carousel { float:right; }
			#MenuPrueba{
				background-color: #E0E0E0;
			}
			.foto-inicio{	width:100%; height:100px; 	}
			.page-header {
			    padding-bottom: 9px;
			    margin: 0px 0 0px;
			}
			.container {
			    width: 70%;
			    padding-top:15px;
			}
			.input-sm {
			    height: 26px;
			    font-size: 11px;
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
			 ul, ul li {
				 color: black;
			}
			.nav > li > a:hover, .nav > li > a:focus {
			    background-color: #112D58;
			    color:white;
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
				 $("#MensajeServidor").on('hide.bs.modal', function () {
					 AccionPagina();
			    });
			});
    	</script>
    	
    	<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
        </head>

        <body onload="CargaInicio()">
        <div class="modal fade" id="MensajeServidor" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Mensaje</h4>
							        </div>
							        <div class="modal-body">
								    	<table>
							        	<tr><td><img src="../images/ok.jpg" width="50" height="50" /></td><td>&nbsp;<div id="MensajeAux"></div></td></tr>
							        	
							        </table>
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal">Aceptar</button>
							        </div>
							      </div>
							    </div>
							  </div>
		<div class="modal fade" id="ErroresModal" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Mensaje</h4>
							        </div>
							        <div class="modal-body">
							        <table>
							        	<tr><td rowspan="2"><img src="../images/error.jpg" width="50" height="50" /></td><td>&nbsp;<b>Error:</b></td></tr>
							        	<tr><td>&nbsp;<div id="Errortxt"></div></td></tr>
							        </table>
							      		
							      		                                                                              
								    
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal">Aceptar</button>
							        </div>
							      </div>
							    </div>
							  </div>
		<div class="modal fade" id="EliminarRegistroModal" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Mensaje</h4>
							        </div>
							        <div class="modal-body">
							      		
							      		<table>
							        	<tr><td rowspan="2"><img src="../images/alerta.jpg" width="50" height="50" /></td><td>&nbsp;¿Desea eliminar este registro?</td></tr>
							        	
							        </table>
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="Eliminar()">Aceptar</button>
							          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
							        </div>
							      </div>
							    </div>
							  </div>
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
        
        <section class="col-sm-9">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Reconsulta</h3>
        </div>
        <div class="panel-body">
        
 <form action="../Reconsulta" method="post" class="form-inline" role="form" onsubmit="return false">
   <article>
<div class="panel panel-primary">
	<div class="panel-heading">Datos Generales</div>
		<div class="panel-body" >
			 <div class="row-fluid">  
      		 	&nbsp;&nbsp;
      		 	<div class="form-group">
					<label  for="NCarnet">Carnet/Codigo Personal</label>
					<input class="form-control input-sm" name="carnet" id="carnet" type="number" style="width: 110px;" readonly/>
				  </div>
				 &nbsp;
				<div class="form-group">
				    <label for=LNombre>Nombre</label>
				    <input class="form-control input-sm" type="text"  name="nombre" id="nombre"  readonly />
				</div>
				&nbsp;
				<div class="form-group">
				    <label for=LNombre>Sexo</label>
				    <input class="form-control input-sm" type="text"  name="sexo" id="sexo" style="width: 80px;"readonly  />
				</div>
				&nbsp;
				<div class="form-group" >
				    <label for=LNombre>Edad</label>
				    <input class="form-control input-sm" type="text"  name="edad" id="edad" style="width: 70px;" readonly  />
				</div>
				</div>
				<div class="row-fluid">
				&nbsp;&nbsp;
				<div class="form-group">
				    <label for=LNombre>Facultad/Dependencia</label>
				    <input class="form-control input-sm" type="text"  name="facultad" id="facultad" style="width: 110px;"readonly  />
				</div>
				 &nbsp;
				 
				<div class="form-group">
				  
					  <label for="LFecha">Fecha</label>
					  <input class="form-control input-sm" id="fecha" type="text" style="width:80px" disabled/>
				  </div>
				  &nbsp;
				  
				 
				  </div>
			
			<div class="row" align="center">
				  <div id="TablaEncargado"></div>
			</div> 
			<div class="row" align="center">
				  <div id="RegMulti"></div>
			</div>      	
		</div>
</div>
  </article>	
  <article>
<div class="panel panel-primary">
	<div class="panel-heading">Datos objetivos</div>
		<div class="panel-body" align="center">
			      	
		  <div class="row-fluid">  
			<div class="form-group">
				<label for="Ltalla">Talla (m)<br>&nbsp;</label>
				<input class="form-control input-sm" id="talla" name="talla" type="number"  min="0" max="5" step="any"  style="width: 70px;" onkeyup="ValidarDecimal()" required/>
			</div>
			&nbsp;
			<div class="form-group">
				<label for="LpesoI">Peso (Lbs)<br>&nbsp;</label>
				<input class="form-control input-sm" id="pesoL" name="pesoL" type="number" step="any" min="0"  style="width: 70px;" required/>      	
			</div>
			&nbsp;
			<div class="form-group">
				<label for="Lpeso">Peso (Kg)<br>&nbsp;</label>
				<input  class="form-control input-sm"id="peso" name="peso" type="number"  min="0"  step="any"  style="width: 70px;"  readonly required/>	   
			</div>
			 &nbsp;
			<div class="form-group">
				<label for="LpesoM">Peso ganado<br>(Lbs)</label>
				<input class="form-control input-sm" id="pesoG" name="pesoG" type="number" min="0" step="any"   style="width: 70px;" readonly required/>               
			</div>
			&nbsp;
			<div class="form-group">
				<label for="LpesoM">Peso perdido<br>(Lbs)</label>
				<input class="form-control input-sm" id="pesoP" name="pesoP" type="number" min="0" step="any"   style="width: 70px;" readonly required/>               
			</div>
			&nbsp;
			<div class="form-group">
					 <label for="Lims">IMC<br>&nbsp;</label>
					 <input class="form-control input-sm" id="imc" name="imc" type="number"  min="0" step="any"  style="width: 70px;" readonly required/>                
				</div>
			&nbsp;
				<div class="form-group">
					 <label for="LDiag">Diagnostico<br>&nbsp;</label>
					 <input class="form-control input-sm" id="Diag" name="Diag" type="text"  readonly style="width: 85px;" required/>            
				</div>
			 
			<div class="form-group">
				<label for="LpesoM">Cintura<br>abdominal</label>
				<input class="form-control input-sm" id="cintura" name="cintura" min="0" type="number" step="any"   style="width: 70px;" required/>               
			</div>
			&nbsp;
				<div class="form-group">
					 <label for="Lims">Porcentaje<br>de grasa</label>
					 <input class="form-control input-sm" id="pgrasa" name="pgrasa" min="0" type="number" step="any"   style="width: 70px;" required/>                
				</div>
			&nbsp;
				<div class="form-group">
					 <label for="LDiag">Porcentaje<br>de agua</label>
					 <input class="form-control input-sm" id="pagua" name="pagua" type="number" min="0"  style="width: 70px;" required/>            
				</div>
			&nbsp;
				<div class="form-group">
					 <label for="LDiag">Grasa visceral<br>&nbsp;</label>
					 <input class="form-control input-sm" id="grasavisceral" name="grasavisceral" type="number"  min="0" style="width: 70px;" required/>            
				</div>
			&nbsp;
				<div class="form-group">
					 <label for="Lims">Masa osea<br>&nbsp;</label>
					 <input class="form-control input-sm" id="masaosea" name="masaosea" type="number" step="any" min="0" style="width: 70px;" required/>                
				</div>
			&nbsp;
				<div class="form-group">
					 <label for="LDiag">VET TANITA<br>&nbsp;</label>
					 <input class="form-control input-sm" id="vettanita" name="vettanita" type="number" min="0" style="width: 70px;" required/>            
				</div>
				
			</div>			
		</div>
</div>
  </article>
  <article>
<div class="panel panel-primary">
	<div class="panel-heading">Plan</div>
		<div class="panel-body" >
		  <div class="row-fluid">
			<div class="form-group">
				<label for="Ltricipital" style="background-color: #337ab7; margin: 0px 0 0px;"><font color="white">&nbsp;Datos subjetivos</font></label>
				<textarea class="form-control input-sm" name="datossubjetivos" id="datossubjetivos" cols="20" rows="2" maxlength="240"></textarea>
						   
			</div>
			&nbsp;
			<div class="form-group">
				<label for="Lsubescapular" style="background-color: #337ab7; margin: 0px 0 0px;"><font color="white">&nbsp;Tratamiento</font></label>
				<textarea class="form-control input-sm" name="tratamiento" id="tratamiento"  cols="20" rows="2" maxlength="240"></textarea>
						   
			</div>
			&nbsp;
			<div class="form-group">
				<label for="Lsumapliegues" style="background-color: #337ab7; margin: 0px 0 0px;"><font color="white">&nbsp;Educacion Alimentaria Nutricional</font></label>
				<textarea class="form-control input-sm" name="educacionalimentaria" id="educacionalimentaria" cols="25" rows="2" maxlength="240"></textarea>
				 
			</div>
		  </div>				
		</div>
</div>
  </article>
  </br>
             <div class="row" align="center" id="Guard" >
      		<div class="form-group" >			
							<button class="btn btn-default" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Guardar" />Guardar</button>
							
			</div>
			</div>
			<div class="row" align="center" id="Mod" >
            <div class="form-group" >			
							<button class="btn btn-default" onclick="Modificar()" id="BtnMod">
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Modificar" />Modificar</button>
							
			</div>
			<div class="form-group" >		
							<button class="btn btn-default" onclick="EliminarRegistro()" id="BtnEl" >
						     <img src="../imagenes/eliminar.png" width="40" height="30" title="Eliminar" />Eliminar</button>
							
			</div>
		</div>
</form>
        
<script>
        	var pesoL=0;
        	var idCE="";
        	var idRec=""; 
        	var UsuarioSesion = "null";
    		var IdUsuarioSesion = "null";
    		var PerfilSesion ="null";
    		var ERRORSQL=false;
    		
    		var IDCarnet="";
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
            			
            			}else{
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
        	function CargaInicio() {
        		VerificarSesion();
        		AgregarFecha();
        		
        		//idCE = getUrlVars()["prodId"];
        		//idRec=getUrlVars()["idRec"];
        		
        		IDCarnet=getUrlVars()["idc"];
        		if(IDCarnet!=undefined){
        			document.getElementById("Guard").style.display = 'block';
        			document.getElementById("Mod").style.display = 'none';
        			CargarDatosGenerales(IDCarnet);
        		}else{
        			alert("Error al cargar, ingrese nuevamente");
        			window.location.replace("/ModuloNutricion/ExamenesNutricion/ConsultaExterna.jsp");
        		//	if(idRec!=undefined){
            	//		CargarEdicion(idRec);
            	//		document.getElementById("Guard").style.display = 'none';
            	//		
            	//	}else{
            	//		if(idCE==undefined){
            				//alert('Error reload');
            	//		}else{
            	//			CargarTallaPeso(idCE);
            	//			document.getElementById("Mod").style.display = 'none';
            	//		}
            	//	}
        		}
        		
        		
        		
        	}
        	function CargarDatosGenerales(entrada){
        	    var action="CargarDatosGeneralesCarnet";
        		cadena = [ 	'carnet=' + entrada,'a='+action].join('&');
        		$.ajax({
        	        url: "../Reconsulta",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		document.getElementById('carnet').value=data.idPACIENTE;
        		        	document.getElementById('nombre').value=data.nombre;
        		        	document.getElementById('edad').value=data.edad;
        		        	document.getElementById('sexo').value=data.sexo;
        		        	document.getElementById('facultad').value=data.facultad;
        		        	document.getElementById('talla').value  = data.talla;
        		        	pesoL=parseInt(data.peso);
        		        	GenerarRegistrosReconsulta2(data.total2,data.RRECONSULTA,data.total1,data.CCE);
        	        	}else{
        	        		// Salir de la pagina intentar nuevamente
        	        		VentanaError("Hubo un problema al cargar la informacion, ingrese nuevamente");
        	        		document.getElementById("Guard").style.display = 'none';
                			document.getElementById("Mod").style.display = 'none';
        	        		//alert("Error al cargar");
        	        	}
        	        	
        	        }
        		});
        	}
        	function CargarNuevoTallaPeso(entrada){
        	    var action="CargaNuevosDatos";
        		cadena = [ 	'carnet=' + entrada,'a='+action].join('&');
        		$.ajax({
        	        url: "../Reconsulta",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        		        	document.getElementById('talla').value  = data.talla;
        		        	pesoL=parseInt(data.peso);
        	        	}else{
        	        		// Salir de la pagina intentar nuevamente
        	        		VentanaError("Hubo un problema al cargar la informacion, ingrese nuevamente");
        	        		//alert("Error al cargar");
        	        	}
        	        	
        	        }
        		});
        	}
        	function GenerarRegistrosReconsulta2(total,data,totalc,dataCE){
        		var marcodiv='<div class="form-group"><label for="RegM">Registros de consulta</label><select class="form-control input-sm" id="RMulti" onchange=CambioRegMulti2()>';
        		var opciones='<option value=0>Nuevo</option>';
        		if(totalc!=0){
        			for(i=0;i<totalc;i++){
        				opciones+='<option value='+dataCE[i].idCONSULTA_EXTERNA+' style="font-weight:bold;"><b>'+dataCE[i].fecha+','+dataCE[i].TIPO+'</b></option>';
        				if(total!=0){
        					for(j=0;j<total;j++){
        						if(dataCE[i].idCONSULTA_EXTERNA==data[j].idCONSULTA_EXTERNA){
        							opciones+='<option value='+data[j].idRECONSULTA+'>'+data[j].fecha+','+data[j].TIPO+'</option>';
        						}
                				
                			}
        				}
        			}
        		}
        		
        		var fin='</select></div>'
        		var componente=marcodiv+opciones+fin;
        		document.getElementById("RegMulti").innerHTML =componente;
        		document.getElementById("talla").focus();
        	}
        	function CambioConsulta(entrada){
    			
    				window.location.replace("/ModuloNutricion/ExamenesNutricion/ConsultaExterna.jsp?idCE="+entrada);
    			
    			
    		}
        	function CambioRegMulti2(){
        		var valor=document.getElementById('RMulti').value;
        		document.getElementById("TablaEncargado").innerHTML = "";
        		if(valor!=0){
        			var x = document.getElementById("RMulti").selectedIndex;
        			var y = document.getElementById("RMulti").options;
        			var res = y[x].text.split(",");
        			if(res[1]=="Pr. Consulta"){
        				CambioConsulta(valor);
        			}
        			else{
        				idRec=valor;
            			document.getElementById("Guard").style.display = 'none';
            			document.getElementById("Mod").style.display = 'block';
            			CargarEdicion(idRec);
        			}
        			
        			
        			
        		}else{
        			document.getElementById("Mod").style.display = 'none';
        			document.getElementById("Guard").style.display = 'block';
        			document.getElementById("BtnMod").disabled = false;
        			
        			document.getElementById('talla').value  = "";
        			document.getElementById('pesoL').value  = "";
        			document.getElementById('imc').value  = "";
        			document.getElementById('pesoG').value  = "";
        			document.getElementById('pesoP').value= "";
        			
        			document.getElementById('peso').value  = "";
        			document.getElementById('Diag').value= "";
        			
        			document.getElementById('cintura').value= "";
        			document.getElementById('pgrasa').value= "";
        			document.getElementById('pagua').value= "";
        			document.getElementById('grasavisceral').value= "";
        			document.getElementById('masaosea').value= "";
        			document.getElementById('vettanita').value= "";
        			
        			document.getElementById('datossubjetivos').value= "";
        			document.getElementById('tratamiento').value= "";
        			document.getElementById('educacionalimentaria').value= "";
        			
        			document.getElementById('talla').readOnly = false;
        			document.getElementById('pesoL').readOnly = false;
        			
        			document.getElementById('cintura').readOnly = false;
        			document.getElementById('pgrasa').readOnly = false;
        			document.getElementById('pagua').readOnly = false;
        			document.getElementById('grasavisceral').readOnly = false;
        			document.getElementById('masaosea').readOnly = false;
        			document.getElementById('vettanita').readOnly = false;
        			
        			document.getElementById('datossubjetivos').readOnly = false;
        			document.getElementById('tratamiento').readOnly = false;
        			document.getElementById('educacionalimentaria').readOnly = false;
        			var entrada=document.getElementById('carnet').value;
        			CargarNuevoTallaPeso(entrada);
        			//CargarTallaPeso(idCE);
        			//CargarDatosGenerales(entrada);
        			idRec=0;
        		}
      
        	}
        	function CargarEdicion(entrada){
        	    var action="CargarEdicion";
        		cadena = [ 	'ID=' + entrada,'a='+action].join('&');
        		$.ajax({
        	        url: "../Reconsulta",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		document.getElementById('talla').value  = data.talla;
        		        	
        		        	document.getElementById('fecha').value  = data.fecha;
        		        	document.getElementById('pesoL').value  = data.peso;
        		        	document.getElementById('imc').value  = data.IMC;
        		        	
        		        	document.getElementById('cintura').value  = data.cintura;
        		        	document.getElementById('pgrasa').value  = data.porcentajegrasa;
        		        	document.getElementById('pagua').value  = data.porcentajeagua;
        		        	document.getElementById('grasavisceral').value  = data.grasavisceral;
        		        	document.getElementById('masaosea').value  = data.masaosea;
        		        	document.getElementById('vettanita').value  = data.vettanita;
        		        	document.getElementById('datossubjetivos').value  = data.datossubjetivos;
        		        	document.getElementById('tratamiento').value  = data.tratamiento;
        		        	document.getElementById('educacionalimentaria').value  = data.educacion;
        		        	//document.getElementById('TipoExamen').value  = data.TIPO_EXAMEN_idTIPO_EXAMEN;
        		        	//idCE=data.CONSULTA_EXTERNA_idCONSULTA_EXTERNA;
        		        	
        		        	//pesoL=parseInt(data.peso);
        		        	
        		        	var auxPesoTraido=parseInt(data.peso);
        		        	var auxPegoG=parseInt(data.pesoganado);
        		        	var auxPesoP=parseInt(data.pesoperdido);
        		        	
        		        	if(auxPegoG!=0){
        		        		pesoL=auxPesoTraido-auxPegoG;
        		        	}
        		        	if(auxPesoP!=0){
        		        		pesoL=auxPesoTraido+auxPesoP;
        		        	}
        		        	
        		        	CalcIMC();	
        		        	document.getElementById('pesoG').value  = data.pesoganado;
        		        	document.getElementById('pesoP').value  = data.pesoperdido;
        		        	Bloqueo(data.USUARIO_idUSUARIO,data.fecha,data.nombre,data.rol);
        	        	}else{
        	        		alert("Error al cargar");
        	        	}
        	        	
        	        }
        		});
        	}
        	function Bloqueo(ID,fecha,nomb,area){
        		var encabCom="";
        		var marco="<div class=\"table-responsive\"><table class=\"table-bordered\" border=\"1px\" width=\"80%\" >";
        	    var fintabla="</table></div>";
				encabCom+="<tr bgcolor=\"#25587E\" align=\"center\"><th><font color=\"white\">Fecha</font></th><th><font color=\"white\">Evaluador</font></th><th><font color=\"white\">Area</font></th></tr>";
        		var fila='<tr><td>'+fecha+'</td><td>'+nomb+'</td><td>'+area+'</td></tr>';
        		var tabla=marco+encabCom+fila+fintabla;
        		document.getElementById("TablaEncargado").innerHTML = tabla;
        		
        		if(ID==IdUsuarioSesion){
        			
        			document.getElementById('talla').readOnly = false;
        			document.getElementById('pesoL').readOnly = false;
        			
        			document.getElementById('cintura').readOnly = false;
        			document.getElementById('pgrasa').readOnly = false;
        			document.getElementById('pagua').readOnly = false;
        			document.getElementById('grasavisceral').readOnly = false;
        			document.getElementById('masaosea').readOnly = false;
        			document.getElementById('vettanita').readOnly = false;
        			
        			document.getElementById('datossubjetivos').readOnly = false;
        			document.getElementById('tratamiento').readOnly = false;
        			document.getElementById('educacionalimentaria').readOnly = false;
        			
        			document.getElementById("BtnMod").disabled = false;
        			document.getElementById("BtnEl").disabled = false;
        			
        			document.getElementById("talla").focus();
        		}else{
        			
        			document.getElementById('talla').readOnly = true;
        			document.getElementById('pesoL').readOnly = true;
        			
        			document.getElementById('cintura').readOnly = true;
        			document.getElementById('pgrasa').readOnly = true;
        			document.getElementById('pagua').readOnly = true;
        			document.getElementById('grasavisceral').readOnly = true;
        			document.getElementById('masaosea').readOnly = true;
        			document.getElementById('vettanita').readOnly = true;
        			
        			document.getElementById('datossubjetivos').readOnly = true;
        			document.getElementById('tratamiento').readOnly = true;
        			document.getElementById('educacionalimentaria').readOnly = true;
        			
        			document.getElementById("BtnMod").disabled = true;
        			document.getElementById("BtnEl").disabled = true;
        		}
        	}
        	function validar_vacio(entrada){
        		var texto="";
        		texto=document.getElementById(entrada).value;
        		if(texto==""){
        			texto="null";
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
        	function Modificar(){
        		var action="modificar";
        		//var x = document.getElementById("TipoExamen").selectedIndex;
        	   // var y = document.getElementById("TipoExamen").options;
        	    
       
        		//var variable1=y[x].text;
        		var variable2=validar_numerovacio("talla");
        		var variable3=validar_numerovacio("pesoL");
        		var variable4=validar_numerovacio("imc");
        		var variable5=validar_numerovacio("pesoG");
        		var variable6=validar_numerovacio("pesoP");
        		var variable7=validar_numerovacio("cintura");
        		var variable8=validar_numerovacio("pgrasa");
        		var variable9=validar_numerovacio("pagua");
        		var variable10=validar_numerovacio("grasavisceral");
        		
        		var variable11=validar_numerovacio("masaosea");
        		var variable12=validar_numerovacio("vettanita");
        		var variable13=validar_numerovacio("datossubjetivos");
        		var variable14=validar_numerovacio("tratamiento");
        		var variable15=validar_numerovacio("educacionalimentaria");
        		
        		var variable30=validar_vacio("Diag");
        		
        		if((idRec!=undefined)&&(idRec!="")&&(variable2!="0")&&(variable3!="0")&&variable4!=0){
        			var cadena = ['ID='+ idRec,'a='+action
        	        		      	,"p2="+variable2,"p3="+variable3,"p4="+variable4,"p5="+variable5
        	        		      	,"p6="+variable6,"p7="+variable7,"p8="+variable8,"p9="+variable9,"p10="+variable10
        	        		      	,"p11="+variable11,"p12="+variable12,"p13="+variable13,"p14="+variable14,"p15="+variable15,"p30="+variable30].join('&');
        	        		enviar_datos(cadena);
        		}
        		else{
        			VentanaError("Complete la informacion del IMC");
        		}
        	}
        	function Eliminar(){
        		var action="eliminar";
        		if((idRec!=undefined)&&(idRec!="")){
        			var cadena = ['ID='+ idRec,'a='+action].join('&');
        	        		enviar_datos(cadena);
        		}
        		else{
        			VentanaError("Hubo un problema al eliminar, intentelo nuevamente");
        		}
        	}
        	function Guardar(){
        		var action="guardar";
        		ERRORSQL=false;
        		//var x = document.getElementById("TipoExamen").selectedIndex;
        	    //var y = document.getElementById("TipoExamen").options;
        	    
       			var variable0=IdUsuarioSesion;
        		//var variable1=y[x].text;
        		var variable2=validar_numerovacio("talla");
        		var variable3=validar_numerovacio("pesoL");
        		var variable4=validar_numerovacio("imc");
        		var variable5=validar_numerovacio("pesoG");
        		var variable6=validar_numerovacio("pesoP");
        		var variable7=validar_numerovacio("cintura");
        		var variable8=validar_numerovacio("pgrasa");
        		var variable9=validar_numerovacio("pagua");
        		var variable10=validar_numerovacio("grasavisceral");
        		
        		var variable11=validar_numerovacio("masaosea");
        		var variable12=validar_numerovacio("vettanita");
        		var variable13=validar_numerovacio("datossubjetivos");
        		var variable14=validar_numerovacio("tratamiento");
        		var variable15=validar_numerovacio("educacionalimentaria");
        		
        		var variable30=validar_vacio("Diag");
        		var carnet=validar_numerovacio("carnet");
        		if((carnet!=0)&&(variable2!="0")&&(variable3!="0")&&variable4!=0){
        			var cadena = ['IDCarnet='+ carnet,'a='+action
        	        		      	,"p0="+variable0,"p2="+variable2,"p3="+variable3,"p4="+variable4,"p5="+variable5
        	        		      	,"p6="+variable6,"p7="+variable7,"p8="+variable8,"p9="+variable9,"p10="+variable10
        	        		      	,"p11="+variable11,"p12="+variable12,"p13="+variable13,"p14="+variable14,"p15="+variable15,"p30="+variable30].join('&');
        	        		enviar_datos(cadena);
        		}
        		else{
        			VentanaError("Complete la informacion del IMC");
        		}
        		
        			         	

        	}
        	function enviar_datos(datos){
        		var resultado="";

        		$.ajax({
        	        url: "../Reconsulta",
        	        data: datos,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		MostrarMensajeServidor(data.descripcion);
        	        		//alert(data.mensaje);
        	        		//location.reload();
        	        	}else{
        	        		VentanaError("Hubo un problema al almacenar en el servidor");
        	        	}
        	        	
        	        }
        		});
        	}
        	function VentanaError(mensaje){
        		document.getElementById("Errortxt").innerHTML = "";
        		document.getElementById("Errortxt").innerHTML = " "+mensaje;
        		jQuery('#ErroresModal').modal("show");
        	}
        	
        	function EliminarRegistro(){
        		jQuery('#EliminarRegistroModal').modal("show");
        	}
        	
        	function CargarTallaPeso(entrada){
    		    var action="CargarTallaPeso";
    			cadena = [ 	'ID=' + entrada,'a='+action].join('&');
    			$.ajax({
    		        url: "../Reconsulta",
    		        data: cadena,
    		  	    type: 'post',
    		        dataType: 'json',
    		        success: function(data){
    		        	document.getElementById('carnet').value=data.idPACIENTE;
    		        	document.getElementById('nombre').value=data.nombre;
    		        	document.getElementById('edad').value=data.edad;
    		        	document.getElementById('sexo').value=data.sexo;
    		        	document.getElementById('facultad').value=data.facultad;
    		        	document.getElementById('talla').value  = data.talla;
    		        	pesoL=parseInt(data.peso);
    		        	idCE=data.idCE;
    		        	GenerarRegistrosReconsulta(data.total,data.RRECONSULTA);
    		        }
    			});
        	}
        	function GenerarRegistrosReconsulta(total,data){
        		var marcodiv='<div class="form-group"><label for="RegM">Registros de consulta</label><select class="form-control input-sm" id="RMulti" onchange=CambioRegMulti()>';
        		var opciones='<option value=0>Nuevo</option>';
        		if(total!=0){
        			for(i=0;i<total;i++){
        				opciones+='<option value='+data[i].idRECONSULTA+'>'+data[i].fecha+'</option>';
        			}
        		}
        		var fin='</select></div>'
        		var componente=marcodiv+opciones+fin;
        		document.getElementById("RegMulti").innerHTML =componente;
        		document.getElementById("talla").focus();
        	}
        	function CambioRegMulti(){
        		var valor=document.getElementById('RMulti').value;
        		document.getElementById("TablaEncargado").innerHTML = "";
        		if(valor!=0){
        			idRec=valor;
        			document.getElementById("Guard").style.display = 'none';
        			document.getElementById("Mod").style.display = 'block';
        			
        			CargarEdicion(idRec);
        		}else{
        			document.getElementById("Mod").style.display = 'none';
        			document.getElementById("Guard").style.display = 'block';
        			document.getElementById("BtnMod").disabled = false;
        			
        			document.getElementById('talla').value  = "";
        			document.getElementById('pesoL').value  = "";
        			document.getElementById('imc').value  = "";
        			document.getElementById('pesoG').value  = "";
        			document.getElementById('pesoP').value= "";
        			
        			document.getElementById('peso').value  = "";
        			document.getElementById('Diag').value= "";
        			
        			document.getElementById('cintura').value= "";
        			document.getElementById('pgrasa').value= "";
        			document.getElementById('pagua').value= "";
        			document.getElementById('grasavisceral').value= "";
        			document.getElementById('masaosea').value= "";
        			document.getElementById('vettanita').value= "";
        			
        			document.getElementById('datossubjetivos').value= "";
        			document.getElementById('tratamiento').value= "";
        			document.getElementById('educacionalimentaria').value= "";
        			
        			document.getElementById('talla').readOnly = false;
        			document.getElementById('pesoL').readOnly = false;
        			
        			document.getElementById('cintura').readOnly = false;
        			document.getElementById('pgrasa').readOnly = false;
        			document.getElementById('pagua').readOnly = false;
        			document.getElementById('grasavisceral').readOnly = false;
        			document.getElementById('masaosea').readOnly = false;
        			document.getElementById('vettanita').readOnly = false;
        			
        			document.getElementById('datossubjetivos').readOnly = false;
        			document.getElementById('tratamiento').readOnly = false;
        			document.getElementById('educacionalimentaria').readOnly = false;
        			
        			CargarTallaPeso(idCE);
        			
        			idRec=0;
        		}
      
        	}
        	function AgregarFecha(){
        		var  today = new Date();
        		var m = today.getMonth() + 1;
        		var mes = (m < 10) ? '0' + m : m;
        		 
        		var fecha=today.getDate()+'/' +mes+'/'+today.getFullYear();

        		document.getElementById('fecha').value=fecha;
        	}
        	function getUrlVars() {
        	    var vars = {};
        	    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,    
        	    function(m,key,value) {
        	      vars[key] = value;
        	    });
        	    return vars;
        	  }
        	function CalcularPeso(entrada) {
        		var pesop=0;
        		var pesog=0;
        		
        		var calculo = entrada-pesoL;
        		if(calculo<0){
        			pesop=calculo*(-1);
        		}else{
        			pesog=calculo;
        		}
        	
        		document.getElementById('pesoG').value  = pesog.toFixed(2);
        		document.getElementById('pesoP').value  = pesop.toFixed(2);
        	}
        	
        	function CalcIMC(){
        		var talla=0;
    			var peso=0;
    			var imc=0;
    			
    			var TempTalla="";
    			var TempPeso="";
    			
    			TempTalla=document.getElementById('talla').value;
    			TempPeso=document.getElementById('pesoL').value;
    			
    			if(TempTalla==""||TempPeso==""){
    				talla=0;
    				peso=0;
    				document.getElementById('imc').value  = "";
    			}else{
    				talla =	parseFloat(TempTalla);
    			    peso =	parseFloat(TempPeso);
    			    CalcularPeso(peso);
    			    peso =	parseFloat(TempPeso)*0.453592;
    			    talla=talla*talla;
    			    imc=peso/talla;
    			    imc=imc.toFixed(2);
    			    var action="cargaimc";
    				cadena = [ 	'talla=' + talla,'peso='+peso,'a='+action].join('&');
    				$.ajax({
    			        url: "../IMC",
    			        data: cadena,
    			  	    type: 'post',
    			        dataType: 'json',
    			        success: function(data){
    			        	document.getElementById('imc').value  = ""+imc;
    			        	document.getElementById('Diag').value  = data.diagnostico;
    			        	document.getElementById('peso').value  = peso.toFixed(2);
    			        	//document.getElementById('pesoM').value  = data.pesomax;
    			        	//document.getElementById('pesoI').value  = data.pesoideal;
    			        }
    				});
    			}
        	}
        	function CalcularIMC(event) {
        	    var char = event.which || event.keyCode;
        	    if(char == 13){ 
        	    	var TempTalla="";
        			var TempPeso="";
        			
        			TempTalla=validar_numerovacio('talla');
        			TempPeso=parseFloat(validar_numerovacio('pesoL'))*(0.453592);
        			
        			if(TempTalla>0&&TempPeso>0){
        				CalcIMC();	   
        			}else{
        				VentanaError("La talla y el peso deben ser mayor a cero");
        			}
        	    	 
        		}
        	}
        function VerRegistros(){
        	window.location.replace("/ModuloNutricion/TablasNutricion/ListadoReconsulta.jsp");
        }	
        function ValidarDecimal() {
        	var texto=document.getElementById('talla').value;
        	var longitud=texto.length;
        	if(longitud==2){
        		var ini = texto.substr(0,1);
        	    var aux= texto.substr(longitud-1,longitud);
        	    var palabra=ini+"."+aux;
        		document.getElementById('talla').value=palabra;
        	}
        	
        }
        document.getElementById('talla').onkeydown = function (e) {
        	//alert(e.keyCode);
        	if(e.keyCode == 13){
        		
        		document.getElementById("pesoL").focus();
        		 return false;
               
        	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
        		        return false;
        	}
        }
        document.getElementById('pesoL').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			CalcularIMC(e);
        		document.getElementById("cintura").focus();
        		 return false;
               
        	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
        		        return false;
        	}
        }
        document.getElementById('cintura').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			
        		document.getElementById("pgrasa").focus();
        		 return false;
               
        	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
        		        return false;
        	}
        }
        document.getElementById('pgrasa').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			
        		document.getElementById("pagua").focus();
        		 return false;
               
        	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
        		        return false;
        	}
        }
        document.getElementById('pagua').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			
        		document.getElementById("grasavisceral").focus();
        		 return false;
               
        	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
        		        return false;
        	}
        }
        document.getElementById('grasavisceral').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			
        		document.getElementById("masaosea").focus();
        		 return false;
               
        	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
        		        return false;
        	}
        }
        document.getElementById('masaosea').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			
        		document.getElementById("vettanita").focus();
        		 return false;
               
        	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
        		        return false;
        	}
        }
        document.getElementById('vettanita').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			
        		document.getElementById("datossubjetivos").focus();
        		 return false;
               
        	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
        		        return false;
        	}
        }
        document.getElementById('datossubjetivos').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			
        		document.getElementById("tratamiento").focus();
        		 return false;
               
        	}
        }
        document.getElementById('tratamiento').onkeydown = function (e) {
        	//alert(e.keyCode);
    		if(e.keyCode == 13){
    			
        		document.getElementById("educacionalimentaria").focus();
        		 return false;
               
        	}
        }
        function MostrarMensajeServidor(texto){
        	document.getElementById('MensajeAux').innerHTML  = texto;
        	jQuery('#MensajeServidor').modal("show");
        	
           
        } 
        function  AccionPagina(){
        	if(ERRORSQL==false){
        		location.reload();
        		
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