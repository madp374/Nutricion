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
			    width: 80%;
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
        
        <section class="col-sm-9">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Tabla de Dietas</h3>
        </div>
        <div class="panel-body">
        
 <form action="../Reconsulta" method="post" class="form-inline" role="form" onsubmit="return false">
   	
  <article>
<div class="panel panel-primary">
	<div class="panel-heading">Datos objetivos</div>
		<div class="panel-body" >
			      	
		  <div class="row-fluid">  
		  &nbsp;
			<div class="form-group">
			
			    <label class="form-control input-sm" style="width: 150px;">Tipo de dieta</label>
			    <select  class="form-control input-sm"  id="tdieta" style="width: 150px;" onchange=CambioTDieta()>
			    	<option value="0"></option>
			        <option value="1">Dietas Estandarizadas</option>
			        <option value="2">Dietas Estandarizadas Hiperproteicas</option>
			        <option value="3">Dietas Estandarizadas Hipograsa</option>
			    </select>
			</div>
			</div> 
			<div class="row-fluid"> 
			&nbsp;
			<div class="form-group">
				<label for="LpesoI" class="form-control input-sm" style="width: 150px;">Carbohidratos</label>
				<input class="form-control input-sm" id="porCarbo" name="porCarbo" type="number" step="any" min="0"  style="width: 70px;" required/>      	
			</div>
			</div>
			<div class="row-fluid"> 
			&nbsp;
			<div class="form-group">
				<label for="Lpeso" class="form-control input-sm" style="width: 150px;">Proteinas</label>
				<input  class="form-control input-sm"id="porProte" name="porProte" type="number"  min="0"  step="any"  style="width: 70px;"   required/>	   
			</div>
			</div>
			<div class="row-fluid"> 
			 &nbsp;
			<div class="form-group">
				<label for="LpesoM" class="form-control input-sm" style="width: 150px;">Grasas</label>
				<input class="form-control input-sm" id="porGrasa" name="porGrasa" type="number" min="0" step="any"   style="width: 70px;"  required/>               
			</div>
			</div>
			&nbsp;
			<div class="form-group">
				<label for="LpesoM" class="form-control input-sm" style="width: 150px;">Fuente</label>
				<textarea class="form-control input-sm" id="fuente" cols="40" rows="1"></textarea>               
			</div>
			 <div class="row" align="center">
				  <div id="SelKcal"></div>
			</div>    
		<div align="center">
					<div class="form-group">
	<label>Lacteos<br>sin grasa</label>
	<input class="form-control input-sm" id="porLacteoSG" name="porLacteoSG" type="number"  min="0" style="width: 50px;" />                  								  										
</div>
<div class="form-group">  
	<label>Lacteos<br>enteros</label>
	<input class="form-control input-sm" id="porLacteoE" name="porLacteoE" type="number"  min="0" style="width: 50px;"  />                  
</div>
<div class="form-group">  
	<label>Vegetales<br>&nbsp;</label>
	<input class="form-control input-sm" id="porVege" name="porVege" type="number"   style="width: 50px;" min="0" />                  								  	
</div>
<div class="form-group">  
	<label>Frutas<br>&nbsp;</label>
	<input class="form-control input-sm" id="porFruta" name="porFruta" type="number" min="0"  style="width: 50px;"/>                 								  	
</div>
<div class="form-group">  
	<label>Cereales<br>&nbsp;</label>
	<input class="form-control input-sm" id="porCereal" name="porCereal" type="number"  min="0" style="width: 50px;" />                  							 
</div>
<div class="form-group">  
	<label>Carnes<br>&nbsp;</label>
	<input class="form-control input-sm" id="porCarne" name="porCarne" type="number" min="0"  style="width: 50px;"  />                  						  
</div>
<div class="form-group">  
	</label><label>Grasas<br>&nbsp;</label>
	<input class="form-control input-sm" id="porGrasa1" name="porGrasa1" type="number"  style="width: 50px;" min="0"  />                  								 
</div>
<div class="form-group">  
	<label>Azucares<br>&nbsp;</label>
	<input class="form-control input-sm" id="porAzucar" name="porAzucar" type="number" min="0"  style="width: 50px;" />                  							  
</div>
		</div>			
		</div>
</div>
  </article>
 
  </br>
             <div class="row" align="center" id="Guard" >
      		<div class="form-group" >			
							<button class="btn btn-default" onclick="Guardar()" id="btng" disabled>
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Guardar" />Guardar</button>
							
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
                		
                		if(PerfilSesion=="admi"){
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
        			
        			if(PerfilSesion=="admi"){
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
        	}
        	
        	
        	function CambioTDieta(){
            	var seleccion=document.getElementById("tdieta").value;
            	if(seleccion=="0"){
            		limpiar();
            	}else{
            		var action="CargaDieta";
            		var cadena = ['ID='+ seleccion,'a='+action].join('&');
            		var se="-1";
            		CargaDietas(cadena,se);
            	}
            	
            }
            function CargaDietas(datos,sel){
        		var resultado="";

        		$.ajax({
        	        url: "../CalculosVET",
        	        data: datos,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		document.getElementById('porCarbo').value  = data.carbo;
        	        		document.getElementById('porProte').value  = data.prote;
        	        		document.getElementById('porGrasa').value  = data.grasa;
        	        		document.getElementById('fuente').value  = data.fuente;
        		        	GenerarSelKcal(data.total,data.columna);
        					
        		        	
        	        	}
        	        	
        	        	
        	        }
        		});
        	}
            function GenerarSelKcal(total,data){
            	document.getElementById("SelKcal").innerHTML="";
        		var marcodiv='<div class="form-group">Distribucion Kcal<select class="form-control input-sm" id="RSKcal" onchange=CambioSelKcal()>';
        		var opciones='<option value=0></option>';
        		if(total!=0){
        			for(i=0;i<total;i++){
        				opciones+='<option value='+data[i].Kcal+'>'+data[i].Kcal+'</option>';
        			}
        		}
        		var fin='</select></div>'
        		var componente=marcodiv+opciones+fin;
        		document.getElementById("SelKcal").innerHTML =componente;
        		//document.getElementById("peso").focus();
        	}
            function CambioSelKcal(){
            	var seleccion1=document.getElementById("tdieta").value;
            	var seleccion2=document.getElementById("RSKcal").value;
            	
            	if(seleccion2!="0"){
            		var action="CambiosKcalDieta";
            		var cadena = ['ID='+ seleccion1,'Kcal='+seleccion2,'a='+action].join('&');
            		CargaColumnaDieta(cadena);
            	}else{
            		document.getElementById("btng").disabled = true;
            	}
            }
            function CargaColumnaDieta(datos){
        		var resultado="";

        		$.ajax({
        	        url: "../CalculosVET",
        	        data: datos,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		document.getElementById("porLacteoSG").value = data.c1;
        		        	document.getElementById("porLacteoE").value = data.c2;
        		        	document.getElementById("porVege").value = data.c3;
        		        	document.getElementById("porFruta").value = data.c4;
        		        	document.getElementById("porCereal").value = data.c5;
        		        	document.getElementById("porCarne").value = data.c6;
        		        	document.getElementById("porGrasa1").value = data.c7;
        		        	document.getElementById("porAzucar").value = data.c8;
        		        	document.getElementById("btng").disabled = false;
        	        	}
        	        	
        	        	
        	        }
        		});
        	}
            function limpiar(){
            	document.getElementById("tdieta").value=0;
            	document.getElementById('porCarbo').value  = "";
        		document.getElementById('porProte').value  = "";
        		document.getElementById('porGrasa').value  = "";
        		document.getElementById('fuente').value  = "";
            	document.getElementById("SelKcal").innerHTML ="";
            	document.getElementById("porLacteoSG").value = "";
	        	document.getElementById("porLacteoE").value = "";
	        	document.getElementById("porVege").value = "";
	        	document.getElementById("porFruta").value = "";
	        	document.getElementById("porCereal").value = "";
	        	document.getElementById("porCarne").value = "";
	        	document.getElementById("porGrasa1").value = "";
	        	document.getElementById("porAzucar").value = "";
	        	document.getElementById("btng").disabled = true;
            }
            function Guardar(){
        		var action="ModificarDietas";
        		var variable10=validar_numerovacio("porCarbo");
        		var variable11=validar_numerovacio('porProte');
        		var variable12=validar_numerovacio("porGrasa");
        		var variable13=validar_numerovacio("porLacteoSG");
        		var variable14=validar_numerovacio("porLacteoE");
        		var variable15=validar_numerovacio("porVege");
        		var variable16=validar_numerovacio("porFruta");
        		var variable17=validar_numerovacio("porCereal");
        		var variable18=validar_numerovacio("porCarne");
        		var variable19=validar_numerovacio("porGrasa1");
        		var variable20=validar_numerovacio("porAzucar");
        		var variable21=validar_numerovacio("tdieta");
        		var variable22=validar_numerovacio("RSKcal");
        		var variable23=validar_vacio("fuente");
        		var cadena = ['a='+action,"p10="+variable10
  					      	,"p11="+variable11,"p12="+variable12,"p13="+variable13,"p14="+variable14,"p15="+variable15
  					      	,"p16="+variable16,"p17="+variable17,"p18="+variable18,"p19="+variable19,"p20="+variable20
  					      	,"p21="+variable21,"p22="+variable22,"p23="+variable23].join('&');
        		
        		enviar_datos(cadena);
        	}
            function enviar_datos(datos){
        		$.ajax({
        	        url: "../CalculosVET",
        	        data: datos,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		alert(data.mensaje);	
        	        		limpiar();
        	        	}        	
        	        }
        		});
        	}
            function validar_numerovacio(entrada){
        		var texto="";
        		texto=document.getElementById(entrada).value;
        		if(texto==""){
        			texto="0";
        		}
        		return texto;
        	}
            function validar_vacio(entrada){
        		var texto="";
        		texto=document.getElementById(entrada).value;
        		if(texto==""){
        			texto="";
        		}
        		return texto;
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