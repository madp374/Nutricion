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
							      		<textarea class="form-control" id="MensajeAux" name="plan" cols="30" rows="5" readonly></textarea>
								    
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal">Aceptar</button>
							        </div>
							      </div>
							    </div>
							  </div>
        
        <div class="modal fade" id="CrearUsuarioModal" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Mensaje</h4>
							        </div>
							        <div class="modal-body">
							      		El registro del paciente no existe<br>
							      		¿Desea crearlo?
								    
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="CargaFacultad()">Crear</button>
							          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
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
							      		¿Desea eliminar este registro?
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="BorrarRegistro()">Aceptar</button>
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
        <li> <a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/Trifoliar.jsp"> <span class="glyphicon glyphicon-home"></span> Inicio </a> </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Mantenimiento </a>
	        <ul>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/Trifoliar.jsp"> <span class="glyphicon glyphicon-home"></span> Manejo de Trifoliar </a></li>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/RegistroAlimento.jsp"> <span class="glyphicon glyphicon-book"></span> Registro de alimentos </a></li>
				<li><a href="/ModuloNutricion/Administracion/Reporte1.jsp"> <span class="glyphicon glyphicon-book"></span> Usuario </a></li>
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
        <li> <a href="/ModuloNutricion/Administracion/Reporte1.jsp"> <span class="glyphicon glyphicon-book"></span> Reportes </a>
   
        </li>
        </ul>
        </nav>
        
        <section class="col-sm-9">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Reportes</h3>
        </div>
        <div class="panel-body">
        
 <form action="GenerarReporte2.jsp"   class="form-inline" role="form" target="_black">
 <article>
 <div class="panel panel-primary">
      <div class="panel-heading">Estadisticas de Atención de Consulta Externa</div>
      <div class="panel-body">
     
<div class="row" id="NRegPacienteNoEncontrado"> 

&nbsp;
<div class="form-group">
    <input class="form-control input-sm" type="hidden"  name="fu" id="fu"  />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Fecha de inicio</label>
    <input class="form-control input-sm" type="text"  name="fecha_ini" id="fecha_ini" pattern='(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d' placeholder="DD/MM/YYYY" required />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Fecha de finalización</label>
    <input class="form-control input-sm" type="text"  name="fecha_fin" id="fecha_fin" pattern='(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d' placeholder="DD/MM/YYYY" required />
</div>
 <script>
  $( function() {
    $( "#fecha_ini" ).datepicker({ 
    	dateFormat: 'dd/mm/yy',
    	changeYear: true,
    	changeMonth: true,
    	monthNames: [ "enero","febrero","marzo","abril","mayo","junio",
    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
    	monthNamesShort: [ "enero","febrero","marzo","abril","mayo","junio",
    	    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
    	          	dayNames: [ "domingo","lunes","martes","miércoles","jueves","viernes","sábado" ],
    	          	dayNamesShort: [ "dom","lun","mar","mié","jue","vie","sáb" ],
    	          	dayNamesMin: [ "dom","lun","mar","mie","jue","vie","sab" ]
    	});
    $( "#fecha_fin" ).datepicker({ 
    	dateFormat: 'dd/mm/yy',
    	changeYear: true,
    	changeMonth: true,
    	monthNames: [ "enero","febrero","marzo","abril","mayo","junio",
    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
    	monthNamesShort: [ "enero","febrero","marzo","abril","mayo","junio",
    	    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
    	          	dayNames: [ "domingo","lunes","martes","miércoles","jueves","viernes","sábado" ],
    	          	dayNamesShort: [ "dom","lun","mar","mié","jue","vie","sáb" ],
    	          	dayNamesMin: [ "dom","lun","mar","mie","jue","vie","sab" ]
    	});
  } );
  </script>


<div class="form-group">
<br>
	<input type="submit" class="btn btn-sm" value="Generar" > 									
</div> 
  </div>
      	</div>
    </div>
  </article>	 	
</form>
        

            
            
        
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
        				document.getElementById("UsuarioSesion").innerHTML ='<label>Usuario:'+UsuarioSesion+' | <a id="CerrarSesion1" title="Cerrar sesion" href="#" onclick="CerrarSesion(); return false;"  style="color: blue;">Cerrar sesion</a>&nbsp;&nbsp;&nbsp;&nbsp;</label>'
        				document.getElementById("fu").value=NomUsuario;
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
        		}else{
        			window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
        		}
        	}
        }
        
        	function CargaInicio() {       	
        		VerificarSesion();	
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
        
        	function cargar_hora(){
        		var  today = new Date();
        		var m = today.getMonth() + 1;
        		var mes = (m < 10) ? '0' + m : m;
        		 
        		var fecha=today.getDate()+'/' +mes+'/'+today.getFullYear();

        		document.getElementById('fecha').value=fecha;
        	}
        	
    function MostrarMensajeServidor(texto){
    	document.getElementById('MensajeAux').value  = texto;
    	jQuery('#MensajeServidor').modal("show");
    	
       
    } 

 </script>
        </body>

        </html>