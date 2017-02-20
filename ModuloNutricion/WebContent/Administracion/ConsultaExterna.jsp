<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
        <link rel="shortcut icon" href="http://usalud.usac.edu.gt/favi.ico" type="image/x-icon">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   

  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>

 		
  
  		<script src="../jquery/autocompletar/jquery.autocomplete.js"></script>
        
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
		

	 	
	 
	  	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	    
	   <link href="../jquery/menuacordeon/css/dcaccordion.css" rel="stylesheet" type="text/css" />
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.cookie.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.hoverIntent.minified.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.dcjqaccordion.2.7.min.js'></script>
    	
    	<style type="text/css">
			#titulos { color: black; word-spacing: -5 px; letter-spacing: 3px;}
			#header_carousel { float:right; }
			.foto-inicio{	width:100%; height:100px; 	}
			.page-header {
			    padding-bottom: 9px;
			    margin: 0px 0 0px;
			}
			.container {
			    width: 85%;
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
			.table-fixed thead {
				  width: 97%;
				 
				}
				.table-fixed tbody {
				  height: 60px;
				  overflow-y: auto;
				  width: 100%;
				}
				.table-fixed thead, .table-fixed tbody, .table-fixed tr, .table-fixed td, .table-fixed th {
				  display: block;
				}
				.table-fixed tbody td, .table-fixed thead > tr> th {
				  float: left;
				  border-bottom-width: 0;
				}
		</style>
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:8pt; }
		option { font-size:8pt; }
		select { font-size:8pt; }
       	.ui-autocomplete {
		    position: absolute;
		    z-index: 1000;
		    cursor: default;
		    padding: 0;
		    margin-top: 2px;
		    list-style: none;
		    background-color: #ffffff;
		    border: 1px solid #ccc;
		    -webkit-border-radius: 5px;
		       -moz-border-radius: 5px;
		            border-radius: 5px;
		    -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
		       -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
		            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
		}
		.ui-autocomplete > li {
		  padding: 3px 20px;
		}
		.ui-autocomplete > li.ui-state-focus {
		  background-color: #DDD;
		}
		.ui-helper-hidden-accessible {
		  display: none;
		}
	</style>
		
	<script type="text/javascript">
$(document).ready(function() {
        $(function () {
            $('#horadesayuno').datetimepicker({ 
		    	format: 'LT'
	    	});
            $('#refamhr').datetimepicker({ 
		    	format: 'LT'
	    	});
            $('#almh').datetimepicker({ 
		    	format: 'LT'
	    	});
            $('#refpmhr').datetimepicker({ 
		    	format: 'LT'
	    	});
            $('#cenhr').datetimepicker({ 
		    	format: 'LT'
	    	});
        });
    });
</script>
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
        <h3 class="panel-title">Examen Consulta Externa</h3>
        </div>
        <div class="panel-body">
        
 <form action="../ConsultaExterna" method="post" class="form-inline" role="form" onsubmit="return false">
  <div class="form-group">
						    
							
							<div class="modal fade" id="VentanaNuevaEnfermedad" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Nueva Enfermedad</h4>
							        </div>
							        <div class="modal-body" align="center">
							      		<h5>La enfermedad no esta registrada,<br>¿Desea crearlo?</h5>
							      		<br>
							          	
								    
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="AñadirEnfermedad()" id="Guard6">Guardar</button>
							          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
							        </div>
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
	 <div class="modal fade" id="MensajeServidor2" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Mensaje</h4>
							        </div>
							        <div class="modal-body">
								    	<table>
							        	<tr><td><img src="../images/ok.jpg" width="50" height="50" /></td><td>&nbsp;<div id="MensajeAux2"></div></td></tr>
							        	
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
							          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="EliminarRegistro()">Aceptar</button>
							          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
							        </div>
							      </div>
							    </div>
							  </div>
  <ul class="nav nav-tabs" >
    <li class="active"><a data-toggle="tab" href="#home">Pagina1</a></li>
    <li><a data-toggle="tab" href="#menu1">Pagina2</a></li>
  </ul>
  
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <article>
      <div class="panel panel-primary">
      <div class="panel-heading">Datos Generales</div>
      <div class="panel-body">
      		
<div class="row-fluid" id="M7" tabindex="1">  

  <div class="form-group">
   
	<label for="NCarnet">Carnet/Codigo Personal</label>
	<input class="form-control input-sm" name="carnet" id="carnet" type="number" required/>
	
  </div>
	<div class="form-group" align="left">
   
	<label for="NCarnet">Fecha</label>
	<input class="form-control input-sm" name="fecha123" type="text" id="fecha123" style="width: 80px;" readonly/>
	
  </div>
  &nbsp;
	  <div class="form-group" >
		  <label for="TipoExame"><p id="LabelEditar"></p></label>
		  <button class="btn btn-sm" onclick="Editar()" id="BtnEditar">
			 <img src="../imagenes/guardado.png" width="20" height="20" title="Editar" /></button>
	  </div>
  	<div class="form-group" >
		  <label for="TipoExame"><p id="LabelGuardar"></p></label>
		  <button class="btn btn-sm" onclick="GuardarEditar()"id="BtnEditarG" >
			 <img src="../imagenes/guardado.png" width="20" height="20" title="Editar" /></button>
	  </div>
 	 <div id="mensaje1" >
	</div>
  </div>
 <div id="NRegPacienteNoEncontrado"> 
<div class="row-fluid">

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

&nbsp;&nbsp;
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
</div>



 
  </div>
<div class="row-fluid" id="NRegPacienteEncontrado">  
 
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
&nbsp;&nbsp;&nbsp;&nbsp;
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
			      <div class="panel-heading">Antecedentes Medicos</div>
			      <div class="panel-body"  >
			      
			      <div class="col-sm-5" >
			      	<div id="TablaEnfermedad" class="row">
			      	
			      </div>
			      <br><br>
			      <div class="row-fluid">
				   <input class="form-control input-sm autocomplete" type="text"  name="enfermedad" id="enfermedad" maxlength="40" placeholder="Ingresar enfermedad" />            
					</div>  	
					  
					</div>
					 <div class="col-sm-7" >
			      	<div class="row-fluid">
			      	
					  	&nbsp;&nbsp;&nbsp;&nbsp;
					  	<div class="form-group">
					  		<label for="Lsubescapular" style="background-color: #337ab7; margin: 0px 0 0px;"><font color="white">&nbsp;Medicamentos</font></label>
					  		<textarea class="form-control input-sm" name="medicamento" id="medicamento" cols="40" rows="3" maxlength="240"></textarea>
					  		     
					  	</div>
					  	 </div>
					  	 <br>
					  	 <div class="row-fluid">
					  	&nbsp;&nbsp;&nbsp;&nbsp;
					  	<div class="form-group">
					  		<label for="Lsumapliegues" style="background-color: #337ab7; margin: 0px 0 0px;"><font color="white">&nbsp;Suplementos</font></label>
					  		<textarea class="form-control input-sm" name="suplemento" id="suplemento" cols="40" rows="2" maxlength="240"></textarea>
					  		
					  	</div>
					 </div>
			      	</div>
			      	</div>
			    </div>
			
			
		
	
  
  
  </article> 

 
<article>
	<div class="panel panel-primary">
      <div class="panel-heading">Estilo de vida</div>
      <div class="panel-body" align="center">
      
      	<div class="row-fluid">
  	<div class="form-group">
  		<label for="Ltricipital" >Fuma<br>&nbsp;</label>
  		<input class="form-control input-sm" id="fuma" type="checkbox" align="center" onclick="checkFuma(this)" />
                   
  	</div>
  	&nbsp;
  	<div class="form-group">
  		<label for="Lsubescapular" >No. Cigarrillos<br>&nbsp;</label>
  		<input class="form-control input-sm" id="ncigarro"  min="0" type="number"  style="width: 60px;" readonly/>
            
  	</div>
  	&nbsp;
  	<div class="form-group">
  		<label for="Lsumapliegues" >Frecuencia<br>&nbsp;</label>
  		<select class="form-control input-sm" id="fumafrec" style="width: 80px;" disabled>
  							<option value="0"></option>
							<option value="1">Ocasionalmente</option>
							<option value="2">Dos o tres veces por semana</option>
							<option value="3">Cuatro a cinco veces por semana</option>
							<option value="4">Diariamente</option>
						</select>
  
  	</div>
	&nbsp;
  	<div class="form-group">
  		<label for="Ltricipital" >Ejercicio<br>&nbsp;</label>
  		<input class="form-control input-sm" id="ejercicio" type="checkbox" align="center" onclick="checkEjercicio(this)" />
                   
  	</div>
  	&nbsp;
  	<div class="form-group">
  		<label for="Lsubescapular" >Tiempo en <br>minutos</label>
  		<input class="form-control input-sm" id="ejerciciotiempo"  min="0" type="number"  style="width: 60px;" readonly />
            
  	</div>
  	&nbsp;
  	<div class="form-group">
  		<label for="Lsumapliegues" >Frecuencia<br>&nbsp;</label>
  		<select class="form-control input-sm" id="ejerciciofrec" style="width: 80px;" disabled>
  							<option value="0"></option>
							<option value="1">Ocasionalmente</option>
							<option value="2">Dos o tres veces por semana</option>
							<option value="3">Cuatro a cinco veces por semana</option>
							<option value="4">Diariamente</option>
						</select>
  
  	</div>
	&nbsp;
  	<div class="form-group">
  		<label for="Ltricipital" >Bebidas <br>alcoholicas</label>
  		<input class="form-control input-sm" id="bebidaalc" type="checkbox" align="center" onclick="checkBebida(this)" />
                   
  	</div>
  	&nbsp;
  	<div class="form-group">
  		<label for="Lsumapliegues" >Frecuencia<br>&nbsp;</label>
  		<select class="form-control input-sm" id="bebidaalcfrec" style="width: 80px;" disabled>
  							<option value="0"></option>
							<option value="1">Ocasionalmente</option>
							<option value="2">Dos o tres veces por semana</option>
							<option value="3">Cuatro a cinco veces por semana</option>
							<option value="4">Diariamente</option>
						</select>
  
  	</div>

  </div>
      	
      	</div>
    </div>

  
  </article>
  
  <article>
  <div class="panel panel-primary">
      <div class="panel-heading">Habitos alimentarios</div>
      <div class="panel-body">
      	
      
		    <div class="row">
				<div class="col-sm-6" >
				
					<div class="panel panel-primary">
				      <div class="panel-heading">Horarios de comida</div>
				      <div class="panel-body" align="center">
				      		
							  		<div class="table-responsive" style="font-size:8pt;">
										  <table class="table table-bordered" width="80%">
										  		<thead>
												<tr>
													<th>Tiempo</th><th>Horario</th><th>Tiempo de comida<br>(minutos)</th>
												</tr>
												</thead>
												<tbody>
												<tr>
													<td>Desayuno</td>
													<td><input class="form-control input-sm" name="horadesayuno" id="horadesayuno" style="width:70px;" /></td>
													<td><input class="form-control input-sm" name="tcdesayuno" id="tcdesayuno" type="number" min="0" style="width: 60px;" /></td>
												</tr>
												<tr>
													<td>Refaccion AM</td>
													<td><input class="form-control input-sm" name="refamhr" id="refamhr" style="width:70px;" /></td>
													<td><input class="form-control input-sm" name="tcrefaccion" id="tcrefaccion" type="number" min="0" style="width: 60px;" /></td>
												</tr>
												<tr>
													<td>Almuerzo</td>
													<td><input class="form-control input-sm" name="almh" id="almh" style="width:70px;" /></td>
													<td><input class="form-control input-sm" name="tcalmuerzo" id="tcalmuerzo" type="number" min="0" style="width: 60px;" /></td>
												</tr>
												<tr>
													<td>Refaccion PM</td>
													<td><input class="form-control input-sm"  id="refpmhr" style="width:70px;" /></td>
													<td><input class="form-control input-sm" name="tcrefaccionpm" id="tcrefaccionpm" type="number" min="0" style="width: 60px;" /></td>
												</tr>
												<tr>
													<td>Cena</td>
													<td><input class="form-control input-sm" name="cenhr" id="cenhr" style="width:70px;" /></td>
													<td><input class="form-control input-sm" name="tccena" id="tccena" type="number" min="0" style="width: 60px;" /></td>
												</tr>
												</tbody>
										  </table>
										</div>
							  
				      </div>
				    </div>
				
				</div>
				<div class="col-sm-3" >
				<div class="panel panel-primary">
			      <div class="panel-heading">Transtornos Digestivos</div>
			      <div class="panel-body" align="center">
			      
			      	<div class="row-fluid">
			      		<div class="form-group">
					  		<label for="Ltricipital">Diarrea</label>
					  		<input class="form-control input-sm" id="diarrea" type="checkbox" align="center"  />
					                   
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsubescapular">Flatulencia</label>
					  		<input class="form-control input-sm" id="flatulencia" type="checkbox" align="center" />
					  		     
					  	</div>
			      	</div>
			      	<div class="row-fluid">
			      		<div class="form-group">
					  		<label for="Lsumapliegues">Acidez</label>
					  		<input class="form-control input-sm" id="acidez" type="checkbox" align="center" />
					  		
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Estreñimiento</label>
					  		<input class="form-control input-sm" id="estreñimiento" type="checkbox" align="center" />
					  		
					  	</div>
			      	</div>
			      	</div>
			    </div>
			</div>
			<div class="col-sm-3" >
							<div class="panel panel-primary">
							      <div class="panel-heading">Lugar de consumo</div>
							      <div class="panel-body" align="center">
							      		<div class="row-fluid">
										  	<div class="form-group">
										  		<label for="Lcasa">Casa</label>
										  		<input class="form-control input-sm" id="Lcasa" type="checkbox" align="center" />
										                   
										  	</div>
										  	<div class="form-group">
										  		<label for="Ltrabajo">Trabajo</label>
										  		<input class="form-control input-sm" id="Ltrabajo" type="checkbox" align="center" />
										  		     
										  	</div>
										  	<div class="form-group">
										  		<label for="Lotros">Otros</label>
										  		<input class="form-control input-sm" id="Lotro" type="checkbox" align="center" />
										  		
										  	</div>
										  </div>
							      </div>
							    </div>
						</div>
				<div class="col-sm-3"  >
					<div class="form-group">
					  		<label for="Ltricipital">Consumo de Agua(Vasos)</label>
					  		<input class="form-control input-sm" name="agua" id="agua" type="number" min="0" style="width: 70px;"  align="right"/>
					                  
					  	</div>
				</div>
					
					<div class="row">
						
						<div class="col-sm-6" >
							<div class="panel panel-primary">
						      <div class="panel-heading">Origen de alimentos</div>
						      <div class="panel-body" align="center">
						      		 <div class="row-fluid">
									  	<div class="form-group">
									  		<label for="Ltricipital">Casa</label>
									  		<input class="form-control input-sm" id="Ocasa" type="checkbox" align="center" />
									                   
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsubescapular">Cafeteria</label>
									  		<input class="form-control input-sm" id="Ocafeteria" type="checkbox" align="center" />
									  		     
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsumapliegues">Caseta</label>
									  		<input class="form-control input-sm" id="Ocaseta" type="checkbox" align="center" />
									  		
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsumapliegues">Chiclero</label>
									  		<input class="form-control input-sm" id="Ochiclero" type="checkbox" align="center" />
									  		
									  	</div>
									  </div>
						      </div>
						    </div>
						</div>
					</div>
				
				
			</div>
		
   
		    <div class="row">
			
			
				<div class="panel panel-primary">
			      <div class="panel-heading">Otros</div>
			      <div class="panel-body" >
			      
			        <div class="row">
					  	
					  	&nbsp;&nbsp;&nbsp;&nbsp;
					  	<div class="form-group">
					  		<label for="Lsubescapular" style="background-color: #337ab7; margin: 0px 0 0px;"><font color="white">&nbsp;Alimentos que le hacen daño</font></label>
					  		<textarea class="form-control input-sm" name="ald" id="ald" cols="30" rows="2" maxlength="240" ></textarea>
					            
					  	</div>
					  	&nbsp;
					  	<div class="form-group">
					  		<label for="Lsumapliegues" style="background-color: #337ab7; margin: 0px 0 0px;"><font color="white">&nbsp;Alimentos que no le gustan</font></label>
					  		<textarea class="form-control input-sm" name="aln" id="aln" cols="30" rows="2" maxlength="240"></textarea>
					        
					  		
					  	</div>
					  	&nbsp;
					  	<div class="form-group">
					  		<label for="Lsumapliegues" style="background-color: #337ab7; margin: 0px 0 0px;"><font color="white">&nbsp;Alimentos preferidos</font></label>
					  		<textarea class="form-control input-sm" name="alp" id="alp" cols="30" rows="2" maxlength="240"></textarea>
					        
					  		
					  	</div>
					  </div>
			      
			      </div>
			    </div>
			
			
			
		</div>
		
      	</div>
    </div>
  
  	
  
  


  </article>  
  

   
    </div>
    <div id="menu1" class="tab-pane fade">
    	<article>
    		
    			 <div class="row" >
				    <div class="col-sm-8" >
				    
			<div class="panel panel-primary">
		      <div class="panel-heading">Recordatorio de 24 horas</div>
		      <div class="panel-body">
		      	
					  <div class="row">
					  		<div class="form-group">
						    <label>Tiempo de comida</label>
						    <select class="form-control input-sm" id="TiempoComida" name="TiempoComida">
													<option >Desayuno</option>
													<option >Refaccion AM</option>
													<option >Almuerzo</option>
													<option >Refaccion PM</option>
													<option >Cena</option>
												</select>
						</div>
						<div class="form-group">
						     <label for="BNuevo">Agregar</label>			
							<button class="btn btn-default" id="BtnATC" onclick="AgregarTiempoComida()" >
						     <img src="../imagenes/th.jpg" width="20" height="15" title="Tiempo" /></button>
							
						</div>
					  </div>
					  
					  <div id="TablaAlimento" class="row">
					  
					 </div>
					  <br>
					  <div class="row">
					  	<div class="form-group">
						    <label>Alimento</label>
						    <input class="form-control input-sm autocomplete" id="alimento" name="alimento" placeholder="Ingresa alimento" readonly/>
						</div>
						<div class="form-group">
						    <label>Calorias</label>
						    <input class="form-control input-sm" id="calorias" name="calorias" style="width: 70px;" readonly />
						</div>
						<div class="form-group">
						    <label>Porcion</label>
						    <input class="form-control input-sm" id="cantidada" name="cantidada" type="number" min="0" style="width: 70px;" readonly />
						</div>
						<div class="form-group">
						    <label for="BAgregar">Agregar</label>			
							<button class="btn btn-default" id="BAlAgregar" onclick="AgregarAlimento()" disabled>
						     <img src="../imagenes/agregar.png" width="20" height="15" title="Agregar" /></button>
							
						  </div>
						<div class="form-group">
						    <select class="form-control input-sm" name="porcion" id="porcion" style="visibility:hidden" readonly>
													<option value="1" >U</option>
													<option value="2" >taza</option>
													<option value="3" >cda/taza</option>
													<option value="4" >rod</option>
													<option value="5" >vaso</option>
													<option value="6" >barra</option>
													<option value="7" >paq</option>
													<option value="8" >cda</option>
													<option value="9" >onz</option>
													<option value="10" >cdta</option>
													<option value="11" >und</option>
													<option value="12" >ml</option>
												</select>
						  </div>
						  
						<div class="form-group">
						    
							
							<div class="modal fade" id="VentanaNuevoAlimento" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Nuevo Alimento</h4>
							        </div>
							        <div class="modal-body" align="center">
							      		<h5>El alimento no esta registrado,<br>¿Desea crearlo?</h5>
							      		<br>
							          	<div class="row">
								      		<div class="form-group">
												    <label>1 porcion(100 gramos)</label>
												    <input class="form-control input-sm" id="NuevoAl"  type="text" style="width: 100px;" placeholder="alimento" />
												</div>
												<div class="form-group">
												    <label>Calorias</label>
												    <input class="form-control input-sm" id="NuevaCal"  type="number" min="0"  style="width: 70px;"/>
												</div>
												<div class="form-group">
												    <label>Grupo</label>
												     <select class="form-control input-sm" id="NuevoGrupo">
													<option value="1" >Lacteos bajos en grasa</option>
													<option value="2" >Lacteos enteros</option>
													<option value="3" >Vegetales</option>
													<option value="4" >Frutas</option>
													<option value="5" >Cereales</option>
													<option value="6" >Carnes</option>
													<option value="7" >Grasa</option>
													<option value="8" >Azucares</option>
												</select>
												</div>
												<div class="form-group">
						   <label>Metrica</label>
						    <select class="form-control input-sm" name="metrica" id="metrica" >
													<option value="1" >U</option>
													<option value="2" >taza</option>
													<option value="3" >cda/taza</option>
													<option value="4" >rod</option>
													<option value="5" >vaso</option>
													<option value="6" >barra</option>
													<option value="7" >paq</option>
													<option value="8" >cda</option>
													<option value="9" >onz</option>
													<option value="10" >cdta</option>
													<option value="11" >und</option>
													<option value="12" >ml</option>
												</select>
						  </div>
								      	</div>
								    
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="AñadirAlimentoBD()" id="Guard6">Guardar</button>
							          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
							        </div>
							      </div>
							    </div>
							  </div>
							
						</div>
					</div>
		      	<div class="row" align="center">
		      		<div class="form-group">
						    <label>Dieta Baja en</label>
						    <input class="form-control input-sm" id="dbaja" name="dbaja" type="text" style="width: 90px;" />
						</div>
						<div class="form-group">
						    <label>Dieta Alta en</label>
						    <input class="form-control input-sm" id="dalta" name="dalta" type="text" style="width: 90px;" />
						</div>
		      	</div>
		      </div>
		    </div>	    
						



<div class="panel panel-primary">
      <div class="panel-heading">Evaluacion Antropometrica</div>
      <div class="panel-body" align="center">
      
      	<div class="row" >
				<div class="form-group">
						<label >Talla(m)<br>&nbsp;</label>
						<input class="form-control input-sm" id="talla" name="talla" type="number" style="width: 60px;"  min="0" step="any" onkeyup="ValidarDecimal()" />
				</div>
				<div class="form-group">
						<label >Peso(Lbs)<br>&nbsp;</label>
						<input class="form-control input-sm" id="pesousual" name="pesousual" type="number" min="0" style="width: 60px;" />
				</div>
				<div class="form-group">
						<label >Peso minimo<br>(Lbs)</label>
						<input class="form-control input-sm" id="pesominimo" name="pesominimo" type="number" style="width: 70px;" readonly />
				</div>
			
				<div class="form-group">
						<label >Peso maximo<br>(Lbs)</label>
						<input class="form-control input-sm" id="pesomax" name="pesomax" type="number"  style="width: 70px;" readonly />
				</div>
				<div class="form-group">
						<label >Peso ideal<br>(Lbs)</label>
						<input class="form-control input-sm" id="pesoideal" name="pesoideal" type="number" min="0" style="width: 70px;" readonly  />
				</div>
				<div class="form-group">
						<label >Circunferencia <br>de muñeca</label>
						<input class="form-control input-sm" id="circunferencia" name="circunferencia" type="number" min="0"  style="width: 80px;"/>
				</div>
				<div class="form-group">
						<label >Edad<br>Metabolica</label>
						<input class="form-control input-sm" id="edadmeta" name="edadmeta" type="number" min="0" style="width: 80px;"  />
				</div>
			</div>	
      
      </div>
    </div>


<div class="panel panel-primary">
      <div class="panel-heading">Registro</div>
      <div class="panel-body" align="center">
      		
					<div class="row" >
					<div class="form-group">
							<label>% de Grasa<br>&nbsp;</label>
							<input class="form-control input-sm" id="grasa" name="grasa" type="number" min="0" style="width: 65px;" />
					</div>
					<div class="form-group">
							<label>% de masa<br>muscular</label>
							<input class="form-control input-sm" id="musculo" name="musculo" type="number" min="0" style="width: 70px;" />
					</div>
				
					
					<div class="form-group">
							<label>% de Agua<br>&nbsp;</label>
							<input class="form-control input-sm" id="pagua" name="pagua" type="number"  min="0" style="width: 65px;"/>
					</div>
					<div class="form-group">
							<label>Masa<br>Osea</label>
							<input class="form-control input-sm" id="masa" name="masa" type="number" min="0" style="width: 60px;" />
					</div>
			
					<div class="form-group">
							<label>Grasa<br>Visceral</label>
							<input class="form-control input-sm" id="viscera" name="viscera" type="number" min="0" style="width: 60px;"/>
					</div>
					<div class="form-group">
							<label>Cintura<br>Abdominal</label>
							<input class="form-control input-sm" id="abdomen" name="abdomen" type="number" min="0" style="width: 60px;" />
					</div>
					
				
				</div>
				<div class="row">
					<div class="form-group">
							<label>Peso (kg)</label>
							<input class="form-control input-sm" id="peso" name="peso" type="number" style="width: 70px;" readonly/>
					</div>
					<div class="form-group">
							<label>IMC</label>
							<input class="form-control input-sm" id="imc" name="imc" type="number" readonly  style="width: 70px;"/>
					</div>
				
					<div class="form-group">
							<label>Diagnostico</label>
							<input class="form-control input-sm" id="diagnostico" name="diagnostico" readonly />
					</div>
					</div>
      
      </div>
    </div>



<div class="panel panel-primary">
      <div class="panel-heading">Planificacion</div>
      <div class="panel-body" align="center">
      		<div class="row">
			<div class="form-group">
					<label>Planificacion del tratamiento -Metas-</label>
					<textarea class="form-control input-sm" id="plan" name="plan" cols="60" rows="5" maxlength="240"></textarea>
			</div>
		
		</div>	
      </div>
    </div>
	
				    </div>
				    
				    
				    <div class="col-sm-4" >
				    <div class="panel panel-primary">
      <div class="panel-heading">Frecuencia de consumo</div>
      <div class="panel-body" align="right">
				    	
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Verduras</b>
					  		<select id="verdura" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
					  			<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select> 
				            &nbsp;&nbsp;       
					  	</div>
					  </div>
					  
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Frutas</b>
					  		<select id="fruta" class="form-control input-sm" style="width: 90px;" >
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>     
				            &nbsp;&nbsp;    
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
									<b>Carne,pollo,pescado</b>
									<select id="pollo" class="form-control input-sm" style="width: 90px;" >
																<option value="0"></option>
												            	<option value="1">No consume</option>
												            	<option value="2">Ocasional</option>
												                <option value="3">Semanal</option>
												                <option value="4">Mensual</option>
												                <option value="5">Diario</option>
												            </select>
												            &nbsp;&nbsp;
								  	</div>
								  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Lacteos</b>
					  		<select id="lacteo" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select> 
				            &nbsp;&nbsp;        
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		
							
									<b>Hamburguesas,pizza,pollo frito</b>
									<select id="hamburguesa" class="form-control input-sm" style="width: 90px;">
																<option value="0"></option>
												            	<option value="1">No consume</option>
												            	<option value="2">Ocasional</option>
												                <option value="3">Semanal</option>
												                <option value="4">Mensual</option>
												                <option value="5">Diario</option>
												            </select>    
												            &nbsp;&nbsp;     
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		
							
								<b>Snacks(papalinas,tortrix,ricitos,etc)</b>
								<select id="snack" class="form-control input-sm" style="width: 90px;">
															<option value="0"></option>
											            	<option value="1">No consume</option>
											            	<option value="2">Ocasional</option>
											                <option value="3">Semanal</option>
											                <option value="4">Mensual</option>
											                <option value="5">Diario</option>
											            </select>  
								&nbsp;&nbsp;
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Refrescos embasados</b>
					  		<select id="refresco" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select> 
				            &nbsp;&nbsp;      
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  							
								<b>Galletas,pasteles,pan dulce</b>
								<select id="galleta" class="form-control input-sm" style="width: 90px;">
															<option value="0"></option>
											            	<option value="1">No consume</option>
											            	<option value="2">Ocasional</option>
											                <option value="3">Semanal</option>
											                <option value="4">Mensual</option>
											                <option value="5">Diario</option>
											            </select>
								&nbsp;&nbsp;   
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		
								<b>Dulces,chocolates,chicles</b>
								<select id="dulce" class="form-control input-sm" style="width: 90px;">
															<option value="0"></option>
											            	<option value="1">No consume</option>
											            	<option value="2">Ocasional</option>
											                <option value="3">Semanal</option>
											                <option value="4">Mensual</option>
											                <option value="5">Diario</option>
											            </select> &nbsp;&nbsp;
	    
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Embutidos</b>
					  		<select id="embutido" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>  
				           &nbsp;&nbsp;     
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Sopas instantaneas</b>
					  		<select id="sopa" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select> 
				            &nbsp;&nbsp;       
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
								<b>Frituras,chicharron,carnitas</b>
								<select id="fritura" class="form-control input-sm" style="width: 90px;" >
															<option value="0"></option>
											            	<option value="1">No consume</option>
											            	<option value="2">Ocasional</option>
											                <option value="3">Semanal</option>
											                <option value="4">Mensual</option>
											                <option value="5">Diario</option>
											            </select>  &nbsp;&nbsp;
							   
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Tortillas</b>
					  		<select id="tortilla" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>  
				            &nbsp;&nbsp;       
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Papas</b>
					  		<select id="papa" class="form-control input-sm" style="width:90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>    
				            &nbsp;&nbsp;     
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Pasta</b>
					  		<select id="pasta" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>  
				            &nbsp;&nbsp;       
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Arroz</b>
					  		<select id="arroz" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>   
				            &nbsp;&nbsp;      
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Frijol</b>
					  		<select id="frijol" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>     
				            &nbsp;&nbsp;    
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Pan</b>
					  		<select id="pan" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>      
				            &nbsp;&nbsp;   
					  	</div>
					  </div>
					  <br>
					  <div class="row">
					  	<div class="form-group" style="font-size:8pt;">
					  		<b>Huevo</b>
					  		<select id="huevo" class="form-control input-sm" style="width: 90px;">
					  			<option value="0"></option>
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>   
				            &nbsp;&nbsp;      
					  	</div>
					  </div>
					  </div>
    </div>
					  
				    </div>
				  </div>
    		
    	</article>
    </div>
  </div>
  
 
  </br>
          <div class="row" align="center" id="Guard" >
      		<div class="form-group" >			
							<button class="btn btn-default" onclick="Guardar()" id="Guard4" >
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Guardar" />Guardar</button>
							
			</div>
			</div>
			<div class="row" align="center" id="Mod" >
			<div class="form-group" >
				<button class="btn btn-default" id="BtnVET1"  onclick="CalculosVET()" >
				<img src="../imagenes/vet2.jpg" width="40" height="30" title="CalculosVET" />VET</button>	  
			</div>
            <div class="form-group" >			
							<button class="btn btn-default" onclick="Modificar()" id="BtnMod">
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Modificar" />Modificar</button>
							
			</div>
			<div class="form-group" >		
							<button class="btn btn-default" onclick="BorrarReg()" id="BtnEl" >
						     <img src="../imagenes/eliminar.png" width="40" height="30" title="Eliminar" />Eliminar</button>
							
			</div>
		</div>
</form>
        
 <script>
        var busqueda=false;
        var ERRORSQL=false;
        var carnetaccion="";
        
        
        var listadoAlimentos="";
        var ArrTiempoCom=["","","","",""];
        var ArrComida=[];
        var ArrCant=[];
        var ArrUnidad=[];
        var ArrpComida=[];
        var ArrKcal=[];
        var contp=0;
        var idCE=0;
        var habilitado=false;
        
        var UsuarioSesion = "null";
		var IdUsuarioSesion = "null";
		var PerfilSesion ="null";
		var iniciarCarga=false;
		var NomUsuario="null";
		var Enfermed=[];
		var econt=0;
		var AccionCarnetCarga=false;
	document.getElementById('carnet').onkeydown = function (e) {
	        	
	            if (e.which === 13) {
	            	var carnet=document.getElementById('carnet').value;
	            	limpiarInfoGeneral();
	            	idCE=0;
	            	if(carnet!=""){
	            		AccionCarnetCarga=false;
	            		limpiar_datos();
	            		BuscarPaciente(carnet);
	            	}else{
	            		VentanaError(" Ingrese un numero de carnet/registro valido");
	            	}
	            	
	                return false;
	            }else{
	            	if(AccionCarnetCarga){
	            		limpiarInfoGeneral();
	            		idCE=0;
	            		AccionCarnetCarga=false;
	            		busqueda=false;
	            		document.getElementById("LabelEditar").innerHTML = "";
	            		document.getElementById("LabelGuardar").innerHTML = "";

	            		document.getElementById("BtnEditar").style.display = 'none';
	            		document.getElementById("BtnEditarG").style.display = 'none';
	            		limpiar_datos();
	            	}
	            }
	        };
		document.getElementById('alimento').onkeydown = function (e) {
			        	
			            if (e.which === 13) {
			            	var alimen=document.getElementById('alimento').value;
			            	if(alimen!=""){
			            		document.getElementById('NuevoAl').value  = "";
	            		        document.getElementById('NuevaCal').value  = "";
	            		        document.getElementById('calorias').value  = "";
	            		        document.getElementById('cantidada').value  = "";
			            		VerificarAlimento(alimen);
			            	}
			            	
			            	
			                return false;
			            }
			        };
		function VerificarAlimento(aliment){
			var action="AlExiste";
			var texto=aliment.toLowerCase();
    		var cadena = ['a='+action,'alimento='+texto].join('&');


    		$.ajax({
    	        url: "../Alimento",
    	        data: cadena,
    	  	    type: 'post',
    	        dataType: 'json',
    	        success: function(data){
    	        	if(data.resultado=='OK'){
    	        		if(data.total=="0"){
    	        			//El alimento no existe
    	        			document.getElementById('NuevoAl').value  = texto;
    	        			VentanaAlimento();
    	        		}else{
    	        			document.getElementById('alimento').value  = texto;
            		        document.getElementById('calorias').value  = data.calorias;
            		        
            		        document.getElementById('NuevoAl').value  = "";
            		        document.getElementById('NuevaCal').value  = "";
            		        
            		        document.getElementById("cantidada").focus();
    	        		}	
    	        	}else{
    	        		VentanaError("Error, al buscar el alimento en el servidor");
    	        	}
    	        	
    	        	
    	        	
    	        }
    		});
		}
	    function VentanaAlimento(){
			 jQuery('#VentanaNuevoAlimento').modal("show");
	    }		
	    function limpiarInfoGeneral(){
	    	document.getElementById("LabelEditar").innerHTML = "";
	    	document.getElementById("LabelGuardar").innerHTML = "";

	    	document.getElementById("BtnEditar").style.display = 'none';
	    	document.getElementById("BtnEditarG").style.display = 'none';
	    	document.getElementById("TablaEncargado").innerHTML = "";
        	document.getElementById("RegMulti").innerHTML ="";
        	document.getElementById("NRegPacienteEncontrado").style.display = 'none';
    		document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
        	document.getElementById("Mod").style.display = 'none';
			document.getElementById("Guard").style.display = 'block';
			document.getElementById("BtnMod").disabled = false;
			document.getElementById("BtnEl").disabled = false;
			
			document.getElementById('nombre').value  = "";
    		document.getElementById('sexo').value  = "Femenino";
    		document.getElementById('edad').value  = "";
    		document.getElementById('facultad').value  = "";
    		
    		document.getElementById('nombre1').value  = "";
    		document.getElementById('sexo1').value  = "Femenino";
    		document.getElementById('fechaNac').value  = "";
    		
    		document.getElementById('cui1').value  = "";
    		document.getElementById('tipopaciente1').value  = "0";
    		document.getElementById('correo1').value  = "";
    		document.getElementById('telefono1').value  = "";
    		
    		document.getElementById('cui').value  = "";
    		document.getElementById('tipopaciente').value  = "";
    		document.getElementById('correo').value  = "";
    		document.getElementById('telefono').value  = "Femenino";
	    }
        function MostrarMensajeServidor(texto){
        	document.getElementById('MensajeAux').innerHTML  = texto;
        	jQuery('#MensajeServidor').modal("show");  
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
        
        	function CargaInicio() {
        		document.getElementById("NRegPacienteEncontrado").style.display = 'none';
        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
        		document.getElementById("BtnEditar").style.display = 'none';
        		document.getElementById("BtnEditarG").style.display = 'none';
        		ActualizarTablaEnfermedad();
        		var MID = getUrlVars()["prodId"];
        		idCE = getUrlVars()["idCE"];
        		if(idCE!=undefined){
        			iniciarCarga=true;
        			CargaEdicion(idCE);
        			document.getElementById("Guard").style.display = 'none';
        		}else{
        			if(MID!=undefined){
            			document.getElementById("Guard").style.display = 'none';
            			//CargaEdicion(MID);
            		}else{
            			document.getElementById("Mod").style.display = 'none';
            		}
        		}
        		VerificarSesion();
        		cargar_hora();
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
        	
        	function CargaEdicion(MID){
        		limpiar_datos();
        		var action="CargaEdicion";
        		var cadena = ['a='+action,'ID='+MID].join('&');
			
        		$.ajax({
        	        url: "../ConsultaExterna",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		idCE=MID;
        	        		//document.getElementById('carnet').value  = data.PACIENTE_idPACIENTE;
        	        		//document.getElementById('carnet').readOnly = true;
        	        		
        	        		//CargaDPaciente(data.pnombre,data.pedad,data.psexo,data.pfacultad,data.PACIENTE_idPACIENTE)
        	        		
        	        		document.getElementById("dbaja").value  = data.DietaBaja;
        	        		document.getElementById("dalta").value  = data.DietaAlta;
        	        		document.getElementById("talla").value  = data.talla;
        	        		document.getElementById("pesousual").value  = data.peso;
        	        		document.getElementById("circunferencia").value  = data.CircunferenciaMuneca;
        	        		document.getElementById("edadmeta").value  = data.EdadMetabolica;

        	        		document.getElementById("fuma").checked  = AsignarCheck(data.fuma);
        	        		if(data.fuma=="1"){
        	        			document.getElementById("fumafrec").disabled = false;
        	        		}
        	        		document.getElementById("ncigarro").value  = data.numero_cigarros;
        	        		document.getElementById("fumafrec").value  = data.frec_fuma;
        	        		document.getElementById("ejercicio").checked  = AsignarCheck(data.ejercicio);
        	        		if(data.ejercicio=="1"){
        	        			document.getElementById("ejerciciofrec").disabled = false;
        	        		}
        	        		document.getElementById("ejerciciotiempo").value  = data.tiempo_min;
        	        		document.getElementById("ejerciciofrec").value  = data.frec_ejercicio;
        	        		document.getElementById("bebidaalc").checked  = AsignarCheck(data.bebida);
        	        		if(data.bebida=="1"){
        	        			document.getElementById("bebidaalcfrec").disabled = false;
        	        		}
        	        		document.getElementById("bebidaalcfrec").value  = data.frec_bebida;
        	        		
        	        		document.getElementById("tcdesayuno").value  = data.TDesayuno;
        	        		document.getElementById("tcrefaccion").value  = data.TRefaccion;
        	        		document.getElementById("tcalmuerzo").value  = data.TAlmuerzo;
        	        		document.getElementById("tcrefaccionpm").value  = data.TRefaccionPM;
        	        		document.getElementById("tccena").value  = data.TCena;
        	        		document.getElementById("agua").value  = data.NoVasoAgua;
        	        		document.getElementById("ald").value  = data.AlimentoDano;
        	        		document.getElementById("aln").value  = data.AlimentoNoGusta;
        	        		document.getElementById("alp").value  = data.AlimentoPreferido;
        	        		
        	        		
        	        		document.getElementById("grasa").value  = data.PorGrasa;
        	        		document.getElementById("musculo").value  = data.PorMasaMuscular;
        	        		document.getElementById("pagua").value  = data.PorAgua;
        	        		document.getElementById("masa").value  = data.MasaOsea;
        	        		document.getElementById("viscera").value  = data.GrasaVisceral;
        	        		document.getElementById("abdomen").value  = data.CinturaAbdominal;
        	        		document.getElementById("plan").value  = data.plan;
        	        		
        	        		//document.getElementById("enfermedad").value  = data.enfermedad_actual;
        	        		document.getElementById("medicamento").value  = data.medicamento;
        	        		document.getElementById("suplemento").value  = data.suplemento;
        	        		document.getElementById("diarrea").checked = AsignarCheck(data.diarrea);
        	        		document.getElementById("flatulencia").checked  = AsignarCheck(data.flatulencia);
        	        		document.getElementById("acidez").checked  = AsignarCheck(data.acidez);
        	        		document.getElementById("estreñimiento").checked = AsignarCheck(data.estrenimiento);
        	        		
        	        		document.getElementById("Lcasa").checked = AsignarCheck(data.marcaE0);
        	        		document.getElementById("Ltrabajo").checked = AsignarCheck(data.marcaE1);
        	        		document.getElementById("Lotro").checked = AsignarCheck(data.marcaE2);
        	        		document.getElementById("Ocasa").checked = AsignarCheck(data.marcaE3);
        	        		document.getElementById("Ocafeteria").checked = AsignarCheck(data.marcaE4);
        	        		document.getElementById("Ocaseta").checked = AsignarCheck(data.marcaE5);
        	        		document.getElementById("Ochiclero").checked = AsignarCheck(data.marcaE6);
        	        		
        	        		document.getElementById("horadesayuno").value = data.horarioE0;
        	        		document.getElementById("refamhr").value = data.horarioE1;
        	        		document.getElementById("almh").value = data.horarioE2;
        	        		document.getElementById("refpmhr").value = data.horarioE3;
        	        		document.getElementById("cenhr").value = data.horarioE4;
        	        		
        	        		//document.getElementById("tdesayuno").checked = AsignarCheckHora(data.horarioE0);
        	        		//document.getElementById("refam").checked = AsignarCheckHora(data.horarioE1);
        	        		//document.getElementById("talmu").checked = AsignarCheckHora(data.horarioE2);
        	        		//document.getElementById("refpm").checked = AsignarCheckHora(data.horarioE3);
        	        		//document.getElementById("cenaa").checked = AsignarCheckHora(data.horarioE4);
        	        		
        	        		
        	        		
        	        		CalcIMC();
        	        		
        	        		document.getElementById("verdura").value  = data.FrecF0;
        	        		document.getElementById("fruta").value  = data.FrecF1;
        	        		document.getElementById("pollo").value  = data.FrecF2;
        	        		document.getElementById("lacteo").value  = data.FrecF3;
        	        		document.getElementById("hamburguesa").value  = data.FrecF4;
        	        		document.getElementById("snack").value  = data.FrecF5;
        	        		document.getElementById("refresco").value  = data.FrecF6;
        	        		document.getElementById("galleta").value  = data.FrecF7;
        	        		document.getElementById("dulce").value  = data.FrecF8;
        	        		document.getElementById("embutido").value  = data.FrecF9;
        	        		document.getElementById("sopa").value  = data.FrecF10;
        	        		document.getElementById("fritura").value  = data.FrecF11;
        	        		document.getElementById("tortilla").value  = data.FrecF12;
        	        		document.getElementById("papa").value  = data.FrecF13;
        	        		document.getElementById("pasta").value  = data.FrecF14;
        	        		document.getElementById("arroz").value  = data.FrecF15;
        	        		document.getElementById("frijol").value  = data.FrecF16;
        	        		document.getElementById("pan").value  = data.FrecF17;
        	        		document.getElementById("huevo").value  = data.FrecF18;
        	        		//BuscarPaciente(data.PACIENTE_idPACIENTE);
        	        		
        	        		var aux= parseInt(data.totalA);
        	        		if(aux!=0){
        	        			for (i = 0; i < aux; i++) { 
        	        				CargaRecordatorio(i,data.Record[i].aliment,data.Record[i].calo,data.Record[i].TiempoCo,data.Record[i].Cantid,data.Record[i].Porci);
        	        			}
        	        			ActualizarTabla();
        	             	    
        	             	    if(habilitado==false){
        	             			document.getElementById("alimento").readOnly = false;	
        	             			document.getElementById("cantidada").readOnly = false;	
        	             			document.getElementById("porcion").readOnly = false;	
        	             			document.getElementById("BAlAgregar").disabled = false;
        	             			
        	             			habilitado=true;
        	             		}
        	        			
        	        		}
        	        		var aux2= parseInt(data.totalE);
        	        		if(aux2!=0){
        	        			for (i = 0; i < aux2; i++) { 
        	        				Enfermed[i]=data.ListaEnf[i].Enombre;
        	        				econt++;
        	        			}
        	        		}
        	        		ActualizarTablaEnfermedad();
        	        		//CargaIMC(data.talla,data.peso);
        	        		//CargaPliegues(data.tricipital,data.subescapular);
        	        		//IDMulti=MID;
        	        		Bloqueo(data.USER,data.fecha,data.nombre4,data.area);
        	        		if(iniciarCarga){
        	        			iniciarCarga=false;
        	        			
        	        			//BuscarPaciente(data.PACIENTE_idPACIENTE);
        	        			document.getElementById('carnet').value  = data.PACIENTE_idPACIENTE;
        	        			carnetaccion=data.PACIENTE_idPACIENTE;
        	        			document.getElementById("NRegPacienteEncontrado").style.display = 'block';
        		        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
        		   	        	document.getElementById('nombre').value  = data.pnombre;
        			        	document.getElementById('sexo').value  = data.psexo;
        			        	document.getElementById('edad').value  = data.pedad;
        			        	document.getElementById('facultad').value  = data.pfacultad;
        			        	
        			        	var auxcui=data.pCUI;
    			        		if(auxcui=="0"){
    			        			document.getElementById('cui').value  = "";
    			        		}else{
    			        			document.getElementById('cui').value  = data.pCUI;
    			        		}
    			        		
    			        		document.getElementById('correo').value  = data.pcorreo;
    			        		
    			        		
    			        		var auxtel=data.ptelefono;
    			        		if(auxtel=="0"){
    			        			document.getElementById('telefono').value  = "";
    			        		}else{
    			        			document.getElementById('telefono').value  = data.ptelefono;
    			        		}
    			        		
    			        		if(data.ptipopaciente=="1"){
    			        			document.getElementById('tipopaciente').value  = "Estudiante";
    			        		}else if(data.ptipopaciente=="2"){
    			        			document.getElementById('tipopaciente').value  = "Trabajador";
    			        		}
    			        		document.getElementById('fff').value  = data.pfechanac;
    			        		document.getElementById("LabelEditar").innerHTML = "Editar";
    		        			document.getElementById("LabelGuardar").innerHTML = "";
    		        			document.getElementById("BtnEditar").style.display = 'block';
    		            		document.getElementById("BtnEditarG").style.display = 'none';
        		        		busqueda=true;
        		        		AccionCarnetCarga=true;
        		        		GenerarRegistrosMultifasico(data.total,data.RConsultaExterna);
        		        		
        		        		document.getElementById('RMulti').value  = idCE;
        	    				document.getElementById("BtnRec").disabled = false;
        	        			document.getElementById("BtnVET").disabled = false;
        	        			document.getElementById("BtnVET1").disabled = false;
        	        			document.getElementById("Guard").style.display = 'none';
        	        			document.getElementById("Mod").style.display = 'block';
        		        		document.getElementById("enfermedad").focus();
        	        			
        	        		}
        	        		
        	        	}else{
        	        		ERRORSQL=true;
        	        		MostrarMensajeServidor(data.descripcion);
        	        		
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
        			
        			document.getElementById('enfermedad').readOnly = false;
        			document.getElementById('medicamento').readOnly = false;
        			document.getElementById('suplemento').readOnly = false;
        			document.getElementById('diarrea').readOnly = false;
        			document.getElementById('flatulencia').readOnly = false;
        			document.getElementById('acidez').readOnly = false;
        			document.getElementById('estreñimiento').readOnly = false;
        			document.getElementById('fuma').readOnly = false;
        			document.getElementById('ncigarro').readOnly = false;
        			document.getElementById('fumafrec').readOnly = false;
        			
        			document.getElementById('ejercicio').readOnly =false;
        			document.getElementById('ejerciciotiempo').readOnly =false;
        			document.getElementById('ejerciciofrec').readOnly = false;
        			document.getElementById('bebidaalc').readOnly = false;
        			document.getElementById('bebidaalcfrec').readOnly = false;
        			//document.getElementById('tdesayuno').readOnly =false;
        			document.getElementById('horadesayuno').readOnly = false;
        			//document.getElementById('refam').readOnly = false;
        			document.getElementById('refamhr').readOnly = false;
        			//document.getElementById('talmu').readOnly = false;
        			
        			document.getElementById('almh').readOnly = false;
        			//document.getElementById('refpm').readOnly = false;
        			document.getElementById('refpmhr').readOnly = false;
        			//document.getElementById('cenaa').readOnly = false;
        			document.getElementById('cenhr').readOnly = false;
        			document.getElementById('Lcasa').readOnly = false;
        			document.getElementById('Ltrabajo').readOnly = false;
        			document.getElementById('Lotro').readOnly = false;
        			document.getElementById('Ocasa').readOnly = false;
        			document.getElementById('Ocafeteria').readOnly = false;
        			
        			document.getElementById('Ocaseta').readOnly = false;
        			document.getElementById('Ochiclero').readOnly = false;
        			document.getElementById('tcdesayuno').readOnly = false;
        			document.getElementById('tcrefaccion').readOnly = false;
        			document.getElementById('tcalmuerzo').readOnly = false;
        			document.getElementById('tcrefaccionpm').readOnly = false;
        			document.getElementById('tccena').readOnly = false;
        			document.getElementById('agua').readOnly = false;
        			document.getElementById('ald').readOnly = false;
        			document.getElementById('aln').readOnly = false;
        			document.getElementById('alp').readOnly = false;
        			
        			document.getElementById('dbaja').readOnly = false;
        			document.getElementById('dalta').readOnly = false;
        			document.getElementById('talla').readOnly = false;
        			document.getElementById('pesousual').readOnly = false;
        			document.getElementById('circunferencia').readOnly = false;
        			document.getElementById('edadmeta').readOnly = false;
        			document.getElementById('grasa').readOnly = false;
        			document.getElementById('pagua').readOnly = false;
        			document.getElementById('musculo').readOnly = false;
        			document.getElementById('masa').readOnly = false;
        			
        			document.getElementById('viscera').readOnly = false;
        			document.getElementById('abdomen').readOnly = false;
        			document.getElementById('plan').readOnly = false;
        			document.getElementById('verdura').readOnly = false;
        			document.getElementById('fruta').readOnly = false;
        			document.getElementById('pollo').readOnly = false;
        			document.getElementById('lacteo').readOnly = false;
        			document.getElementById('hamburguesa').readOnly = false;
        			document.getElementById('snack').readOnly = false;
        			document.getElementById('refresco').readOnly = false;
        			
        			document.getElementById('galleta').readOnly = false;
        			document.getElementById('dulce').readOnly = false;
        			document.getElementById('embutido').readOnly = false;
        			document.getElementById('sopa').readOnly = false;
        			document.getElementById('fritura').readOnly = false;
        			document.getElementById('tortilla').readOnly = false;
        			document.getElementById('papa').readOnly = false;
        			document.getElementById('pasta').readOnly = false;
        			document.getElementById('arroz').readOnly = false;
        			document.getElementById('frijol').readOnly = false;
        			
        			document.getElementById('pan').readOnly = false;
        			document.getElementById('huevo').readOnly = false;
        			
        			document.getElementById("BtnMod").disabled = false;
        			document.getElementById("BtnEl").disabled = false;
        			document.getElementById("BAlAgregar").disabled = false;
        			document.getElementById('alimento').readOnly = false;
        			document.getElementById('BtnATC').disabled = false;
        			
        		}else{
        			document.getElementById("fumafrec").disabled = true;
        			document.getElementById("ejerciciofrec").disabled = true;
        			document.getElementById("bebidaalcfrec").disabled = true;

        			document.getElementById('enfermedad').readOnly = true;
        			document.getElementById('medicamento').readOnly = true;;
        			document.getElementById('suplemento').readOnly = true;
        			document.getElementById('diarrea').readOnly = true;
        			document.getElementById('flatulencia').readOnly = true;
        			document.getElementById('acidez').readOnly = true;
        			document.getElementById('estreñimiento').readOnly = true;
        			document.getElementById('fuma').readOnly = true;
        			document.getElementById('ncigarro').readOnly = true;
        			document.getElementById('fumafrec').readOnly = true;
        			
        			document.getElementById('ejercicio').readOnly = true;
        			document.getElementById('ejerciciotiempo').readOnly = true;;
        			document.getElementById('ejerciciofrec').readOnly = true;
        			document.getElementById('bebidaalc').readOnly = true;
        			document.getElementById('bebidaalcfrec').readOnly = true;
        			//document.getElementById('tdesayuno').readOnly = true;
        			document.getElementById('horadesayuno').readOnly = true;
        			//document.getElementById('refam').readOnly = true;
        			document.getElementById('refamhr').readOnly = true;
        			//document.getElementById('talmu').readOnly = true;
        			
        			document.getElementById('almh').readOnly = true;
        			//document.getElementById('refpm').readOnly = true;;
        			document.getElementById('refpmhr').readOnly = true;
        			//document.getElementById('cenaa').readOnly = true;
        			document.getElementById('cenhr').readOnly = true;
        			document.getElementById('Lcasa').readOnly = true;
        			document.getElementById('Ltrabajo').readOnly = true;
        			document.getElementById('Lotro').readOnly = true;
        			document.getElementById('Ocasa').readOnly = true;
        			document.getElementById('Ocafeteria').readOnly = true;
        			
        			document.getElementById('Ocaseta').readOnly = true;
        			document.getElementById('Ochiclero').readOnly = true;;
        			document.getElementById('tcdesayuno').readOnly = true;
        			document.getElementById('tcrefaccion').readOnly = true;
        			document.getElementById('tcalmuerzo').readOnly = true;
        			document.getElementById('tcrefaccionpm').readOnly = true;
        			document.getElementById('tccena').readOnly = true;
        			document.getElementById('agua').readOnly = true;
        			document.getElementById('ald').readOnly = true;
        			document.getElementById('aln').readOnly = true;
        			document.getElementById('alp').readOnly = true;
        			
        			document.getElementById('dbaja').readOnly = true;
        			document.getElementById('dalta').readOnly = true;;
        			document.getElementById('talla').readOnly = true;
        			document.getElementById('pesousual').readOnly = true;
        			document.getElementById('circunferencia').readOnly = true;
        			document.getElementById('edadmeta').readOnly = true;
        			document.getElementById('grasa').readOnly = true;
        			document.getElementById('pagua').readOnly = true;
        			document.getElementById('musculo').readOnly = true;
        			document.getElementById('masa').readOnly = true;
        			
        			document.getElementById('viscera').readOnly = true;
        			document.getElementById('abdomen').readOnly = true;;
        			document.getElementById('plan').readOnly = true;
        			document.getElementById('verdura').readOnly = true;
        			document.getElementById('fruta').readOnly = true;
        			document.getElementById('pollo').readOnly = true;
        			document.getElementById('lacteo').readOnly = true;
        			document.getElementById('hamburguesa').readOnly = true;
        			document.getElementById('snack').readOnly = true;
        			document.getElementById('refresco').readOnly = true;
        			
        			document.getElementById('galleta').readOnly = true;
        			document.getElementById('dulce').readOnly = true;;
        			document.getElementById('embutido').readOnly = true;
        			document.getElementById('sopa').readOnly = true;
        			document.getElementById('fritura').readOnly = true;
        			document.getElementById('tortilla').readOnly = true;
        			document.getElementById('papa').readOnly = true;
        			document.getElementById('pasta').readOnly = true;
        			document.getElementById('arroz').readOnly = true;
        			document.getElementById('frijol').readOnly = true;
        			
        			document.getElementById('pan').readOnly = true;
        			document.getElementById('huevo').readOnly = true;
        			document.getElementById("BtnMod").disabled = true;
        			document.getElementById("BtnEl").disabled = true;
        			document.getElementById("BAlAgregar").disabled = true;
        			document.getElementById('alimento').readOnly = true;
        			document.getElementById('BtnATC').disabled = true;
        		}
        	}
        	
        	function CargaRecordatorio(ct,Ealim,Ecal,ETiempoCom,ECant,EMetrica){
        		
        		//alert(Ealim+","+Ecal+","+ETiempoCom+","+ECant+","+EMetrica);
				
        		var x=parseInt(ETiempoCom)-1;
        		var y = document.getElementById("TiempoComida").options;
        	    ArrTiempoCom[x]=y[x].text;
        	    
        	    
        	    var calorias=parseInt(Ecal);
    			var cant=parseInt(ECant);
    			
    			var z=parseInt(EMetrica)-1;
        		var metrica = document.getElementById("porcion").options;
        		
        		
        		
        		ArrComida[ct]=decodeURIComponent(Ealim);	
				ArrCant[ct]=cant;
				ArrUnidad[ct]=metrica[z].text;						
				ArrKcal[ct]=cant*calorias;			
				ArrpComida[ct]=x;
				contp++;
        	}
        	function AsignarCheck(entrada){
        		var resultado=false;
        		if(entrada=='1'){
        			resultado=true;
        		}
        		return resultado;
        	}
        	function AsignarCheckHora(entrada){
        		var resultado=true;
        		if(entrada=='00:00:00'){
        			resultado=false;
        		}
        		return resultado;
        	}
        	function getUrlVars() {
        	    var vars = {};
        	    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,    
        	    function(m,key,value) {
        	        vars[key] = value;
        	        });
        	    return vars;
        	}
        	function cargar_hora(){
        		var  today = new Date();
        		var m = today.getMonth() + 1;
        		var mes = (m < 10) ? '0' + m : m;
        		 
        		var fecha=today.getDate()+'/' +mes+'/'+today.getFullYear();

        		document.getElementById('fecha123').value=fecha;
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
        	        	for ( i=0; i < data.resultado.length; i++) {  
    	        	    	resultado+="<option value=\""+data.resultado[i].id+"\">"+data.resultado[i].nombre+"</option>";
    	        	      
    	        	    }
    	        	    document.getElementById("NRegPacienteEncontrado").style.display = 'none';
		        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'block';
    	        	   
    	    			var marcos="<select class=\"form-control input-sm\" id=\"facultad1\" name=\"facultad1\" onkeydown=\"CambioFac(event)\">";
    	    			marcos+=resultado+"</select>";
    	    			
    	    			document.getElementById("dep5").innerHTML = marcos;
    	    			document.getElementById("nombre1").focus();
    	    			AccionCarnetCarga=true;
        	        	
        	        }
        		});
        		
        	}
        	function GenerarITEM(){
        		var texto="<div class=\"form-group\">"
        	 		 + "<label for=\"LNombre\">Nombre</label>"
        			  +"<input class=\"form-control\" type=\"text\"  name=\"nombre\" id=\"nombre\" required  />"
        		      +"</div>"
        		      +"<div class=\"form-group\">"
        			  +"<label for=\"LSexo\">Sexo</label><select  class=\"form-control\" id=\"Sexo\">"
        				+"<option>Femenino</option>"
        				+"<option>Masculino</option>"
        				+"</select>"
        				+"</div>"
        				+"<div class=\"form-group\">"
        				+"<label for=\"LfechaNac\">Fecha de Nacimiento</label>"
        				+"<input id=\"fechaNac\" class=\"form-control\" id=\"fechaNac\"  name=\"fechaNac\" type=\"date\" required />"
        				+"</div>"
        				+"<div class=\"form-group\">"
        				+"<label for=\"Lfacultad\">Facultad</label>"
        				+"<select class=\"form-control\" id=\"Facultad\" name=\"Facultad\">"
        				
        			return texto;	
        	   		
        	}
		function CargaDPaciente(pnombre,pedad,psexo,pfacultad,entrada){
        		
        		var carnet="";
        		if(entrada=='A'){
        			carnet=validar_numerovacio('carnet');
            		
        		}else{
        			carnet=entrada;
        		}
        		carnetaccion=carnet;
        		var texto="<div class=\"form-group\">"
	   	      		 + "<label for=\"LNombre\">Nombre</label>"
	   	    		  +"<input class=\"form-control\" type=\"text\"  name=\"nombre\" id=\"nombre\" readonly required  />"
	   	    	      +"</div>"
	   	    	      +"<div class=\"form-group\">"
		   	      		 + "<label for=\"LSexo\">Sexo</label>"
		   	    		  +"<input class=\"form-control\" type=\"text\"  name=\"sexo\" id=\"sexo\" readonly required  />"
		   	    	      +"</div>"
	   					+"<div class=\"form-group\">"
		   	      		 + "<label for=\"Ledad\">Edad</label>"
		   	    		  +"<input class=\"form-control\" type=\"text\"  name=\"edad\" id=\"edad\" readonly required  />"
		   	    	      +"</div>"
		   	    	   +"<div class=\"form-group\">"
		   	      		 + "<label for=\"Lfacultad\">Facultad</label>"
		   	    		  +"<input class=\"form-control\" type=\"text\"  name=\"facultad\" id=\"facultad\" readonly required  />"
		   	    	      +"</div>";
	   	        		var capa = document.getElementById("capa");
	   	        		capa.innerHTML = texto;
	   	        		document.getElementById('nombre').value  = pnombre;
		        		document.getElementById('sexo').value  = psexo;
		        		document.getElementById('edad').value  = pedad;
		        		document.getElementById('facultad').value  = pfacultad;
	        			busqueda=true;
	        			document.getElementById("enfermedad").focus();
        		
        	}
        	function BuscarPaciente(entrada){
        		
        		var carnet="";
        		if(entrada=='A'){
        			carnet=validar_numerovacio('carnet');
            		
        		}else{
        			carnet=entrada;
        		}
        		carnetaccion=carnet;
        		var action="PacienteConsultaExterna2";
    			cadena = [ 	'carnet='   + carnet,'a='+action].join('&');
    			$.ajax({
    		        url: "../Paciente",
    		        data: cadena,
    		  	    type: 'post',
    		        dataType: 'json',
    		        success: function(data){
    		        	
    		        	if(data.resultado=='OK'){
    		        		document.getElementById("NRegPacienteEncontrado").style.display = 'block';
    		        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
    		   	        		document.getElementById('nombre').value  = data.nombre;
    			        		document.getElementById('sexo').value  = data.sexo;
    			        		document.getElementById('edad').value  = data.fecha;
    			        		document.getElementById('facultad').value  = data.facultad;
    			        		
    			        		
    			        		var auxcui=data.CUI;
    			        		if(auxcui=="0"){
    			        			document.getElementById('cui').value  = "";
    			        		}else{
    			        			document.getElementById('cui').value  = data.CUI;
    			        		}
    			        		
    			        		document.getElementById('correo').value  = data.correo;
    			        		
    			        		
    			        		var auxtel=data.telefono;
    			        		if(auxtel=="0"){
    			        			document.getElementById('telefono').value  = "";
    			        		}else{
    			        			document.getElementById('telefono').value  = data.telefono;
    			        		}
    			        		
    			        		if(data.TipoPaciente=="1"){
    			        			document.getElementById('tipopaciente').value  = "Estudiante";
    			        		}else if(data.TipoPaciente=="2"){
    			        			document.getElementById('tipopaciente').value  = "Trabajador";
    			        		}
    			        		document.getElementById('fff').value  = data.fechaNac;
    		        			busqueda=true;
    		        			AccionCarnetCarga=true;
    		        			document.getElementById("LabelEditar").innerHTML = "Editar";
    		        			document.getElementById("LabelGuardar").innerHTML = "";
    		        			document.getElementById("BtnEditar").style.display = 'block';
    		            		document.getElementById("BtnEditarG").style.display = 'none';
    		        			GenerarRegistrosMultifasico(data.total,data.RConsultaExterna);
    		        			document.getElementById("enfermedad").focus();
    		        	}else{	  
    		        		busqueda=false;
    		        		//document.getElementById("NRegPacienteEncontrado").style.display = 'none';
    		        		//document.getElementById("NRegPacienteNoEncontrado").style.display = 'block';
    		        		//CargaFacultad();
    		        		VentanaCrearUsuario();
    		        	}
    		        	
    		        }
    		    });
        		
        	}	
        	function GuardarEditar(){
        		if(carnetaccion!=""&&AccionCarnetCarga){
        			var action="modificar";
        			var carnet=validar_numerovacio('carnet');
        			var variable11="";
        			var variable12="";
        			var variable13="";
        			var variable14="";
        			
        			variable11=validad_vacio('nombre1');
        			variable12=validad_vacio('sexo1');
        			variable13=validad_vacio('fechaNac');
        			variable14=validad_vacio('facultad1');
        			var variable140=validad_vacio('edad1');
        			var variable141=validar_numerovacio('cui1');
        			var variable142=validar_numerovacio('tipopaciente1');
        			var variable143=validad_vacio('correo1');
        			var variable144=validar_numerovacio('telefono1');
        			
        			var FechaE=false;
        			 if(variable140!=""){
        			   FechaE=true;
        			}else{
        			   VentanaError("Verifique la edad del paciente");
        			 }
        			 if(variable11!=""&&variable12!=""&&variable13!=""&&variable14!=""&&FechaE==true&&variable142!="0"){
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
        	        	        		MostrarMensajeServidor2(data.descripcion);
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
        	function VentanaError(mensaje){
        		document.getElementById("Errortxt").innerHTML = "";
        		document.getElementById("Errortxt").innerHTML = " "+mensaje;
        		jQuery('#ErroresModal').modal("show");
        	}
        	function MostrarMensajeServidor2(texto){
            	document.getElementById('MensajeAux2').innerHTML  = texto;
            	jQuery('#MensajeServidor2').modal("show");
            	
               
            }
        	function GenerarRegistrosMultifasico(total,data){
        		var marcodiv='<div class="row"><div class="form-group"><label for="RegM">Registros de consulta<br>externa</label><select class="form-control input-sm" id="RMulti" onchange=CambioRegMulti()>';
        		var opciones='<option value=0>Nuevo</option>';
        		if(total!=0){
        			for(i=0;i<total;i++){
        				opciones+='<option value='+data[i].idCONSULTA_EXTERNA+'>'+data[i].fecha+'</option>';
        			}
        		}
        		var fin='</select></div>'
        		var botones=''
        			+'&nbsp;&nbsp;<div class="form-group">'
								+ '   <label for="BAgregar">Calculos VET</label>	'		
									+'<button class="btn btn-default btn-lg" id="BtnVET"  onclick="CalculosVET()" >'
								 +  '  <img src="../imagenes/vet2.jpg" width="20" height="20" title="CalculosVET" /></button>'
								 +' </div>&nbsp;&nbsp;<div class="form-group">'
								 +  ' <label for="BAgregar">Reconsulta</label>'			
									+'<button class="btn btn-default btn-lg" id="BtnRec" onclick="Reconsulta()" >'
								   + ' <img src="../imagenes/reco.png" width="20" height="20" title="Reconsulta" /></button></div></div>';
        		var componente=marcodiv+opciones+fin+botones;
        		document.getElementById("RegMulti").innerHTML =componente;
        		//document.getElementById("Examenes").style.display = 'none';
        		//document.getElementById("talla").focus();
        		document.getElementById("BtnRec").disabled = true;
    			document.getElementById("BtnVET").disabled = true;
    			
        	}
        	function CambioRegMulti(){
        		var valor=document.getElementById('RMulti').value;
        		document.getElementById("TablaEncargado").innerHTML = "";
        		if(valor!=0){
        			idCE=valor;
        			document.getElementById("BtnRec").disabled = false;
        			document.getElementById("BtnVET").disabled = false;
        			document.getElementById("BtnVET1").disabled = false;
        			document.getElementById("Guard").style.display = 'none';
        			document.getElementById("Mod").style.display = 'block';
        			
        			CargaEdicion(idCE);
        			//document.getElementById("Examenes").style.display = 'block';
        		}else{
        			document.getElementById("BtnRec").disabled = true;
        			document.getElementById("BtnVET").disabled = true;
        			document.getElementById("BtnVET1").disabled = true;
        			//document.getElementById("Examenes").style.display = 'none';
        			document.getElementById("Mod").style.display = 'none';
        			document.getElementById("Guard").style.display = 'block';
        			document.getElementById("BtnMod").disabled = false;
        			
        			
        			
        			limpiar_datos();
        		}
        		}
        	function limpiar_datos(){
        		
        		document.getElementById('enfermedad').value  = "";
    			document.getElementById('medicamento').value  = "";
    			document.getElementById('suplemento').value  = "";
    			document.getElementById('diarrea').checked = false;
    			document.getElementById('flatulencia').checked = false;
    			document.getElementById('acidez').checked = false;
    			document.getElementById('estreñimiento').checked = false;
    			document.getElementById('fuma').checked = false;
    			document.getElementById('ncigarro').value  = "";
    			document.getElementById('fumafrec').value  = 0;
    			
    			document.getElementById('ejercicio').checked = false;
    			document.getElementById('ejerciciotiempo').value  = "";
    			document.getElementById('ejerciciofrec').value  = 0;
    			document.getElementById('bebidaalc').checked = false;
    			document.getElementById('bebidaalcfrec').value  = 0;
    			//document.getElementById('tdesayuno').checked = false;
    			document.getElementById('horadesayuno').value  = "";
    			//document.getElementById('refam').checked = false;
    			document.getElementById('refamhr').value  = "";
    			//document.getElementById('talmu').checked = false;
    			
    			document.getElementById('almh').value  = "";
    			//document.getElementById('refpm').checked = false;
    			document.getElementById('refpmhr').value  = "";
    			//document.getElementById('cenaa').checked = false;
    			document.getElementById('cenhr').value  = "";
    			document.getElementById('Lcasa').checked = false;
    			document.getElementById('Ltrabajo').checked = false;
    			document.getElementById('Lotro').checked = false;
    			document.getElementById('Ocasa').checked = false;
    			document.getElementById('Ocafeteria').checked = false;
    			
    			document.getElementById('Ocaseta').checked = false;
    			document.getElementById('Ochiclero').checked = false;
    			document.getElementById('tcdesayuno').value  = "";
    			document.getElementById('tcrefaccion').value  = "";
    			document.getElementById('tcalmuerzo').value  = "";
    			document.getElementById('tcrefaccionpm').value  = "";
    			document.getElementById('tccena').value  = "";
    			document.getElementById('agua').value  = "";
    			document.getElementById('ald').value  = "";
    			document.getElementById('aln').value  = "";
    			document.getElementById('alp').value  = "";
    			
    			document.getElementById('dbaja').value  = "";
    			document.getElementById('dalta').value  = "";
    			document.getElementById('talla').value  = "";
    			document.getElementById('pesousual').value  = "";
    			document.getElementById('circunferencia').value  = "";
    			document.getElementById('edadmeta').value  = "";
    			document.getElementById('grasa').value  = "";
    			document.getElementById('pagua').value  = "";
    			document.getElementById('musculo').value  = "";
    			document.getElementById('masa').value  = "";
    			
    			document.getElementById('viscera').value  = "";
    			document.getElementById('abdomen').value  = "";
    			document.getElementById('plan').value  = "";
    			document.getElementById('verdura').value  = 0;
    			document.getElementById('fruta').value  = 0;
    			document.getElementById('pollo').value  = 0;
    			document.getElementById('lacteo').value  = 0;
    			document.getElementById('hamburguesa').value  = 0;
    			document.getElementById('snack').value  = 0;
    			document.getElementById('refresco').value  = 0;
    			
    			document.getElementById('galleta').value  = 0;
    			document.getElementById('dulce').value  = 0;
    			document.getElementById('embutido').value  = 0;
    			document.getElementById('sopa').value  = 0;
    			document.getElementById('fritura').value  = 0;
    			document.getElementById('tortilla').value  = 0;
    			document.getElementById('papa').value  = 0;
    			document.getElementById('pasta').value  = 0;
    			document.getElementById('arroz').value  = 0;
    			document.getElementById('frijol').value  = 0;
    			
    			document.getElementById('pan').value  = 0;
    			document.getElementById('huevo').value  = 0;
    			
    			document.getElementById('pesominimo').value  = "";
    			document.getElementById('pesomax').value  = "";
    			document.getElementById('pesoideal').value  = "";
    			document.getElementById('peso').value  = "";
    			document.getElementById('imc').value  = "";
    			document.getElementById('diagnostico').value  = "";
    			
    			listadoAlimentos="";
    	        ArrTiempoCom=["","","","",""];
    	        ArrComida=[];
    	        ArrCant=[];
    	        ArrUnidad=[];
    	        ArrpComida=[];
    	        ArrKcal=[];
    	        contp=0;
    	        idCE=0;
    	        Enfermed=[];
        		econt=0;
    	        habilitado=false;
    	        
    	        document.getElementById("TablaAlimento").innerHTML= "";
    	        document.getElementById("alimento").readOnly = true;	
    	        document.getElementById("cantidada").readOnly = true;	
    	        document.getElementById("porcion").readOnly = true;	
    	        document.getElementById("BAlAgregar").disabled = true;
    	        
    			
    			document.getElementById('enfermedad').readOnly = false;
    			document.getElementById('medicamento').readOnly = false;
    			document.getElementById('suplemento').readOnly = false;
    			document.getElementById('diarrea').readOnly = false;
    			document.getElementById('flatulencia').readOnly = false;
    			document.getElementById('acidez').readOnly = false;
    			document.getElementById('estreñimiento').readOnly = false;
    			document.getElementById('fuma').readOnly = false;
    			document.getElementById('ncigarro').readOnly = true;
    			document.getElementById('fumafrec').readOnly = false;
    			
    			document.getElementById('ejercicio').readOnly =false;
    			document.getElementById('ejerciciotiempo').readOnly =true;
    			document.getElementById('ejerciciofrec').readOnly = false;
    			document.getElementById('bebidaalc').readOnly = false;
    			document.getElementById('bebidaalcfrec').readOnly = false;
    			//document.getElementById('tdesayuno').readOnly =false;
    			document.getElementById('horadesayuno').readOnly = false;
    			//document.getElementById('refam').readOnly = false;
    			document.getElementById('refamhr').readOnly = false;
    			//document.getElementById('talmu').readOnly = false;
    			
    			document.getElementById('almh').readOnly = false;
    			//document.getElementById('refpm').readOnly = false;
    			document.getElementById('refpmhr').readOnly = false;
    			//document.getElementById('cenaa').readOnly = false;
    			document.getElementById('cenhr').readOnly = false;
    			document.getElementById('Lcasa').readOnly = false;
    			document.getElementById('Ltrabajo').readOnly = false;
    			document.getElementById('Lotro').readOnly = false;
    			document.getElementById('Ocasa').readOnly = false;
    			document.getElementById('Ocafeteria').readOnly = false;
    			
    			document.getElementById('Ocaseta').readOnly = false;
    			document.getElementById('Ochiclero').readOnly = false;
    			document.getElementById('tcdesayuno').readOnly = false;
    			document.getElementById('tcrefaccion').readOnly = false;
    			document.getElementById('tcalmuerzo').readOnly = false;
    			document.getElementById('tcrefaccionpm').readOnly = false;
    			document.getElementById('tccena').readOnly = false;
    			document.getElementById('agua').readOnly = false;
    			document.getElementById('ald').readOnly = false;
    			document.getElementById('aln').readOnly = false;
    			document.getElementById('alp').readOnly = false;
    			
    			document.getElementById('dbaja').readOnly = false;
    			document.getElementById('dalta').readOnly = false;
    			document.getElementById('talla').readOnly = false;
    			document.getElementById('pesousual').readOnly = false;
    			document.getElementById('circunferencia').readOnly = false;
    			document.getElementById('edadmeta').readOnly = false;
    			document.getElementById('grasa').readOnly = false;
    			document.getElementById('pagua').readOnly = false;
    			document.getElementById('musculo').readOnly = false;
    			document.getElementById('masa').readOnly = false;
    			
    			document.getElementById('viscera').readOnly = false;
    			document.getElementById('abdomen').readOnly = false;
    			document.getElementById('plan').readOnly = false;
    			document.getElementById('verdura').readOnly = false;
    			document.getElementById('fruta').readOnly = false;
    			document.getElementById('pollo').readOnly = false;
    			document.getElementById('lacteo').readOnly = false;
    			document.getElementById('hamburguesa').readOnly = false;
    			document.getElementById('snack').readOnly = false;
    			document.getElementById('refresco').readOnly = false;
    			
    			document.getElementById('galleta').readOnly = false;
    			document.getElementById('dulce').readOnly = false;
    			document.getElementById('embutido').readOnly = false;
    			document.getElementById('sopa').readOnly = false;
    			document.getElementById('fritura').readOnly = false;
    			document.getElementById('tortilla').readOnly = false;
    			document.getElementById('papa').readOnly = false;
    			document.getElementById('pasta').readOnly = false;
    			document.getElementById('arroz').readOnly = false;
    			document.getElementById('frijol').readOnly = false;
    			
    			document.getElementById('pan').readOnly = false;
    			document.getElementById('huevo').readOnly = false;
    			
    			document.getElementById("BAlAgregar").disabled = false;
    			//document.getElementById('alimento').readOnly = false;
    			document.getElementById('BtnATC').disabled = false;
    			
    			document.getElementById("fumafrec").disabled = true;
    			document.getElementById("ejerciciofrec").disabled = true;
    			document.getElementById("bebidaalcfrec").disabled = true;
    			
    			ActualizarTablaEnfermedad();
    			//document.getElementById("Mod").style.display = 'none';
    			//document.getElementById("Guard").style.display = 'block';
    			//document.getElementById("BtnMod").disabled = false;
        	}
        	function AñadirAlimentoBD(){
        		var alim=validad_vacio('NuevoAl');
        		var cal=validar_numerovacio("NuevaCal");
        		var grupo=validad_vacio("NuevoGrupo");
        		var metrica=validad_vacio("metrica");
        		if(alim=="null"||cal==0){
        			VentanaError("Error, faltan valores a ingresar");
        		}else{
        			var AlimAux=alim.toLowerCase();
        			alim=encodeURI(alim);
        			var action="agregar";
            		var cadena = ['a='+action,'alimento='+alim,'caloria='+cal,'grupo='+grupo,'metrica='+metrica].join('&');


            		$.ajax({
            	        url: "../Alimento",
            	        data: cadena,
            	  	    type: 'post',
            	        dataType: 'json',
            	        success: function(data){
            	        	if(data.resultado=='OK'){
            	        		document.getElementById('alimento').value  = AlimAux;
                		        document.getElementById('calorias').value  = data.caloria;
                		        
                		        document.getElementById('NuevoAl').value  = "";
                		        document.getElementById('NuevaCal').value  = "";
                		        
                		        document.getElementById("cantidada").focus();	
            	        	}else{
            	        		VentanaError(data.descripcion);
            	        	}
            	        	
            	        	
            	        	
            	        }
            		});
        		}
        		
        		
        		
        	}
        	function validad_vacio(entrada){
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
        	function validar_check(entrada){
        		var texto="";
        		var cond;
        		cond=document.getElementById(entrada).checked;
        		if(cond==true){
        			texto="1";
        		}else{
        			texto="0";
        		}
        		return texto;
        	}

        	function enviar_datos(datos){
        		var resultado="";

        		$.ajax({
        	        url: "../ConsultaExterna",
        	        data: datos,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
                    		ERRORSQL=false;
                    		MostrarMensajeServidor(data.mensaje);
            	        	//idCE=data.ID;
            	        	if(data.b=="1"){
            	        		idCE=data.ID;
            	        		document.getElementById("Guard").style.display = 'none';
                	        	document.getElementById("Mod").style.display = 'block';
            	        	}else{
            	        		MostrarMensajeServidor("Registro eliminado correctamente");
            	        		window.location.replace("/ModuloNutricion/ExamenesNutricion/ConsultaExterna.jsp");
            	        	}
            	        	
                    		//MostrarMensajeServidor("Informacion almacenada con exito");
                    		
            	        	//limpiar_datos();
                    	}else{
                    		ERRORSQL=true;
                    		MostrarMensajeServidor("Error al almacenar");
                    	}
        	        	
        	        	
        	        }
        		});
        	}
        	function validar_hora(entrada){
        		var texto="";
        		texto=document.getElementById(entrada).value;
        		if(texto==""){
        			texto="11:48 AM";
        		}
        		return texto;
        	}
        	function obtenerRegistro(){
        		var encabCom1="";
        		var contador=5;
        		for (i = 0; i < contador; i++) { 
        			encabCom1 += "%"+ArrTiempoCom[i];
        			
        			for (j = 0; j < ArrpComida.length; j++) { 
        				
        				
        			if((i==ArrpComida[j])&&(ArrpComida[j]!=-100)){
        				encabCom1+=","+ArrComida[j]+","+ArrCant[j]+","+ArrUnidad[j]+"!";
        			}
        			}
        			
        			
        		}
        		
        		
        		return encodeURIComponent(encabCom1);
        		
        	}
        	function EliminarRegistro(){
        		var action="eliminardato";
        		if((idCE!=undefined)&&(idCE!="")){
        			var cadena = ['idCONSULTA_EXTERNA='+ idCE,'a='+action].join('&');
        	        		enviar_datos(cadena);
        		}
        		else{
        			VentanaError("Error al eliminar");
        		}
        	}
        	function BorrarReg(){
        		jQuery('#EliminarRegistroModal').modal("show");
        	}
        	function Guardar(){
        		ERRORSQL=false;
        		if(carnetaccion!=""&&AccionCarnetCarga){
        			var action="guardar";
            		var carnet=document.getElementById('carnet').value;
            		
            		var variable1=validad_vacio('enfermedad');
            		var variable2=validad_vacio("medicamento");
            		var variable3=validad_vacio("suplemento");
            		var variable4=validar_check("diarrea");
            		var variable5=validar_check("flatulencia");
            		var variable6=validar_check("acidez");
            		var variable7=validar_check("estreñimiento");
            		var variable8=validar_check("fuma"); 
            		var variable9=validar_numerovacio("ncigarro");
            		var variable10=TextoSeleccion("fumafrec");
            		
            		var variable11=validar_check("ejercicio"); 
            		var variable12=validar_numerovacio("ejerciciotiempo");
            		var variable13=TextoSeleccion("ejerciciofrec");
            		var variable14=validar_check("bebidaalc"); 
            		var variable15=TextoSeleccion("bebidaalcfrec");
            		//var variable16=validar_check("tdesayuno"); 
            		var variable17=validar_hora("horadesayuno");
            		//var variable18=validar_check("refam"); 
            		var variable19=validar_hora("refamhr");
            		//var variable20=validar_check("talmu"); 
            		
            		
            		         	
            		var variable21=validar_hora("almh");
            		//var variable22=validar_check("refpm"); 
            		var variable23=validar_hora("refpmhr");
            		//var variable24=validar_check("cenaa"); 
            		var variable25=validar_hora("cenhr");
            		var variable26=validar_check("Lcasa"); 
            		var variable27=validar_check("Ltrabajo");
            		var variable28=validar_check("Lotro"); 
            		var variable29=validar_check("Ocasa"); 
            		var variable30=validar_check("Ocafeteria"); 
            		
            		
            		var variable31=validar_check("Ocaseta"); 
            		var variable32=validar_check("Ochiclero"); 
            		var variable33=validar_numerovacio("tcdesayuno");
            		var variable34=validar_numerovacio("tcrefaccion");
            		var variable35=validar_numerovacio("tcalmuerzo");
            		var variable24=validar_numerovacio("tcrefaccionpm"); 
            		var variable36=validar_numerovacio("tccena");
            		var variable37=validar_numerovacio("agua");
            		var variable38=validad_vacio("ald");
            		var variable39=validad_vacio("aln");
            		var variable40=validad_vacio("alp");

            		
            		var variable41=validad_vacio("dbaja");
            		var variable42=validad_vacio("dalta");
            		var variable43=validar_numerovacio("talla");
            		var variable44=validar_numerovacio("pesousual");
            		var variable45=validar_numerovacio("circunferencia");
            		var variable46=validar_numerovacio("edadmeta");
            		
            		var variable20=validad_vacio("diagnostico"); 
            		
            		var variable47=validar_numerovacio("grasa");
            		var variable48=validar_numerovacio("pagua");
            		var variable49=validar_numerovacio("musculo");
            		var variable50=validar_numerovacio("masa");
            		var variable51=validar_numerovacio("viscera");
            		var variable52=validar_numerovacio("abdomen");
            		var variable53=validad_vacio("plan");
            		
            		var variable54=TextoSeleccion("verdura");
            		var variable55=TextoSeleccion("fruta");
            		var variable56=TextoSeleccion("pollo");
            		var variable57=TextoSeleccion("lacteo");
            		var variable58=TextoSeleccion("hamburguesa");
            		var variable59=TextoSeleccion("snack");
            		var variable60=TextoSeleccion("refresco");
            		
            		
            		var variable61=TextoSeleccion("galleta");
            		var variable62=TextoSeleccion("dulce");
            		var variable63=TextoSeleccion("embutido");
            		var variable64=TextoSeleccion("sopa");
            		var variable65=TextoSeleccion("fritura");
            		var variable66=TextoSeleccion("tortilla");
            		var variable67=TextoSeleccion("papa");
            		var variable68=TextoSeleccion("pasta");
            		var variable69=TextoSeleccion("arroz");
            		var variable70=TextoSeleccion("frijol");
            		
            		
            		var variable71=TextoSeleccion("pan");
            		var variable72=TextoSeleccion("huevo");
            		var variable73=obtenerRegistro();
            		var variable100=IdUsuarioSesion;
            		
            		var variable74="";
            		var variable75="";
            		var variable76="";
            		var variable77="";
            		var variable80= obtenerRegistroEnfermedad();
            		if(busqueda==false){
                		variable74=validad_vacio('nombre1');
                		variable75=validad_vacio('sexo1');
                		variable76=validad_vacio('fechaNac');
                		variable77=validad_vacio('facultad1');
                		var variable140=validad_vacio('edad1');
                		var variable141=validad_vacio('cui1');
                		var variable142=validar_numerovacio('tipopaciente1');
                		var variable143=validad_vacio('correo1');
                		var variable144=validar_numerovacio('telefono1');
                		
                		var FechaE=false;
                		if(variable140!=""){
                			FechaE=true;
                		}else{
                			VentanaError("Verifique la edad del paciente");
                		}
                		
                		if(variable74!=""&&variable75!=""&&variable76!=""&&variable77!=""&&FechaE==true&&variable142!="0"){
                			var cadena = [ 	'carnet='+ carnet,'a='+action
                 			         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
                 			         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'p10='+variable10
                 			         	  ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p15='+variable15
                 			         	  ,'p17='+variable17,'p19='+variable19,'p20='+variable20,'p24='+variable24
                 			         	  ,'p21='+variable21,'p23='+variable23,'p25='+variable25
                 			         	  ,'p26='+variable26,'p27='+variable27,'p28='+variable28,'p29='+variable29,'p30='+variable30
                 			         	  ,'p31='+variable31,'p32='+variable32,'p33='+variable33,'p34='+variable34,'p35='+variable35
                 			         	  ,'p36='+variable36,'p37='+variable37,'p38='+variable38,'p39='+variable39,'p40='+variable40
                 			         	  ,'p41='+variable41,'p42='+variable42,'p43='+variable43,'p44='+variable44,'p45='+variable45
                 			         	  ,'p46='+variable46,'p47='+variable47,'p48='+variable48,'p49='+variable49,'p50='+variable50
                 			         	  ,'p51='+variable51,'p52='+variable52,'p53='+variable53,'p54='+variable54,'p55='+variable55
                 			         	  ,'p56='+variable56,'p57='+variable57,'p58='+variable58,'p59='+variable59,'p60='+variable60
                 			         	  ,'p61='+variable61,'p62='+variable62,'p63='+variable63,'p64='+variable64,'p65='+variable65
                 			         	  ,'p66='+variable66,'p67='+variable67,'p68='+variable68,'p69='+variable69,'p70='+variable70
                 			         	  ,'p71='+variable71,'p72='+variable72,'p73='+variable73,'busqueda='+busqueda
                     		         	   ,'p74='+variable74,'p75='+variable75,'p76='+variable76,'p77='+variable77,'p100='+variable100,'p80='+variable80
                     		         	 ,'p141='+variable141,'p142='+variable142,'p143='+variable143,'p144='+variable144].join('&');
                          var variable400=validar_numerovacio("imc");
                			if(validar_envio(carnet,variable400)){
                          		enviar_datos(cadena);
                          	}else{
                          		ERRORSQL=true;
                          		VentanaError("Complete la informacion del IMC");
                          	}
                		}else{
                			ERRORSQL=true;
                      		
                      		VentanaError("Complete los datos del paciente");
                		}
                		
                	}else{
                		var cadena = [ 	'carnet='+ carnet,'a='+action
              			         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
              			         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'p10='+variable10
              			         	  ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p15='+variable15
              			         	  ,'p17='+variable17,'p19='+variable19,'p20='+variable20,'p24='+variable24
              			         	  ,'p21='+variable21,'p23='+variable23,'p25='+variable25
              			         	  ,'p26='+variable26,'p27='+variable27,'p28='+variable28,'p29='+variable29,'p30='+variable30
              			         	  ,'p31='+variable31,'p32='+variable32,'p33='+variable33,'p34='+variable34,'p35='+variable35
              			         	  ,'p36='+variable36,'p37='+variable37,'p38='+variable38,'p39='+variable39,'p40='+variable40
              			         	  ,'p41='+variable41,'p42='+variable42,'p43='+variable43,'p44='+variable44,'p45='+variable45
              			         	  ,'p46='+variable46,'p47='+variable47,'p48='+variable48,'p49='+variable49,'p50='+variable50
              			         	  ,'p51='+variable51,'p52='+variable52,'p53='+variable53,'p54='+variable54,'p55='+variable55
              			         	  ,'p56='+variable56,'p57='+variable57,'p58='+variable58,'p59='+variable59,'p60='+variable60
              			         	  ,'p61='+variable61,'p62='+variable62,'p63='+variable63,'p64='+variable64,'p65='+variable65
              			         	  ,'p66='+variable66,'p67='+variable67,'p68='+variable68,'p69='+variable69,'p70='+variable70
              			         	  ,'p71='+variable71,'p72='+variable72,'p73='+variable73,'busqueda='+busqueda
                  		         	   ,'p74='+variable74,'p75='+variable75,'p76='+variable76,'p77='+variable77,'p100='+variable100,'p80='+variable80].join('&');
                       var variable400=validar_numerovacio("imc");
             			if(validar_envio(carnet,variable400)){
                       		enviar_datos(cadena);
                       	}else{
                       		ERRORSQL=true;
                       		VentanaError("Complete la informacion del IMC");
                       	}
                	}
            	
            			         	
            		
        		}else{
        			ERRORSQL=true;
        			VentanaError("Realice la busqueda de la informacion del paciente e intentelo nuevamente");
        			//alert("falta carnet");
        		}
        		
        	}
        	function validar_envio(carnet,imc){
            	var resultado=true;
            	if(carnet=="0"||imc=="0"){
            		ERRORSQL=true;
            		resultado=false;
            	}
            	return resultado
            }
        	function TextoSeleccion(entrada){
        		var resultado="";
        		var e = document.getElementById(entrada);
    			resultado = e.options[e.selectedIndex].text;
    			return resultado;
        	}
        	function Modificar(){
        		ERRORSQL=false;
        		if(carnetaccion!=""){
        			var action="modificar";
            		var carnet=document.getElementById('carnet').value;
            		
            		var variable1=validad_vacio('enfermedad');
            		var variable2=validad_vacio("medicamento");
            		var variable3=validad_vacio("suplemento");
            		var variable4=validar_check("diarrea");
            		var variable5=validar_check("flatulencia");
            		var variable6=validar_check("acidez");
            		var variable7=validar_check("estreñimiento");
            		var variable8=validar_check("fuma"); 
            		var variable9=validar_numerovacio("ncigarro");
            		var variable10=TextoSeleccion("fumafrec");
            		
            		var variable11=validar_check("ejercicio"); 
            		var variable12=validar_numerovacio("ejerciciotiempo");
            		var variable13=TextoSeleccion("ejerciciofrec");
            		var variable14=validar_check("bebidaalc"); 
            		var variable15=TextoSeleccion("bebidaalcfrec");
            		//var variable16=validar_check("tdesayuno"); 
            		var variable17=validar_hora("horadesayuno");
            		//var variable18=validar_check("refam"); 
            		var variable19=validar_hora("refamhr");
            		//var variable20=validar_check("talmu"); 
            		
            		
            		         	
            		var variable21=validar_hora("almh");
            		//var variable22=validar_check("refpm"); 
            		var variable23=validar_hora("refpmhr");
            		//var variable24=validar_check("cenaa"); 
            		var variable25=validar_hora("cenhr");
            		var variable26=validar_check("Lcasa"); 
            		var variable27=validar_check("Ltrabajo");
            		var variable28=validar_check("Lotro"); 
            		var variable29=validar_check("Ocasa"); 
            		var variable30=validar_check("Ocafeteria"); 
            		
            		
            		var variable31=validar_check("Ocaseta"); 
            		var variable32=validar_check("Ochiclero"); 
            		var variable33=validar_numerovacio("tcdesayuno");
            		var variable34=validar_numerovacio("tcrefaccion");
            		var variable35=validar_numerovacio("tcalmuerzo");
            		var variable24=validar_numerovacio("tcrefaccionpm"); 
            		var variable36=validar_numerovacio("tccena");
            		var variable37=validar_numerovacio("agua");
            		var variable38=validad_vacio("ald");
            		var variable39=validad_vacio("aln");
            		var variable40=validad_vacio("alp");

            		var variable20=validad_vacio("diagnostico"); 
            		var variable41=validad_vacio("dbaja");
            		var variable42=validad_vacio("dalta");
            		var variable43=validar_numerovacio("talla");
            		var variable44=validar_numerovacio("pesousual");
            		var variable45=validar_numerovacio("circunferencia");
            		var variable46=validar_numerovacio("edadmeta");
            		
            		var variable47=validar_numerovacio("grasa");
            		var variable48=validar_numerovacio("pagua");
            		var variable49=validar_numerovacio("musculo");
            		var variable50=validar_numerovacio("masa");
            		var variable51=validar_numerovacio("viscera");
            		var variable52=validar_numerovacio("abdomen");
            		var variable53=validad_vacio("plan");
            		
            		var variable54=TextoSeleccion("verdura");
            		var variable55=TextoSeleccion("fruta");
            		var variable56=TextoSeleccion("pollo");
            		var variable57=TextoSeleccion("lacteo");
            		var variable58=TextoSeleccion("hamburguesa");
            		var variable59=TextoSeleccion("snack");
            		var variable60=TextoSeleccion("refresco");
            		
            		
            		var variable61=TextoSeleccion("galleta");
            		var variable62=TextoSeleccion("dulce");
            		var variable63=TextoSeleccion("embutido");
            		var variable64=TextoSeleccion("sopa");
            		var variable65=TextoSeleccion("fritura");
            		var variable66=TextoSeleccion("tortilla");
            		var variable67=TextoSeleccion("papa");
            		var variable68=TextoSeleccion("pasta");
            		var variable69=TextoSeleccion("arroz");
            		var variable70=TextoSeleccion("frijol");
            		
            		
            		var variable71=TextoSeleccion("pan");
            		var variable72=TextoSeleccion("huevo");
            		var variable73=obtenerRegistro();
            		
            		var variable74="";
            		var variable75="";
            		var variable76="";
            		var variable77="";
            		
            		if(busqueda==false){
                		variable74=validad_vacio('nombre1');
                		variable75=validad_vacio('sexo1');
                		variable76=validad_vacio('fechaNac');
                		variable77=validad_vacio('Facultad');
                	}
            		var variable80= obtenerRegistroEnfermedad();
            		var cadena = [ 	'ID='+idCE,'carnet='+ carnet,'a='+action
            			         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
            			         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'p10='+variable10
            			         	  ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p15='+variable15
            			         	  ,'p17='+variable17,'p19='+variable19,'p24='+variable24,'p20='+variable20
            			         	  ,'p21='+variable21,'p23='+variable23,'p25='+variable25
            			         	  ,'p26='+variable26,'p27='+variable27,'p28='+variable28,'p29='+variable29,'p30='+variable30
            			         	  ,'p31='+variable31,'p32='+variable32,'p33='+variable33,'p34='+variable34,'p35='+variable35
            			         	  ,'p36='+variable36,'p37='+variable37,'p38='+variable38,'p39='+variable39,'p40='+variable40
            			         	  ,'p41='+variable41,'p42='+variable42,'p43='+variable43,'p44='+variable44,'p45='+variable45
            			         	  ,'p46='+variable46,'p47='+variable47,'p48='+variable48,'p49='+variable49,'p50='+variable50
            			         	  ,'p51='+variable51,'p52='+variable52,'p53='+variable53,'p54='+variable54,'p55='+variable55
            			         	  ,'p56='+variable56,'p57='+variable57,'p58='+variable58,'p59='+variable59,'p60='+variable60
            			         	  ,'p61='+variable61,'p62='+variable62,'p63='+variable63,'p64='+variable64,'p65='+variable65
            			         	  ,'p66='+variable66,'p67='+variable67,'p68='+variable68,'p69='+variable69,'p70='+variable70
            			         	  ,'p71='+variable71,'p72='+variable72,'p73='+variable73,'busqueda='+busqueda
                		         	   ,'p74='+variable74,'p75='+variable75,'p76='+variable76,'p77='+variable77,'p80='+variable80].join('&');
            		
            		var variable400=validar_numerovacio('imc');
            		if(carnet!="0"&&variable43!="0"&&variable44!="0"&&variable400!="0"){
                 		enviar_datos(cadena);
                 	}else{
                 		ERRORSQL=true;
                 		VentanaError("Complete la informacion del IMC");
                 	}
            	    
            			         	
            		
        		}else{
        			ERRORSQL=true;
        			VentanaError("Realice la busqueda de la informacion del paciente e intentelo nuevamente");
        			//alert("falta carnet");
        		}
        		
        	}
        	function LimpiarElementos(){
        		document.getElementById('alimento').value="";
        		document.getElementById('cantidada').value="";
        		document.getElementById('calorias').value="";
        		document.getElementById("alimento").focus();
        	}
        	function AgregarAlimento(){
        		
        		var encontrado=false;
        		
        		var auxCaloria=document.getElementById("calorias").value;
        		var auxCantidad=document.getElementById("cantidada").value;
        		
        		if(auxCaloria!=""&&auxCantidad!=""){
        			
        			var x = document.getElementById("TiempoComida").selectedIndex;
        			var y = document.getElementById("TiempoComida").options;
        			ArrTiempoCom[x]=y[x].text;
        			var Al = (document.getElementById("alimento").value).toLowerCase();
        			
        			var calorias=parseInt(auxCaloria);
        			var cant=parseInt(auxCantidad);
        			
        			var e = document.getElementById("porcion");
        			var porcion = e.options[e.selectedIndex].text;
        			
        			for (i = 0; i <= contp; i++) { 
        				if((ArrComida[i]==Al)&&(ArrpComida[i]==x)){
        					ArrCant[i]=ArrCant[i]+cant;
        					ArrKcal[i]=calorias*ArrCant[i];
        					encontrado=true;
        					break;
        				}
        			}
        			if(encontrado==false){
        				ArrComida[contp]=Al;	
        				ArrCant[contp]=cant;
        				ArrUnidad[contp]=porcion;						
        				ArrKcal[contp]=cant*calorias;			
        				ArrpComida[contp]=x;
        				contp++;
        			}

        			ActualizarTabla();
        			LimpiarElementos();
        		}else{
        			VentanaError("Error: Faltan datos a ingresar");
        		}
        		
        		
        	}
        	function EditarAlimento(entrada){
        		var auxcant="auxcant"+entrada;
        		document.getElementById(auxcant).readOnly = false;	
        	}

        	function ConfirmarEdicion(event,valor) {
        	    var char = event.which || event.keyCode;
        	    if(char == 13){ 
        	    	var auxcant="auxcant"+valor;
        	    	var auxCantidad=document.getElementById(auxcant).value;
        	    	if(auxCantidad!=""){
        	    		var cantidadOriginal=ArrCant[valor];
        	        	var caloriaOriginal= ArrKcal[valor]/cantidadOriginal;
        	        	
        	        	var cant=parseInt(auxCantidad);
        	        	
        	        	ArrCant[valor]=cant;
        	        	ArrKcal[valor]=cant*caloriaOriginal;
        	    	}
        	    		
        	    	ActualizarTabla();
        	    	
        	    }}
        	function EliminarAlimento(entrada){
        		ArrpComida[entrada]=-100;
        		ActualizarTabla();
        	}

        	function ActualizarTabla(){
        		var marco="<div class=\"table-responsive\" style=\"font-size:8pt;\"><table class=\"table\" border=\"1px\" >";
        	    var fintabla="</table></div>";
        	    var encabCom="";
        		document.getElementById("TablaAlimento").innerHTML= "";
        		var info="";
        		var Cantidad=0;
        		var Metrica=0;
        		var info="";
        		for (i = 0; i < 5; i++) { 
        			if(ArrTiempoCom[i]!=""){
        				encabCom += "<tr><th colspan=\"6\" bgcolor=\"#2D7C06\"><font color=\"white\">"+ArrTiempoCom[i]+"</font></th></tr>";
        				encabCom+="<tr><th>Alimento</th><th>Porcion</th><th>Metrica</th><th>Kcal</th><th></th><th></th></tr>";
        				
        				for (j = 0; j < ArrpComida.length; j++) { 
        					
        					
        				if((i==ArrpComida[j])&&(ArrpComida[j]!=-100)){
        					encabCom+="<tr><td>"+ArrComida[j]+"</td><td>"
        					+"<input class=\"form-control input-sm\" id=\"auxcant"+j+"\" type=\"number\" value=\""+ArrCant[j]+"\" style=\"width: 65px;\" readonly onkeypress=\"ConfirmarEdicion(event,"+j+")\" />"
        					+"</td><td>"+ArrUnidad[j]+"</td><td>"+ArrKcal[j]+"</td><td>"
        					+"<button class=\"btn btn-default btn-sm\" onclick=\"EditarAlimento("+j+")\" >"
        				    + "<img src=\"../imagenes/edit2.png\" width=\"10\" height=\"8\" title=\"Editar\" /></button>"
        				    +"</td><td>"
        					+"<button class=\"btn btn-default btn-sm\" onclick=\"EliminarAlimento("+j+")\" >"
        				    + "<img src=\"../imagenes/eliminar2.png\" width=\"10\" height=\"8\" title=\"Eliminar\" /></button>"
        				     +"</td></tr>";
        				}
        				}
        			}
        			
        			
        			
        		}
        		var sumatoria=0;
        		for (z = 0; z < ArrKcal.length; z++) {
        			if(ArrpComida[z]!=-100){
        				sumatoria+=ArrKcal[z];
        			}
        			
        		}
        		var calculo = "<tr><td colspan=\"3\">Total</td><td>"+sumatoria+"</td><td></td><td></td></tr>"
        		
        		var NuevaTablaComida = marco + encabCom +calculo+ fintabla;
        		document.getElementById("TablaAlimento").innerHTML = NuevaTablaComida;
        		
        	}
        	function AgregarTiempoComida(){
        		var x = document.getElementById("TiempoComida").selectedIndex;
        	    var y = document.getElementById("TiempoComida").options;
        	    
        	    
        	    ArrTiempoCom[x]=y[x].text;
        	    
        	    ActualizarTabla();
        	    
        	    if(habilitado==false){
        			document.getElementById("alimento").readOnly = false;	
        			document.getElementById("cantidada").readOnly = false;	
        			document.getElementById("porcion").readOnly = false;	
        			document.getElementById("BAlAgregar").disabled = false;
        			
        			habilitado=true;
        		}
        		
        	}


        	jQuery(function(){
        		jQuery('#alimento').autocomplete({
        			source : function(request, response) {
        		           $.ajax({
        		                url : "../Alimento",
        		                type : "GET",
        		                data : {
        		                       term : request.term
        		                },
        		                dataType : "json",
        		                success : function(data) {
        		                      response(data);
        		                }
        		         });
        		      },
        		      select: function( event, ui ) {
        		          //alert( ui.item.value );
        		         // CargarAlimento(ui.item.value);
        		          var action="buscar";
        		      	cadena = [ 	'valor='   + ui.item.value,'a='+action].join('&');
        		      	$.ajax({
        		              url: "../Alimento",
        		              data: cadena,
        		        	    type: 'GET',
        		              dataType: 'json',
        		              success: function(data){
        		              		document.getElementById('alimento').value  = data.resultado[0].nombre;
        		        	        document.getElementById('calorias').value  = data.resultado[0].calorias;
        		        	        document.getElementById('porcion').value  = data.resultado[0].metrica;
        		        	        document.getElementById("cantidada").focus();	              	
        		              }
        		          });
        		         // document.getElementById('alimento').value  = ui.item.value;
        		          //document.getElementById('calorias').value  = "40";
        		          return false;
        		       }
        	    });
        		jQuery('#enfermedad').autocomplete({
        			source : function(request, response) {
        		           $.ajax({
        		                url : "../Enfermedad",
        		                type : "GET",
        		                data : {
        		                       term : request.term
        		                },
        		                dataType : "json",
        		                success : function(data) {
        		                      response(data);
        		                }
        		         });
        		      },
        		     
        	    });

        	});

        	function CargarAlimento(texto){
        		var action="buscar";
        		cadena = [ 	'valor='   + texto,'a='+action].join('&');
        		$.ajax({
        	        url: "../Alimento",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	
        	        	if(data.resultado=='OK'){
        	        		
        	        		document.getElementById('alimento').value  = data.resultado.nombre;
        	  	            document.getElementById('calorias').value  = data.resultado.calorias;
        	   	      		 
        	        		
        	        	}
        	        	
        	        }
        	    });
        	}
        	function CalcIMC(){
        		var talla=0;
    			var peso=0;
    			var imc=0;
    			var pesomax=0;
    			var pesomin=0;
    			var pesoideal=0;
    			var TempTalla="";
    			var TempPeso="";
    		
    			TempTalla=document.getElementById('talla').value;
    			TempPeso=document.getElementById('pesousual').value;
    			
    			if(TempTalla==""||TempPeso==""){
    				talla=0;
    				peso=0;
    				document.getElementById('imc').value  = "";
    			}else{
    				talla =	parseFloat(TempTalla);
    			    peso =	parseFloat(TempPeso)*0.453592;
    			    pesomax=(24.9 * (talla^2)) * 2.2;
    				pesomin=(18.5 * (talla^2)) * 2.2;
    				pesoideal=(21.7 * (talla^2)) * 2.2;
    			    talla=talla*talla;
    			    imc=peso/talla;
    				
    			    
    			    var action="cargaimc";
    				cadena = [ 	'talla=' + talla,'peso='+peso,'a='+action].join('&');
    				$.ajax({
    			        url: "../IMC",
    			        data: cadena,
    			  	    type: 'post',
    			        dataType: 'json',
    			        success: function(data){
    			        	
    			        	document.getElementById('imc').value  = ""+imc.toFixed(2);
    			        	document.getElementById('diagnostico').value  = data.diagnostico;
    			        	document.getElementById('pesominimo').value  = ""+ pesomin.toFixed(2);
    			        	document.getElementById('pesomax').value  =""+ pesomax.toFixed(2);
    			        	document.getElementById('pesoideal').value  =""+ pesoideal.toFixed(2);
    			        	document.getElementById('peso').value  =""+ peso.toFixed(2);
    			        }
    				});
    			}
        	}
        	function CalcularIMC(event) {
        	    var char = event.which || event.keyCode;
        	    if(char == 13){     
        	    	var aTempTalla="";
        			var aTempPeso="";
        			
        			aTempTalla=parseFloat(validar_numerovacio('talla'));
        			aTempPeso=parseFloat(validar_numerovacio('pesousual'));
        			
        			if(aTempTalla>0&&aTempPeso>0){
        				CalcIMC(); 
        			}else{
        				VentanaError("La talla y el peso deben ser mayor a cero");
        			}
        			
        	    	
        		}
        	   
        	}
        	
        	document.getElementById('medicamento').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("suplemento").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('suplemento').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("fuma").focus();
            		 return false;
                   
            	}
            }
        	
        	document.getElementById('fuma').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("ncigarro").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('ncigarro').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("fumafrec").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('fumafrec').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("ejercicio").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('ejercicio').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("ejerciciotiempo").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('ejerciciotiempo').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("ejerciciofrec").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('ejerciciofrec').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("bebidaalc").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('bebidaalc').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("bebidaalcfrec").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('bebidaalcfrec').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("horadesayuno").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('horadesayuno').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("tcdesayuno").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('tcdesayuno').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("refamhr").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('refamhr').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("tcrefaccion").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('tcrefaccion').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("almh").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('almh').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("tcalmuerzo").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('tcalmuerzo').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("refpmhr").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('refpmhr').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("tcrefaccionpm").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('tcrefaccionpm').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("cenhr").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('cenhr').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("tccena").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('tccena').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("diarrea").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	
        	document.getElementById('diarrea').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("flatulencia").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('flatulencia').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("acidez").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('acidez').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("estreñimiento").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('estreñimiento').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Lcasa").focus();
            		 return false;
                   
            	}
            }
        
        	document.getElementById('Lcasa').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Ltrabajo").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('Ltrabajo').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Lotro").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('Lotro').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("agua").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('agua').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Ocasa").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('Ocasa').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Ocafeteria").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('Ocafeteria').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Ocaseta").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('Ocaseta').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Ochiclero").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('Ochiclero').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("ald").focus();
            		 return false;
                   
            	}
            }
        	
        	document.getElementById('ald').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("aln").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('aln').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("alp").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('alp').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			activaTab("menu1");
            		
            		 return false;
                   
            	}
            }
        	function activaTab(tab){
        	  // $('.nav-tabs a[href="#' + tab + '"]').tab('show');
        	  //  document.getElementById('M7').contentEditable='true';
        	  //  document.getElementById('M7').focus();
        	//  var div = document.getElementById('M7');
			//	div.scrollTop =0;
				var obj = $('html').scrollTop() !== 0 ? 'html' : 'body';

			// then proper delegate using on, with following line:
			$(obj).animate({ scrollTop: 0 }, "slow");
			$('.nav-tabs a[href="#' + tab + '"]').tab('show');	
        	   // window.location.hash = '#M7';
        	};
        	function ValidarDecimal(){
        		var texto=document.getElementById('talla').value;
            	var longitud=texto.length;
            	if(longitud==2){
            		var ini = texto.substr(0,1);
            	    var aux= texto.substr(longitud-1,longitud);
            	    var palabra=ini+"."+aux;
            		document.getElementById('talla').value=palabra;
            	}
        	}
        	document.getElementById('dbaja').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("dalta").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('dalta').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("talla").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('talla').onkeydown = function (e) {
            	//alert(e.keyCode);
            	if(e.keyCode == 13){
            		
            		document.getElementById("pesousual").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}else{
            		document.getElementById('imc').value="";
            		document.getElementById('pesominimo').value="";
            		document.getElementById('pesomax').value="";
            		document.getElementById('peso').value="";
            		document.getElementById('pesoideal').value="";
            		document.getElementById('diagnostico').value="";
            	}
            }
        	document.getElementById('pesousual').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			CalcularIMC(e);
            		document.getElementById("circunferencia").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}else{
            		document.getElementById('imc').value="";
            		document.getElementById('pesominimo').value="";
            		document.getElementById('pesomax').value="";
            		document.getElementById('peso').value="";
            		document.getElementById('pesoideal').value="";
            		document.getElementById('diagnostico').value="";
            	}
            }
        	document.getElementById('circunferencia').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("edadmeta").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('edadmeta').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("grasa").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('grasa').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("musculo").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('musculo').onkeydown = function (e) {
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
        			
            		document.getElementById("masa").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('masa').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("viscera").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('viscera').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("abdomen").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('abdomen').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("plan").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
        	document.getElementById('plan').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("verdura").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('verdura').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("fruta").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('fruta').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("pollo").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('pollo').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("lacteo").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('lacteo').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("hamburguesa").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('hamburguesa').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("snack").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('snack').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("refresco").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('refresco').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("galleta").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('galleta').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("dulce").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('dulce').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("embutido").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('embutido').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("sopa").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('sopa').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("fritura").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('fritura').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("tortilla").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('tortilla').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("papa").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('papa').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("pasta").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('pasta').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("arroz").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('arroz').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("frijol").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('frijol').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("pan").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('pan').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("huevo").focus();
            		 return false;
                   
            	}
            }
        	document.getElementById('huevo').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Guard4").focus();
            		 return false;
                   
            	}
            }
        	function VentanaCrearUsuario(){
        		jQuery('#CrearUsuarioModal').modal("show");
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
                			    	 document.getElementById("talla").focus();
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
            		
            		document.getElementById("enfermedad").focus();
            		 return false;
                   
            	}
            }
            document.getElementById('NuevoAl').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("NuevaCal").focus();
            		 return false;
                   
            	}
            }
            document.getElementById('NuevaCal').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("NuevoGrupo").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
            document.getElementById('NuevoGrupo').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("metrica").focus();
            		 return false;
                   
            	}
            }
            document.getElementById('metrica').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("Guard6").focus();
            		 return false;
                   
            	}
            }
            document.getElementById('cantidada').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("porcion").focus();
            		 return false;
                   
            	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
            		        return false;
            	}
            }
            document.getElementById('porcion').onkeydown = function (e) {
            	//alert(e.keyCode);
        		if(e.keyCode == 13){
        			
            		document.getElementById("BAlAgregar").focus();
            		 return false;
                   
            	}
            }
            function existeFecha(fecha){
                var fechaf = fecha.split("-");
                var day = fechaf[2];
                var month = fechaf[1];
                var year = fechaf[0];
                var date = new Date(year,month,'0');
                if((day-0)>(date.getDate()-0)){
                      return false;
                }
                var Mes=parseInt(month);
                if(Mes>12){
                	return false;
                }
                return true;
          }
            function checkFuma(checkbox)
            {
                if (checkbox.checked)
                {
                	document.getElementById('ncigarro').readOnly = false;
                	document.getElementById("fumafrec").disabled = false;
                   
                }else{
                	document.getElementById('ncigarro').readOnly = true;
                	document.getElementById("fumafrec").disabled = true;
                
                }
            }
            function checkEjercicio(checkbox)
            {
                if (checkbox.checked)
                {
                	document.getElementById('ejerciciotiempo').readOnly = false;
                	document.getElementById("ejerciciofrec").disabled = false;
                	
                   
                }else{
                	document.getElementById('ejerciciotiempo').readOnly = true;
                	document.getElementById("ejerciciofrec").disabled = true;
                
                }
            }
            function checkBebida(checkbox)
            {
                if (checkbox.checked)
                {
                	document.getElementById('bebidaalcfrec').readOnly = false;
                	document.getElementById("bebidaalcfrec").disabled = false;
                   
                }else{
                	document.getElementById('bebidaalcfrec').readOnly = true;
                	document.getElementById("bebidaalcfrec").disabled = true;
                
                }
            }
            document.getElementById('enfermedad').onkeydown = function (e) {
	        	
	            if (e.which === 13) {
	            	var enfes=document.getElementById('enfermedad').value;
	            	if(enfes!=""){
	            		VerificarEnferemedad(enfes);
	            	}
	            	
	            	
	                return false;
	            }
	        };
	        function VerificarEnferemedad(Enfes){
				var action="Existe";
				var texto=Enfes.toLowerCase();
	    		var cadena = ['a='+action,'enfs='+Enfes].join('&');


	    		$.ajax({
	    	        url: "../Enfermedad",
	    	        data: cadena,
	    	  	    type: 'post',
	    	        dataType: 'json',
	    	        success: function(data){
	    	        	if(data.resultado=='OK'){
	    	        		if(data.total=="0"){
	    	        			//El alimento no existe
	    	        			//document.getElementById('NuevoAl').value  = texto;
	    	        			VentanaEnfermedad();
	    	        			
	    	        		}else{
	    	        			//alert("existe");
	    	        			AgregarEnfermedadTabla(texto);
	    	        			document.getElementById('enfermedad').value  = "";
	    	        		}	
	    	        	}else{
	    	        		VentanaError("Error, al buscar el alimento en el servidor");
	    	        	}
	    	        	
	    	        	
	    	        	
	    	        }
	    		});
			}
	        function VentanaEnfermedad(){
				 jQuery('#VentanaNuevaEnfermedad').modal("show");
		    }	
	        function AñadirEnfermedad(){
        		var enfe=validad_vacio('enfermedad');
        		if(enfe==""){
        			VentanaError("Error, faltan valores a ingresar");
        		}else{
        			var EnfeAux=enfe.toLowerCase();
        			enfe=encodeURI(enfe);
        			var action="agregar";
            		var cadena = ['a='+action,'ef='+enfe].join('&');


            		$.ajax({
            	        url: "../Enfermedad",
            	        data: cadena,
            	  	    type: 'post',
            	        dataType: 'json',
            	        success: function(data){
            	        	if(data.resultado=='OK'){
            	        		//document.getElementById('enfe').value  = EnfeAux;
            	        		//alert("registrado");
            	        		AgregarEnfermedadTabla(EnfeAux);
            	        		document.getElementById('enfermedad').value  = "";
            	        	}
            	        	
            	        	
            	        	
            	        }
            		});
        		}

        	}
	        function AgregarEnfermedadTabla(nombre){
	        	var enct=true;
	        	for(j = 0; j <= econt; j++){
	        		if(Enfermed[j]==nombre){
	        			enct=false;
	        		}
	        	}
	        	if(enct){
	        		Enfermed[econt]=nombre;
		        	econt++;
		        	ActualizarTablaEnfermedad();
	        	}
	        	
	        }
	        function ActualizarTablaEnfermedad(){
	        	document.getElementById("TablaEnfermedad").innerHTML= "";
	        	var marco="<label style=\"background-color: #337ab7; margin: 0px 0 0px;\"><font color=\"white\">&nbsp;Enfermedad</font></label><div class=\"table-responsive\" style=\"font-size:8pt;\"><table class=\"table table-fixed\" border=\"1px\" width=\"100%\" style=\"border-color: #ccc;\" >";
        	    var fintabla="</tbody></table></div>";
        	    var aux="";
        	    var encabezado="<tbody>";
        	    for (j = 0; j < Enfermed.length; j++) {
        	    	if(Enfermed[j]!=""){
        	    		aux+="<tr>"
           	    		 +"<td>"
    					 +"<button class=\"btn btn-default btn-sm\" onclick=\"EliminarEnfe("+j+")\" style=\"font-size: 9px;\">"+Enfermed[j]
    				     + "<img src=\"../imagenes/cerrar.png\" width=\"10\" height=\"8\" title=\"Eliminar\" /> </button>"
    				     +"</td></tr>";
        	    	}
        	    	
        	    }
        	    var resultados=marco+encabezado+aux+fintabla;
        	    document.getElementById("TablaEnfermedad").innerHTML= resultados;
	        }
	        function EliminarEnfe(entrada){
	        	Enfermed[entrada]="";
	        	ActualizarTablaEnfermedad();
	        }
	        
	        function obtenerRegistroEnfermedad(){
        		var encabCom1="";
        		for (i = 0; i < econt; i++) { 
        			if(Enfermed[i]!=""){
        				encabCom1 += "%"+Enfermed[i];
        			}	
        		}
        		return encodeURIComponent(encabCom1);
        	}
	        
        	function Reconsulta(){
        		var car=document.getElementById("carnet").value;
        		if(car!=""){
        			window.location.replace("/ModuloNutricion/Administracion/Reconsulta1.jsp?idc="+car);
        		}
        		
        		//window.location.replace("http://localhost:8080/ModuloNutricion/ExamenesNutricion/Reconsulta.jsp?prodId="+idCE);
        	}

        	function CalculosVET(){
        		var car=document.getElementById("carnet").value;
        		if(car!=""){
        		window.location.replace("/ModuloNutricion/Administracion/CalculosVET1.jsp?idc="+car);
        		//window.location.replace("http://localhost:8080/ModuloNutricion/ExamenesNutricion/CalculosVET.jsp?prodId="+idCE);
        		} 	
        	}
        	function Editar(){
        		CargaDatosPacienteEdicion();
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
        	        	    for ( i=0; i < data.resultado.length; i++) {  
        	        	    	if(auxf==data.resultado[i].nombre){
        	        	    		resultado+="<option value=\""+data.resultado[i].id+"\" selected>"+data.resultado[i].nombre+"</option>";
        	        	    	}else{
        	        	    		resultado+="<option value=\""+data.resultado[i].id+"\">"+data.resultado[i].nombre+"</option>";
        	        	    	}
        	        	    	
        	        	      
        	        	    }
        	        	    document.getElementById("NRegPacienteEncontrado").style.display = 'none';
    		        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'block';
        	        	   
        	    			var marcos="<select class=\"form-control input-sm\" id=\"facultad1\" name=\"facultad1\" onkeydown=\"CambioFac(event)\">";
        	    			marcos+=resultado+"</select>";
        	    			
        	    			document.getElementById("dep5").innerHTML = marcos;
        	    			document.getElementById("nombre1").value=document.getElementById("nombre").value;
        	    			document.getElementById("sexo1").value=document.getElementById("sexo").value;
        	    			document.getElementById("fechaNac").value=document.getElementById("fff").value;
        	    			document.getElementById("edad1").value=document.getElementById("edad").value;
        	    			
        	    			var auxcui=document.getElementById("cui").value;
        	    			if(auxcui=="0"){
        	    				document.getElementById("cui1").value="";
        	    			}else{
        	    				document.getElementById("cui1").value=auxcui;
        	    			}
        	    			
        	    			document.getElementById("correo1").value=document.getElementById("correo").value;
        	    			
        	    			var auxtel=document.getElementById("telefono").value;
        	    			if(auxtel=="0"){
        	    				document.getElementById("telefono1").value="";
        	    			}else{
        	    				document.getElementById("telefono1").value=auxtel;
        	    			}
        	    			
        	    			
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