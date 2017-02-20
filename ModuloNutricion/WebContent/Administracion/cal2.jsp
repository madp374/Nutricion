<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
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
    	<script type="text/javascript" src="../jquery/es.js"></script>
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
			
			
			.nav-tabs>li>a {
			     color: #555;
			    cursor: default;
			    background-color: #fff;
			    border: 1px solid #ddd;
			    border-bottom-color: transparent;
			}
			.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
			    color: #555;
			    cursor: default;
			    background-color: #ddd;
			    border: 1px solid #ddd;
			    border-bottom-color: transparent;
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
				
				 
			});
    	</script>
    	
    	<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        </head>

        <body onload="CargaInicio()">
       <div class="modal fade" id="CrearUsuarioModal" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Mensaje</h4>
							        </div>
							        <div class="modal-body">
							        <table>
							        	<tr><td rowspan="2"><img src="../images/pregunta.jpg" width="50" height="50" /></td><td>&nbsp;El registro del paciente no existe</td></tr>
							        	<tr><td>&nbsp;¿Desea crearlo?</td></tr>
							        </table>
							      		
							      		                                                                              
								    
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="CargaFacultad()">Crear</button>
							          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
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
        <h3 class="panel-title">Citas</h3>
        </div>
        <div class="panel-body">
		<ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#menu1">Ene</a></li>
		  <li><a data-toggle="tab" href="#menu2">Feb</a></li>
		  <li><a data-toggle="tab" href="#menu3">Mar</a></li>
		  <li><a data-toggle="tab" href="#menu4">Abr</a></li>
		  <li><a data-toggle="tab" href="#menu5">May</a></li>
		  <li><a data-toggle="tab" href="#menu6">Jun</a></li>
		  <li><a data-toggle="tab" href="#menu7">Jul</a></li>
		  <li><a data-toggle="tab" href="#menu8">Ago</a></li>
		  <li><a data-toggle="tab" href="#menu9">Sep</a></li>
		  <li><a data-toggle="tab" href="#menu10">Oct</a></li>
		  <li><a data-toggle="tab" href="#menu12">Nov</a></li>
		  <li><a data-toggle="tab" href="#menu12">Dic</a></li>
		</ul>
		
		<div class="tab-content">
		  <div id="menu1" class="tab-pane fade in active">
		  		<p id="m1"></p>
		  </div>
		  <div id="menu2" class="tab-pane fade">
		    <p id="m2"></p>
		  </div>
		  <div id="menu3" class="tab-pane fade">
		    <p id="m3"></p>
		  </div>
		  <div id="menu4" class="tab-pane fade">
		    <p id="m4"></p>
		  </div>
		  <div id="menu5" class="tab-pane fade">
		    <p id="m5"></p>
		  </div>
		  <div id="menu6" class="tab-pane fade">
		    <p id="m6"></p>
		  </div>
		  <div id="menu7" class="tab-pane fade">
		    <p id="m7"></p>
		  </div>
		  <div id="menu8" class="tab-pane fade">
		    <p id="m8"></p>
		  </div>
		  <div id="menu9" class="tab-pane fade">
		    <p id="m9"></p>
		  </div>
		  <div id="menu10" class="tab-pane fade">
		    <p id="m10"></p>
		  </div>
		  <div id="menu11" class="tab-pane fade">
		    <p id="m11"></p>
		  </div>
		  <div id="menu12" class="tab-pane fade">
		    <p id="m12"></p>
		  </div>
     
		  
		</div>


        

            
            
        
        </div>
        </div>
        </section>
        </div>
<script type="text/javascript">

var UsuarioSesion = "null";
var IdUsuarioSesion = "null";
var PerfilSesion ="null";
var NomUsuario="null";

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
		document.cookie = "CookieNomUsuario="+encodeURIComponent(NomUsuario);
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
	<%misession.setAttribute("NomUsuario", "null");%>
	document.cookie = "CookieUsuario=; max-age=0";
	document.cookie = "CookieIDUsuario=; max-age=0";
	document.cookie = "CookiePerfil=; max-age=0";
	document.cookie = "CookieNomUsuario=; max-age=0";
	window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
	
}

function CargaInicio(){
	VerificarSesion();
	CargaMes();
}
function limpiar(){
	document.getElementById("m1").innerHTML ='';
	document.getElementById("m2").innerHTML ='';
	document.getElementById("m3").innerHTML ='';
	document.getElementById("m4").innerHTML ='';
	document.getElementById("m5").innerHTML ='';
	document.getElementById("m6").innerHTML ='';
	document.getElementById("m7").innerHTML ='';
	document.getElementById("m8").innerHTML ='';
	document.getElementById("m9").innerHTML ='';
	document.getElementById("m10").innerHTML ='';
	document.getElementById("m11").innerHTML ='';
	document.getElementById("m12").innerHTML ='';
}
function CargaMes(){
	limpiar();
	var id=1;
	
	var encabezado='<thead><tr class="info"><th>Dia</th><th>Hora</th><th>Nombre</th></tr></thead>';
	var marco='<div class="table-responsive"><table class="table table-hover" style="font-size:8pt;">'+ encabezado;
	var fin='</table></div>';
	
	var aux1='';
	var aux2='';
	var aux3='';
	var aux4='';
	var aux5='';
	var aux6='';
	var aux7='';
	var aux8='';
	var aux9='';
	var aux10='';
	var aux11='';
	var aux12='';
	var action="cargames";
	var cadena = ['ID='+ id,'a='+action].join('&');
	$.ajax({
        url: "../Calendario",
        data: cadena,
  	    type: 'get',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		
        		if(data.total!=0){
        			for(j = 0; j < data.total; j++){
        				if(data.CITAS[j].mes=="01"){
        					aux1+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';			
        				}else if(data.CITAS[j].mes=="02"){
        					aux2+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="03"){
        					aux3+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="04"){
        					aux4+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="05"){
        					aux5+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="06"){
        					aux6+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="07"){
        					aux7+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="08"){
        					aux8+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="09"){
        					aux9+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="10"){
        					aux10+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="11"){
        					aux11+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}else if(data.CITAS[j].mes=="12"){
        					aux12+='<tr>'+'<td>'+data.CITAS[j].dia+'</td>'+'<td>'+data.CITAS[j].hora_inicio+'</td>'+'<td>'+data.CITAS[j].paciente+'</td>'+'</tr>';
        				}
        			}
        			document.getElementById("m1").innerHTML = marco+aux1+fin;
        			document.getElementById("m2").innerHTML = marco+aux2+fin;
        			document.getElementById("m3").innerHTML = marco+aux3+fin;
        			document.getElementById("m4").innerHTML = marco+aux4+fin;
        			document.getElementById("m5").innerHTML = marco+aux5+fin;
        			document.getElementById("m6").innerHTML = marco+aux6+fin;
        			document.getElementById("m7").innerHTML = marco+aux7+fin;
        			document.getElementById("m8").innerHTML = marco+aux8+fin;
        			document.getElementById("m9").innerHTML = marco+aux9+fin;
        			document.getElementById("m10").innerHTML = marco+aux10+fin;
        			document.getElementById("m11").innerHTML = marco+aux11+fin;
        			document.getElementById("m12").innerHTML = marco+aux12+fin;
        		}
        		
        	}
        	
        }
	});
}


</script>



        <footer class="row col-sm-12">
        <div class="panel panel-body">
        <p>Edificio Bienestar Estudiantil 3er Nivel, Ciudad Universitaria Zona 12, Guatemala C.A TELEFONO: 24188000 FAX:24189633</p>
        </div>
        </footer>
        </div>
        </div>
        </body>

        </html>