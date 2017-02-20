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
        <h3 class="panel-title">Citas</h3>
        </div>
        <div class="panel-body">
		<ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#home">Nuevo</a></li>
		  <li><a data-toggle="tab" href="#menu1">Registros de citas</a></li>
		   
		</ul>
		
		<div class="tab-content">
		  <div id="home" class="tab-pane fade in active">
		  		<div class="panel panel-primary">
		        <div class="panel-heading">Citas</div>
		        <div class="panel-body">
		        	<form action="../Citas" method="post" class="form-inline" role="form" onsubmit="return false">
	<div id="NRegPacienteNoEncontrado"> 
<div class="row-fluid">
&nbsp;
<div class="form-group">
    <label for=LNombre>Nombres y Apellidos</label>
    <input class="form-control input-sm" type="text"  name="nombre1" id="nombre1" maxlength="40" />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>CUI</label>
    <input class="form-control input-sm" type="number" placeholder="digitos sin espacios o guiones"  name="cui1" id="cui1" min="0" />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Facultad/Dependencia</label>
    <p id="dep5"></p>
</div>
&nbsp;
<div class="form-group">

    <label for=LNombre>Tipo de paciente</label>
    <select  class="form-control input-sm"  id="tipopaciente1">
    	<option value="0"></option>
        <option value="1">Estudiante</option>
        <option value="2">Trabajador</option>
    </select>
</div>

&nbsp;
<div class="form-group">

    <label for=LNombre>Sexo</label>
    <select  class="form-control input-sm"  id="sexo1">
        <option value="Femenino">Femenino</option>
        <option value="Masculino">Masculino</option>
    </select>
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Fecha Nac.</label>
    <input class="form-control input-sm" type="text"  name="fechaNac" id="fechaNac" pattern='(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d' placeholder="DD/MM/YYYY"   style="width: 90px;" maxlength="10" />
</div>
 <script>
  $( function() {
    $( "#fechaNac" ).datepicker({ 
    	dateFormat: 'dd/mm/yy',
    	changeYear: true,
    	changeMonth: true,
    	yearRange: "-100:+0",
    	monthNames: [ "enero","febrero","marzo","abril","mayo","junio",
    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
    	monthNamesShort: [ "enero","febrero","marzo","abril","mayo","junio",
    	    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
    	          	dayNames: [ "domingo","lunes","martes","miércoles","jueves","viernes","sábado" ],
    	          	dayNamesShort: [ "dom","lun","mar","mié","jue","vie","sáb" ],
    	          	dayNamesMin: [ "dom","lun","mar","mie","jue","vie","sab" ],
    	          	
    	          	onSelect: function() {
    	          		ValidarFecha();
    	          	  }
    	});
  } );
  </script>
&nbsp;
<div class="form-group">
    <label for=LNombre>Edad</label>
    <input class="form-control input-sm" type="text"  name="edad1" id="edad1" style="width: 70px;" readonly/>
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Correo</label>
    <input class="form-control input-sm" type="email" placeholder="correo@ejemplo.com"  name="correo1" id="correo1" style="width: 120px;" />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Telefono</label>
    <input class="form-control input-sm" type="number" name="telefono1" id="telefono1" style="width: 90px;" />
</div>
<div class="form-group" >
		  <label for="TipoExame"><p id="LabelGuardar"></p></label>
		  <button class="btn btn-sm" onclick="GuardarEditar()"id="BtnEditarG" >
			 <img src="../imagenes/guardado.png" width="20" height="20" title="Editar" /></button>
	  </div>
</div>



 
  </div>
   <div class="row-fluid" id="NRegPacienteEncontrado">  
 &nbsp;
<div class="form-group">
    <label for=LNombre>Nombres y Apellidos</label>
    <input class="form-control input-sm" type="text"  name="nombre" id="nombre"  readonly />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>CUI</label>
    <input class="form-control input-sm"   name="cui" id="cui" min="0" readonly />
</div>
&nbsp;

<div class="form-group">
    <label for=LNombre>Facultad/Dependencia</label>
    <input class="form-control input-sm" type="text"  name="facultad" id="facultad" readonly  />
</div>
&nbsp;
<div class="form-group" >
    <label for=LNombre>Tipo de Paciente</label>
    <input class="form-control input-sm" type="text"  name="tipopaciente" id="tipopaciente" style="width: 80px;" readonly  />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Sexo</label>
    <select  class="form-control input-sm"  id="sexo" readonly >
        <option value="Femenino">Femenino</option>
        <option value="Masculino">Masculino</option>
    </select>
</div>
&nbsp;
<div class="form-group" >
    <label for=LNombre>Edad</label>
    <input class="form-control input-sm" type="text"  name="edad" id="edad" style="width: 80px;" readonly  />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Correo</label>
    <input class="form-control input-sm"   name="correo" id="correo" style="width: 120px;" readonly />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Telefono</label>
    <input class="form-control input-sm"  name="telefono" id="telefono" style="width: 90px;" readonly />
</div>
<div class="form-group">
    <input type="hidden" id="fff" value="">
</div>
 &nbsp;
	  <div class="form-group" >
		  <label for="TipoExame"><p id="LabelEditar">Editar</p></label>
		  <button class="btn btn-sm" onclick="Editar()" id="BtnEditar">
			 <img src="../imagenes/guardado.png" width="20" height="20" title="Editar" /></button>
	  </div>
  </div> 
  
  <br>
	<div class="row">  
	&nbsp;
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Registro Academico</label>
		<input class="form-control input-sm" name="paciente" id="paciente" type="text" required/>
	  </div>
     </div>
     <div class="row"> 
     &nbsp;
	  <div class="form-group">
	    <label class="form-control input-sm"  style="width: 150px;">Tipo de consulta</label>
	    <select  class="form-control input-sm"  id="tipoconsulta">
	        <option value="Primera consulta">Primera consulta</option>
	        <option value="Reconsulta">Reconsulta</option>
	    </select>
	</div>
  </div>
     <div class="row">  
     &nbsp;
	  <div class="form-group">
		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Fecha</label>
		<div class='input-group date' id='datetimepicker1'>
		<input class="form-control input-sm" name="fecha" id="fecha" type="text" style="width: 80px;" required/>
		<span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                    </div>
	  </div>
     </div>
     <div class="row">  
     &nbsp;
	  <div class="form-group">
	  <label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Hora</label>
		<div class='input-group date' id='datetimepicker3'>
                    <input type='text' class="form-control input-sm" name="hi" id="hi" style="width: 80px;"/>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-time"></span>
                    </span>
                </div>
	  </div>
     </div>
     
     <script type="text/javascript">
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT'
                });
              
                $('#hi').datetimepicker({
                    format: 'LT'
                });
              
            });
        </script>
     <script>
  $( function() {
    $( "#fecha" ).datetimepicker({
        format: 'DD/MM/YYYY',
		locale:'es'
    });
    $( "#datetimepicker1" ).datetimepicker({
        format: 'DD/MM/YYYY',
		locale:'es'
    });
   
    
  } );
  </script>
  <label id="mensajes">.</label>
     <div class="row" align="center" id="guard" >
      		<div class="form-group" >			
							<button class="btn btn-default" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Guardar" />Guardar</button>
							
			</div>
		</div>
     
 
	 	
	 </form>
		        </div></div>
		  </div>
		  <div id="menu1" class="tab-pane fade">
		    <div class="panel panel-primary">
			<div class="panel-heading">Registros de citas</div>
			<div class="panel-body">
				<form action="../Citas" method="post" class="form-inline" role="form" onsubmit="return false">
					 <div class="row">  
			     &nbsp;
				  <div class="form-group">
					<label class="form-control input-sm" for="NCarnet" style="width: 70px;" >Fecha</label>
					<div class='input-group date' id='datetimepicker11'>
					<input class="form-control input-sm" name="fecha1" id="fecha1" type="text" style="width: 80px;" >
					<span class="input-group-addon">
			                        <span class="glyphicon glyphicon-calendar"></span>
			                    </span>
			                    </div>
			        
				  </div>
				  &nbsp;
				  <div class="form-group">
				  		<label class="form-control input-sm" for="NCarnet" style="width: 150px;" >Registro Academico</label>
				  		<input class="form-control input-sm" name="RegAcademico" id="RegAcademico" type="number" />
				  		
				  </div>
				   <button class="btn btn-default btn-sm" onclick="Buscar()" >Buscar</button>
			     </div>
			    
<div class="row-fluid" id="NRegPacienteEncontrado1">  
<hr style="width: 100%; color: #eee; height: 1px; background-color:#eee;">
 <div class="form-group">
    <label for=LNombre>Registro Academico</label>
    <input class="form-control input-sm" type="text"  name="RegAcademico2" id="RegAcademico2"  readonly />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Nombres y Apellidos</label>
    <input class="form-control input-sm" type="text"  name="nombre2" id="nombre2"  readonly />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>CUI</label>
    <input class="form-control input-sm"   name="cui2" id="cui2" min="0" readonly />
</div>
&nbsp;

<div class="form-group">
    <label for=LNombre>Facultad/Dependencia</label>
    <input class="form-control input-sm" type="text"  name="facultad2" id="facultad2" readonly  />
</div>
&nbsp;
<div class="form-group" >
    <label for=LNombre>Tipo de Paciente</label>
    <input class="form-control input-sm" type="text"  name="tipopaciente2" id="tipopaciente2" style="width: 80px;" readonly  />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Sexo</label>
    <select  class="form-control input-sm"  id="sexo2" readonly >
        <option value="Femenino">Femenino</option>
        <option value="Masculino">Masculino</option>
    </select>
</div>
&nbsp;
<div class="form-group" >
    <label for=LNombre>Edad</label>
    <input class="form-control input-sm" type="text"  name="edad2" id="edad2" style="width: 80px;" readonly  />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Correo</label>
    <input class="form-control input-sm"   name="correo2" id="correo2" style="width: 120px;" readonly />
</div>
&nbsp;
<div class="form-group">
    <label for=LNombre>Telefono</label>
    <input class="form-control input-sm"  name="telefono2" id="telefono2" style="width: 90px;" readonly />
</div>
<div class="form-group">
    <input type="hidden" id="fff2" value="">
</div>
  </div> 

<hr style="width: 100%; color: #eee; height: 1px; background-color:#eee;">
			     <div class="row" id="mod1">
			     &nbsp;
			     	<div class="form-group">
						<label>Registro academico</label>
						<input class="form-control input-sm" name="paciente1" id="paciente1" type="number" style="width: 100px;" readonly/>
					  </div>
			     
			     <div class="form-group">
					<label>Fecha</label>
					<div class='input-group date' id='datofecha1'>
					<input class="form-control input-sm" name="fechas1" id="fechas1" type="text" style="width: 80px;" required/>
					<span class="input-group-addon">
			                        <span class="glyphicon glyphicon-calendar"></span>
			                    </span>
			                    </div>
				  </div>
				  <div class="form-group">
					  <label>Hora</label>
						<div class='input-group date' id='horapick1'>
				                    <input type='text' class="form-control input-sm" name="hi1" id="hi1" style="width: 80px;"/>
				                    <span class="input-group-addon">
				                        <span class="glyphicon glyphicon-time"></span>
				                    </span>
				                </div>
					  </div>
				    <div class="form-group">
					    <label>Tipo de consulta</label>
					    <select  class="form-control input-sm"  id="tipoconsulta1" style="width: 110px;">
					        <option value="Primera consulta">Primera consulta</option>
					        <option value="Reconsulta">Reconsulta</option>
					    </select>
					</div>
					<div class="form-group">
					    <label>Estado</label>
					    <select  class="form-control input-sm"  id="estado1" style="width: 80px;">
					        <option value="Pendiente">Pendiente</option>
					        <option value="No se presento">No se presento</option>
					        <option value="Atendido">Atendido</option>
					        <option value="Verificar">Verificar</option>
					    </select>
					</div>
					<div class="form-group" >	
							<label>&nbsp;</label>		
							<button class="btn btn-default" onclick="Modificar()" id="BtnMod">
						     <img src="../imagenes/guardado.png" width="20" height="20" title="Modificar" /></button>
							
					</div>
					</div>
					<br>
			    <div>
			    
			    	<div id="tabla1"></div>
			    </div>
				</form>
			</div></div>
		  </div>
		
     <script>
  $( function() {
    $( "#fecha1" ).datetimepicker({
        format: 'DD/MM/YYYY',
		locale:'es'
    });
    $( "#datetimepicker11" ).datetimepicker({
        format: 'DD/MM/YYYY',
		locale:'es'
    });
    $( "#datofecha1" ).datetimepicker({
        format: 'DD/MM/YYYY',
		locale:'es'
    });
    $( "#fechas1" ).datetimepicker({
        format: 'DD/MM/YYYY',
		locale:'es'
    });
    $('#horapick1').datetimepicker({
        format: 'LT'
    });
    $('#hi1').datetimepicker({
        format: 'LT'
    });
  } );
  </script>
		  
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
var busqueda=false;
var AccionCarnetCarga=false;

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
		document.cookie = "CookieNomUsuario="+encodeURIComponent(NomUsuario);
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
	<%misession.setAttribute("NomUsuario", "null");%>
	document.cookie = "CookieUsuario=; max-age=0";
	document.cookie = "CookieIDUsuario=; max-age=0";
	document.cookie = "CookiePerfil=; max-age=0";
	document.cookie = "CookieNomUsuario=; max-age=0";
	window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
	
}

function CargaInicio(){
	VerificarSesion();
	document.getElementById("mod1").style.display = 'none';
	document.getElementById("NRegPacienteEncontrado").style.display = 'none';
	document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
	document.getElementById("NRegPacienteEncontrado1").style.display = 'none';
	document.getElementById("BtnEditar").style.display = 'none';
	document.getElementById("BtnEditarG").style.display = 'none';
}
function validar_vacio(entrada){
	var texto="";
	texto=document.getElementById(entrada).value;
	if(texto==""){
		texto="";
	}
	return texto;
}
function Editar(){
	CargaDatosPacienteEdicion();
}
function GuardarEditar(){
	if(AccionCarnetCarga){
		var action="modificar";
		var carnet=validar_numerovacio('paciente');
		var variable11="";
		var variable12="";
		var variable13="";
		var variable14="";
		
		variable11=validar_vacio('nombre1');
		variable12=validar_vacio('sexo1');
		variable13=validar_vacio('fechaNac');
		variable14=validar_numerovacio('facultad1');
		var variable140=validar_vacio('edad1');
		var variable141=validar_numerovacio('cui1');
		var variable142=validar_numerovacio('tipopaciente1');
		var variable143=validar_vacio('correo1');
		var variable144=validar_numerovacio('telefono1');
		
		var FechaE=false;
		 if(variable140!=""){
		   FechaE=true;
		}else{
		   VentanaError("Verifique la edad del paciente");
		 }
		 if(variable11!=""&&variable12!=""&&variable13!=""&&variable14!="0"&&FechaE==true&&variable142!="0"){
			 var cadena = ['carnet='+ carnet,'a='+action
               		        ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14
               		     ,'p41='+variable141,'p42='+variable142,'p43='+variable143,'p44='+variable144].join('&');
			 $.ajax({
        	        url: "../Paciente",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=="OK"){
        	        		MostrarMensajeServidor(data.descripcion);
        	        		document.getElementById("nombre").value=document.getElementById("nombre1").value;
        	    			document.getElementById("sexo").value=document.getElementById("sexo1").value;
        	    			document.getElementById("fff").value=document.getElementById("fechaNac").value;
        	    			document.getElementById("edad").value=document.getElementById("edad1").value;
        	    			
        	    			document.getElementById("cui").value=document.getElementById("cui1").value;
        	    			document.getElementById("correo").value=document.getElementById("correo1").value;
        	    			document.getElementById("telefono").value=document.getElementById("telefono1").value;
        	    			
        	    			var paux=document.getElementById("tipopaciente1").value;
        	    			if(paux=="1"){
        	    				document.getElementById("tipopaciente").value="Estudiante";
        	    			}else if(paux=="2"){
        	    				document.getElementById("tipopaciente").value="Trabajador";
        	    			}
        	    			
        	    			var x = document.getElementById("facultad1").selectedIndex;
        	    			var y = document.getElementById("facultad1").options;
        	    			
        	    			document.getElementById("facultad").value=y[x].text;
        	    			document.getElementById("NRegPacienteEncontrado").style.display = 'block';
    		        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
    		        		document.getElementById("LabelEditar").innerHTML = "Editar";
        	    			document.getElementById("LabelGuardar").innerHTML = "";

        	    			document.getElementById("BtnEditar").style.display = 'block';
        	        		document.getElementById("BtnEditarG").style.display = 'none';
        	        	}else{
        	        		VentanaError(data.descripcion);
        	        	}	
        	        	   
        	        }
        		});
		 }else{
			 VentanaError("Complete la informacion del paciente");
		 }
	}
}
function MostrarMensajeServidor(texto){
	document.getElementById('MensajeAux').innerHTML  = texto;
	jQuery('#MensajeServidor').modal("show");
} 
function VentanaError(mensaje){
	document.getElementById("Errortxt").innerHTML = "";
	document.getElementById("Errortxt").innerHTML = " "+mensaje;
	jQuery('#ErroresModal').modal("show");
}
function CargaDatosPacienteEdicion(){
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
        		var auxf=document.getElementById("facultad").value;
        		resultado="<option value=\"0\"></option>";
        	    for ( i=0; i < data.resultado.length; i++) {  
        	    	if(auxf==decodeURIComponent(data.resultado[i].nombre)){
        	    		resultado+="<option value=\""+data.resultado[i].id+"\" selected>"+decodeURIComponent(data.resultado[i].nombre)+"</option>";
        	    	}else{
        	    		resultado+="<option value=\""+data.resultado[i].id+"\">"+decodeURIComponent(data.resultado[i].nombre)+"</option>";
        	    	}
        	    	
        	      
        	    }
        	    document.getElementById("NRegPacienteEncontrado").style.display = 'none';
        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'block';
        	   
    			var marcos="<select class=\"form-control input-sm\" id=\"facultad1\" name=\"facultad1\" style=\"width: 100px;\" onkeydown=\"CambioFac(event)\" >";
    			marcos+=resultado+"</select>";
    			
    			document.getElementById("dep5").innerHTML = marcos;
    			document.getElementById("nombre1").value=document.getElementById("nombre").value;
    			document.getElementById("sexo1").value=document.getElementById("sexo").value;
    			document.getElementById("fechaNac").value=document.getElementById("fff").value;
    			document.getElementById("edad1").value=document.getElementById("edad").value;
    			
    			document.getElementById("cui1").value=document.getElementById("cui").value;
    			document.getElementById("correo1").value=document.getElementById("correo").value;
    			document.getElementById("telefono1").value=document.getElementById("telefono").value;
    			
    			var paux=document.getElementById("tipopaciente").value;
    			if(paux=="Estudiante"){
    				document.getElementById("tipopaciente1").value=1;
    			}else if(paux=="Trabajador"){
    				document.getElementById("tipopaciente1").value=2;
    			}
    			
    			document.getElementById("nombre1").focus();
    			AccionCarnetCarga=true;
    			document.getElementById("LabelEditar").innerHTML = "";
    			document.getElementById("LabelGuardar").innerHTML = "Guardar";

    			document.getElementById("BtnEditar").style.display = 'none';
        		document.getElementById("BtnEditarG").style.display = 'block';
        }
	});
	
}

function limpiar_datos(){
	//document.getElementById('paciente').value  = "";
	document.getElementById('tipoconsulta').value  = "Primera consulta";
	document.getElementById('fecha').value  = "";
	document.getElementById('hi').value  = "";
	
	document.getElementById('nombre').value  = "";
	document.getElementById('sexo').value  = "Femenino";
	document.getElementById('edad').value  = "";
	document.getElementById('facultad').value  = "";
	
	document.getElementById('nombre1').value  = "";
	document.getElementById('sexo1').value  = "Femenino";
	
	document.getElementById('cui1').value  = "";
	document.getElementById('tipopaciente1').value  = "0";
	document.getElementById('correo1').value  = "";
	document.getElementById('telefono1').value  = "";
	
	document.getElementById('cui').value  = "";
	document.getElementById('tipopaciente').value  = "";
	document.getElementById('correo').value  = "";
	document.getElementById('telefono').value  = "";
	
	document.getElementById('fechaNac').value  = "";
	document.getElementById("NRegPacienteEncontrado").style.display = 'none';
	document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
}
document.getElementById('paciente').onkeydown = function (e) {
	
    if (e.which === 13) {
    	busqueda=false;
    	AccionCarnetCarga=false;
    	var carnet=document.getElementById('paciente').value;
    	if(carnet!=""){
    		BuscarPaciente(carnet);
    	}
    }else{
    	AccionCarnetCarga=false;
		busqueda=false;
		limpiar_datos();
    }
    }
function VentanaCrearUsuario(){
	jQuery('#CrearUsuarioModal').modal("show");
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
        	    document.getElementById("NRegPacienteEncontrado").style.display = 'none';
        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'block';
        	   
    			var marcos="<select class=\"form-control input-sm\" id=\"facultad1\" name=\"facultad1\" style=\"width: 100px;\" onkeydown=\"CambioFac(event)\" >";
    			marcos+=resultado+"</select>";
    			
    			document.getElementById("dep5").innerHTML = marcos;
    			document.getElementById("nombre1").focus();
    			AccionCarnetCarga=true;
    			busqueda=false;
        }
	});
	
}
function ValidarFecha(){
	var texto=document.getElementById('fechaNac').value;
	if(texto!=""){
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
    			    	// document.getElementById("talla").focus();
    			     }else{
    			    	 //Edad invalida
    			    	 VentanaError(" Edad invalida");
    			    	 document.getElementById('fechaNac').value="";
    			     }
    			     
			 }else{
				//fecha invalida
				 VentanaError(" Fecha de nacimiento invalida");
				 document.getElementById('fechaNac').value="";
			 }
			 
		 }else{
			 //formato fecha invalido
			 VentanaError(" Formato de fecha de nacimiento invalida");
			 document.getElementById('fechaNac').value="";
		 }
		 
	}
}
function BuscarPaciente(entrada){
	var carnet=entrada;
	
	var action="PacienteCita";
	cadena = [ 	'carnet='   + carnet,'a='+action].join('&');
	$.ajax({
        url: "../Paciente",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	
        	if(data.resultado=='OK'){
        		busqueda=true;
        		AccionCarnetCarga=true;
        		document.getElementById("NRegPacienteEncontrado").style.display = 'block';
        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
        		document.getElementById('nombre').value  = data.nombre;
   	        	document.getElementById('sexo').value  = data.sexo;
	        	document.getElementById('edad').value  = data.fecha;
	        	document.getElementById('facultad').value  = decodeURIComponent(data.facultad);
	        	document.getElementById('cui').value  = data.CUI;
	        	document.getElementById('correo').value  = data.correo;
	        	document.getElementById('telefono').value  = data.telefono;
	        	if(data.TipoPaciente=="1"){
	        		document.getElementById('tipopaciente').value  = "Estudiante";
	        		}else if(data.TipoPaciente=="2"){
	        			document.getElementById('tipopaciente').value  = "Trabajador";
	        		}
	        		
	        	document.getElementById('fff').value  = data.fechaNac;
	        	
        		document.getElementById("LabelEditar").innerHTML = "Editar";
        		document.getElementById("LabelGuardar").innerHTML = "";
        		document.getElementById("BtnEditar").style.display = 'block';
        		document.getElementById("BtnEditarG").style.display = 'none';
        		document.getElementById("tipoconsulta").focus();
        		//alert("encontrado");
        	}else{	 
        		VentanaCrearUsuario();
        		busqueda=false;
        		AccionCarnetCarga=false;
        		//document.getElementById("NRegPacienteEncontrado").style.display = 'none';
        		//document.getElementById("NRegPacienteNoEncontrado").style.display = 'block';
        		//alert("nada");
        		
        	}
        	
        }
    });
	
}

function Enviar_CITA(cadena){
	$.ajax({
        url: "../Citas",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		MostrarMensajeServidor(data.mensaje);
        		document.getElementById('paciente').value  = "";
        		limpiar_datos();
        	}else{
        		VentanaError("Se detecto un problema al almacenar en el servidor");
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
function Guardar(){
	var action="guardar";
	var variable1=validar_vacio('paciente');
	var variable2=validar_vacio('tipoconsulta');
	var variable3=validar_vacio('fecha');
	var variable4=validar_vacio('hi');
	
	var variable11="";
	var variable12="";
	var variable13="";
	var variable14="";
	var variable15="";
	var variable16="";
	var variable17="";
	var variable18="";
	var variable19="";
	
	if(AccionCarnetCarga){
		if(variable1!=""&variable2!=""&variable3!=""&variable4!=""){
			if(busqueda==false){
				variable11=validar_vacio('nombre1');
        		variable12=validar_vacio('sexo1');
        		variable13=validar_vacio('fechaNac');
        		variable14=validar_numerovacio('facultad1');
        		variable15=validar_vacio('edad1');
        		variable16=validar_vacio('cui1');
        		variable17=validar_numerovacio('tipopaciente1');
        		variable18=validar_vacio('correo1');
        		variable19=validar_numerovacio('telefono1');
        		
        		if(variable15!=""){
        			FechaE=true;
        		}else{
        			VentanaError("Verifique la edad del paciente");
        		}
        		if(variable11!=""&&variable12!=""&&variable13!=""&&variable14!="0"&&FechaE==true&&variable17!="0"){
        			var cadena = ['a='+action ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4
        			              ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p15='+variable15
        			              ,'p16='+variable16,'p17='+variable17,'p18='+variable18,'p19='+variable19,'busqueda='+busqueda].join('&');
    				Enviar_CITA(cadena);
        		}else{
        		

        			VentanaError("Faltan campos por completar");
        		}
			}else{
				var cadena = ['a='+action ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4
    			              ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p15='+variable15
    			              ,'p16='+variable16,'p17='+variable17,'p18='+variable18,'p19='+variable19,'busqueda='+busqueda].join('&');
				Enviar_CITA(cadena);
			}
			
		}
		else{
			VentanaError("Faltan campos por completar");
		}
	}else{
		VentanaError("Realice la busqueda del paciente e intentelo nuevamente");
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
document.getElementById('fechaNac').onkeydown = function (e) {
	if(e.keyCode == 13){
		var validar=document.getElementById('fechaNac').value;
		ValidarFecha();
		//if(existeFecha(validar)==false){
		//	alert("Error: ingrese una fecha valida");
		//	document.getElementById('fechaNac').value="";
		//}
		
		document.getElementById("correo1").focus();
		 return false;
       
	}
}
document.getElementById('correo1').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("telefono1").focus();
		 return false;
       
	}
}
document.getElementById('telefono1').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("tipoconsulta").focus();
		 return false;
       
	}
}
document.getElementById('tipoconsulta').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("fecha").focus();
		 return false;
       
	}
}
document.getElementById('fecha').onkeydown = function (e) {
	if(e.keyCode == 13){
		
		document.getElementById("hi").focus();
		 return false;
       
	}
}

</script>
<script>
var IDActual=0;
var IDUltimo=0;
function Buscar(){
	var variable3=validar_vacio('fecha1');
	var variable4=validar_vacio('RegAcademico');
	if(variable3!=""||variable4!=""){
		limpiardatos2();
		var action="cargar_tabla";
		var cadena = ['a='+action,'p3='+variable3,'p4='+variable4].join('&');
		$.ajax({
	        url: "../Citas",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	if(data.resultado=='OK'){
            		ActualizarTabla(data.total,data);
            		if(data.tp==2||data.tp==3){
            			document.getElementById('RegAcademico2').value  = variable4;
            			document.getElementById('nombre2').value  = data.nombre;
           	        	document.getElementById('sexo2').value  = data.sexo;
        	        	document.getElementById('edad2').value  = data.fecha;
        	        	document.getElementById('facultad2').value  = decodeURIComponent(data.facultad);
        	        	document.getElementById('cui2').value  = data.CUI;
        	        	document.getElementById('correo2').value  = data.correo;
        	        	document.getElementById('telefono2').value  = data.telefono;
        	        	if(data.TipoPaciente=="1"){
        	        		document.getElementById('tipopaciente2').value  = "Estudiante";
        	        		}else if(data.TipoPaciente=="2"){
        	        			document.getElementById('tipopaciente2').value  = "Trabajador";
        	        		}
        	        	document.getElementById("NRegPacienteEncontrado1").style.display = 'block';
            		}
            		document.getElementById("fecha1").value="";
            		document.getElementById("RegAcademico").value="";
            		
            	}else{
            		alert("No hay resultados");
            	}
	        	
	        	
	        }
		});
	}else{}
	//ActualizarTabla();
}
function ActualizarTabla(total,data){
	document.getElementById('tabla1').innerHTML = '';
	var encabezado='<thead><tr class="info"><th></th><th>Registro academico</th><th>Fecha</th><th>Hora</th><th>Consulta</th><th>Estado</th></tr></thead>';
	var marco='<div class="table-responsive"><table class="table table-hover" style="font-size:8pt;">'+ encabezado;
	
	var fila='';
	var resultado='';
	if(total!=0){
		for(i=0;i<total;i++){
			fila+='<tr>'
			+'<td>'+'<input class="form-control input-sm" id="R'+data.CITAS[i].idCITA+'" name="optradio" type="radio" align="center" onclick="checkSeleccion('+data.CITAS[i].idCITA+',\''+data.CITAS[i].paciente+'\''+',\''+data.CITAS[i].fecha+'\''+',\''+data.CITAS[i].hora_inicio+'\''+',\''+data.CITAS[i].tconsulta+'\''+',\''+data.CITAS[i].estado+'\''+')" />'+'</td>'
			+'<td>'+data.CITAS[i].paciente+'</td>'
			+'<td>'+data.CITAS[i].fecha+'</td>'
			+'<td>'+data.CITAS[i].hora_inicio+'</td>'
			+'<td>'+data.CITAS[i].tconsulta+'</td>'
			+'<td>'+data.CITAS[i].estado+'</td>'
			+'</tr>';
		}
		var registro='<tr><td>a</td><td>b</td></tr>';
		var fin='</table></div>';
		resultado=marco+'<div>'+fila+'</div>'+fin;
	}else{
		resultado='No se encontraron resultados';
	}
	
	
	document.getElementById('tabla1').innerHTML = resultado;
}
function EntradaFecha(entrada,ID){
	var result='';
	result='<div class="input-group date" id="dateicono'+ID+'">'
		+'<input class="form-control input-sm" name="fechas'+ID+'" id="fechas'+ID+'" type="text" value="'+entrada+'" style="width: 80px;" readonly/>'
		+'<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span></div>';
	return result;
}

function checkSeleccion(ID,pac,fec,hor,tc,te){
	IDActual=ID;
	document.getElementById("mod1").style.display = 'block';
	document.getElementById('paciente1').value = pac;
	document.getElementById('fechas1').value = fec;
	document.getElementById('hi1').value = hor;
	document.getElementById('tipoconsulta1').value = tc;
	document.getElementById('estado1').value = te;
	var RegAcademico2=document.getElementById('RegAcademico2').value;
	if(RegAcademico2!=pac){
		document.getElementById('nombre2').value  = "";
       	document.getElementById('sexo2').value  = "";
    	document.getElementById('edad2').value  = "";
    	document.getElementById('facultad2').value  = "";
    	document.getElementById('cui2').value  ="";
    	document.getElementById('correo2').value  = "";
    	document.getElementById('telefono2').value  = "";
    	document.getElementById('tipopaciente2').value  = "";
    	document.getElementById('RegAcademico2').value= pac;
		BuscarPaciente4(pac);
	}
}
function BuscarPaciente4(entrada){
	var carnet=entrada;
	
	var action="PacienteCitaDatos";
	cadena = [ 	'carnet='   + carnet,'a='+action].join('&');
	$.ajax({
        url: "../Citas",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	
        	if(data.resultado=='OK'){
        		document.getElementById('nombre2').value  = data.nombre;
   	        	document.getElementById('sexo2').value  = data.sexo;
	        	document.getElementById('edad2').value  = data.fecha;
	        	document.getElementById('facultad2').value  = decodeURIComponent(data.facultad);
	        	document.getElementById('cui2').value  = data.CUI;
	        	document.getElementById('correo2').value  = data.correo;
	        	document.getElementById('telefono2').value  = data.telefono;
	        	if(data.TipoPaciente=="1"){
	        		document.getElementById('tipopaciente2').value  = "Estudiante";
	        		}else if(data.TipoPaciente=="2"){
	        			document.getElementById('tipopaciente2').value  = "Trabajador";
	        		}
	        	document.getElementById("NRegPacienteEncontrado1").style.display = 'block';
        		//alert("encontrado");
        	}else{	 
        	
        		
        	}
        	
        }
    });
	
}
function AgregarBoton(ID){
	var result='<button class="btn btn-default" onclick="Modificar('+ID+')" id="BtnM'+ID+'" disabled >'
	     +'<img src="../imagenes/guardado.png" width="20" height="20" title="Modificar" /></button>';
	return result;
}
function EntradaSelect(entrada,ID){
	var result='';
	var marco='<select  class="form-control input-sm" style="width: 80px;" disabled id="tipoC'+ID+'">';
	var opcion='';
	if(entrada=="Primera consulta"){
		opcion='<option value="Primera consulta" selected>Primera consulta</option>'
	       	   +'<option value="Reconsulta">Reconsulta</option>';
	}
	else if(entrada=="Reconsulta"){
		opcion='<option value="Primera consulta">Primera consulta</option>'
	       	   +'<option value="Reconsulta" selected>Reconsulta</option>';
	}
	result=marco+opcion+'</select>';
	return result;
}
function EntradaEstado(entrada,ID){
	var result='';
	var marco='<select  class="form-control input-sm" style="width: 80px;" disabled id="EstadoC'+ID+'">';
	var opcion='';
	if(entrada=="Pendiente"){
		opcion='<option value="Pendiente" selected>Pendiente</option>'
	       	   +'<option value="No se presento">No se presento</option>'
	           +'<option value="Atendido">Atendido</option>'
	       	   +'<option value="Verificar">Verificar</option>';
	}
	else if(entrada=="No se presento"){
		opcion='<option value="Pendiente" selected>Pendiente</option>'
	       	   +'<option value="No se presento" selected>No se presento</option>'
	           +'<option value="Atendido">Atendido</option>'
	       	   +'<option value="Verificar">Verificar</option>';
	}
	else if(entrada=="Atendido"){
		opcion='<option value="Pendiente">Pendiente</option>'
	       	   +'<option value="No se presento">No se presento</option>'
	           +'<option value="Atendido" selected>Atendido</option>'
	       	   +'<option value="Verificar">Verificar</option>';
	}
	else if(entrada=="Verificar"){
		opcion='<option value="Pendiente">Pendiente</option>'
	       	   +'<option value="No se presento">No se presento</option>'
	           +'<option value="Atendido">Atendido</option>'
	       	   +'<option value="Verificar" selected>Verificar</option>';
	}
	result=marco+opcion+'</select>';
	return result;
}
function Modificar(){
	var action="modificar";
	var variable1=validar_vacio('paciente1');
	var variable2=validar_vacio('tipoconsulta1');
	var variable3=validar_vacio('fechas1');
	var variable4=validar_vacio('hi1');
	var variable5=validar_vacio('estado1');
	var ID=IDActual;
	if(variable1!=""&variable2!=""&variable3!=""&variable4!=""){
		var cadena = ['a='+action ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4
		              ,'p5='+variable5,'ID='+ID].join('&');
		$.ajax({
	        url: "../Citas",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	if(data.resultado=='OK'){
            		
            		MostrarMensajeServidor(data.mensaje);
            		limpiardatos2();
            	}else{
            		VentanaError("Error al almacenar");
            	}
	        	
	        	
	        }
		});
	}
	else{
		VentanaError("Error, faltan campos por completar");
	}
}
function limpiardatos2(){
	document.getElementById("mod1").style.display = 'none';
	document.getElementById('paciente1').value = "";
	document.getElementById('fechas1').value = "";
	document.getElementById('hi1').value = "";
	document.getElementById('tipoconsulta1').value = "";
	document.getElementById('estado1').value = "";
	document.getElementById('tabla1').innerHTML ="";
	document.getElementById('nombre2').value  = "";
   	document.getElementById('sexo2').value  = "";
	document.getElementById('edad2').value  = "";
	document.getElementById('facultad2').value  = "";
	document.getElementById('cui2').value  ="";
	document.getElementById('correo2').value  = "";
	document.getElementById('telefono2').value  = "";
	document.getElementById('tipopaciente2').value  = "";
	document.getElementById('RegAcademico2').value  = "";
	document.getElementById("NRegPacienteEncontrado1").style.display = 'none';
	
}
</script>	

<script type="text/javascript">

function MensajeServidor(codigo,descripcion){
	if(codigo==1){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'green';
	}else if(codigo==2){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'red';
	}
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