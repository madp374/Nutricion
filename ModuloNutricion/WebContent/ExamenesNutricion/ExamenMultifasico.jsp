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
        <h3 class="panel-title">Examen Multifasico</h3>
        </div>
        <div class="panel-body">
        
 <form action="../Multifasico" method="post" id="multifasico" class="form-inline" role="form" onsubmit="return false">
 <article>
 <div class="panel panel-primary">
      <div class="panel-heading">Datos Generales</div>
      <div class="panel-body">
      	
      	<div class="row-fluid">  
   &nbsp;
  <div class="form-group">
   
	<label  for="NCarnet">Registro Academico</label>
	<input class="form-control input-sm" name="carnet" id="carnet" type="number" required/>
	
  </div>
 &nbsp;
<div class="form-group">
	  
		  <label for="LFecha">Fecha</label>
		  <input class="form-control input-sm" id="fecha" style="width: 80px;" type="text" readonly/>
	  </div>
	  &nbsp;
	  <div class="form-group">
		  <label for="TipoExame">Tipo de Examen</label>
		  <p id="TipoExame1"></p>
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
 
  </div> 
   
<div class="row-fluid" align="center">
	  <div id="TablaEncargado"></div>
</div> 
<div class="row-fluid" align="center">
	  <div id="RegMulti"></div>
</div>
     	
      	</div>
    </div>
  
  
            
   
  </article>	
  <article>
  <div class="panel panel-primary">
      <div class="panel-heading">Antropometria</div>
      <div class="panel-body" >
      	
<div class="row-fluid" align="center">  
	&nbsp;&nbsp;
	<div class="form-group">
		<label for="Ltalla">Talla (m)<br>&nbsp;</label>
		<input class="form-control input-sm" id="talla" name="talla" type="number"  min="0" max="5" step="any"  style="width: 60px;" onkeyup="ValidarDecimal()" required/>
	</div>
	&nbsp;
	<div class="form-group">
		<label for="Lpeso">Peso (Lbs)<br>&nbsp;</label>
		<input  class="form-control input-sm"id="peso" name="peso" type="number"  min="0" max="800" step="any" onkeydown="CalcularIMC(event)"  style="width: 60px;" required/>
                   
	</div>
	&nbsp;
	<div class="form-group">
		 <label for="Lims">IMC<br>&nbsp;</label>
		 <input class="form-control input-sm" id="imc" name="imc" type="number" step="any" readonly style="width: 65px;" required/>
                    
	</div>
	&nbsp;
	<div class="form-group">
		<label for="LpesoI">Peso ideal<br>(Lbs)</label>
		<input class="form-control input-sm" id="pesoI" name="pesoI" type="number" step="any" readonly style="width: 65px;" required/>
                	
	</div>
	&nbsp;
	<div class="form-group">
		<label for="LpesoM">Peso maximo<br>(Lbs)</label>
		<input class="form-control input-sm" id="pesoM" name="pesoM" type="number" step="any" readonly style="width: 65px;" required/>
                    
                   
	</div>
	&nbsp;
	<div class="form-group">
		 <label for="LDiag">Diagnostico<br>&nbsp;</label>
		 <input class="form-control input-sm" id="Diag" name="Diag" type="text" readonly style="width: 100px;" required/>
                    
	</div>
	</div>
      	
      	</div>
    </div>

  
  </article>
  <article>
  <div class="panel panel-primary">
      <div class="panel-heading">Pliegues Cutaneos</div>
      <div class="panel-body" >
   <div class="container-fluid">   	
  <div class="row-fluid" align="center">
  &nbsp;
  	<div class="form-group">
  		<label for="Ltricipital">Tricipital<br>(mm)</label>
  		<input class="form-control input-sm" id="tricipital" name="tricipital" min="0" type="number" step="any" onkeyup="CalcularPliegues(event)" style="width: 60px;" required />
                   
  	</div>
  	&nbsp;
  	<div class="form-group">
  		<label for="Lsubescapular">Subescapular<br>(mm)</label>
  		<input class="form-control input-sm" id="subescapular" name="subescapular" min="0" type="number" step="any" onkeyup="CalcularPliegues(event)" style="width: 60px;" required "/></td>
                   
  	</div>
  	&nbsp;
  	<div class="form-group">
  		<label for="Lsumapliegues">Sumatoria de<br>ambos pliegues</label>
  		<input class="form-control input-sm" id="sumapliegues" name="sumapliegues" type="number" step="any" readonly style="width: 65px;" required />
         
  	</div>
  	&nbsp;
  	<div class="form-group">
							<label>Cintura<br>Abdominal</label>
							<input class="form-control input-sm" id="abdomen" min="0" step="any" name="abdomen" type="number" style="width: 60px;" />
					</div>
  </div>
   </div>   	
      	</div>
    </div>
    
 

  </article>

            
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
        var busqueda=false;
        var ERRORSQL=false;
        var carnetaccion="";
        var IDMulti="";
        
        var UsuarioSesion = "null";
		var IdUsuarioSesion = "null";
		var PerfilSesion ="null";
  		var NomUsuario ="null";
  		
  		var AccionCarnetCarga=false;
  		
function VentanaCrearUsuario(){
	jQuery('#CrearUsuarioModal').modal("show");
}
function VentanaError(mensaje){
	document.getElementById("Errortxt").innerHTML = "";
	document.getElementById("Errortxt").innerHTML = " "+mensaje;
	jQuery('#ErroresModal').modal("show");
}
function EliminarRegistro(){
	jQuery('#EliminarRegistroModal').modal("show");
}
function BorrarRegistro(){
	
	
	var ID=IDMulti;
	var action="eliminar";
	var cadena = ['a='+action,'ID='+ID].join('&');

	$.ajax({
        url: "../Multifasico",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		document.getElementById('carnet').value="";
        		document.getElementById('TipoExamen').value  = 1;
        		document.getElementById("TablaEncargado").innerHTML = "";
        		limpiarDatos();
        		IDMulti="";
        		MostrarMensajeServidor("Registro eliminado correctamente");
        		
        	}else{
        		ERRORSQL=true;
        		VentanaError(data.descripcion);
        		IDMulti="";
        	}
        	
        }
	});
}
document.getElementById('carnet').onkeydown = function (e) {
        	
            if (e.which === 13) {
            	var carnet=document.getElementById('carnet').value;
            	document.getElementById('TipoExamen').value  = 1;
            	document.getElementById("TablaEncargado").innerHTML = "";
            	if(carnet!=""){
            		AccionCarnetCarga=false;
            		limpiarDatos();
            		BuscarPaciente(carnet);
            	}else{
            		//alert("Ingrese un numero de carnet valido");
            		VentanaError(" Ingrese un numero de carnet/registro valido");
            	}
            	
                return false;
            }else{
            	if(AccionCarnetCarga){
            		AccionCarnetCarga=false;
            		document.getElementById('TipoExamen').value  = 1;
            		busqueda=false;
            		limpiarDatos();
            	}
            }
        };
        
        function limpiarDatos(){
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
			
			document.getElementById('imc').value  = "";
			document.getElementById('Diag').value  = "";
			document.getElementById('pesoM').value  = "";
			document.getElementById('pesoI').value  = "";
			document.getElementById('sumapliegues').value= "";
			
			document.getElementById('tricipital').value= "";
			document.getElementById('talla').value= "";
			document.getElementById('peso').value= "";
			document.getElementById('abdomen').value= "";
			document.getElementById('subescapular').value= "";
			document.getElementById('abdomen').value= "";
			IDMulti=0;
			
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
			
			document.getElementById('tricipital').readOnly = false;
			document.getElementById('talla').readOnly = false;
			document.getElementById('peso').readOnly = false;
			document.getElementById('abdomen').readOnly = false;
			document.getElementById('subescapular').readOnly = false;
			document.getElementById('abdomen').readOnly = false;
        }
        function  AccionPagina(){
        	if(ERRORSQL==false){
        		limpiarDatos();
        		//window.location.href = 'http://localhost:8080/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp';
        		//window.location.href = '/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp';
        		//window.location.replace("/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp");
        	}
        	
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
                		if(PerfilSesion=="nutri"){
            				document.getElementById("UsuarioSesion").innerHTML ='<label>Usuario:'+UsuarioSesion+' | <a id="CerrarSesion1" title="Cerrar sesion" href="#" onclick="CerrarSesion(); return false;"  style="color: blue;">Cerrar sesion</a>&nbsp;&nbsp;&nbsp;&nbsp;</label>';
            				CargaTiposExamen();
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
        				CargaTiposExamen();
        			}else{
        				window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
        			}
        		}
        	}
        	function CargaInicio() {
        		cargar_hora();
        		
        		var MID = getUrlVars()["MID"];
        		if(MID!=undefined){
        			document.getElementById("Guard").style.display = 'none';
        		}else{
        			document.getElementById("Mod").style.display = 'none';
        		}
        		VerificarSesion();
        		document.getElementById("NRegPacienteEncontrado").style.display = 'none';
        		document.getElementById("NRegPacienteNoEncontrado").style.display = 'none';
        		document.getElementById("BtnEditar").style.display = 'none';
        		document.getElementById("BtnEditarG").style.display = 'none';
			
    			
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
        		var action="CargaEdicion";
        		var cadena = ['a='+action,'MID='+MID].join('&');

        		$.ajax({
        	        url: "../Multifasico",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		document.getElementById('TipoExamen').value  = data.TipoExamen;
        	        	
        	        		document.getElementById('talla').value  = data.talla;
        	        		document.getElementById('peso').value  = data.peso;
        	        		document.getElementById('tricipital').value  = data.tricipital;
        	        		document.getElementById('subescapular').value  = data.subescapular;
        	        		document.getElementById('abdomen').value  = data.abdomen;
        	        		
        	        		var auxpeso=parseFloat(data.peso)*(0.453592);
        	        		CargaIMC(data.talla,auxpeso);
        	        		CargaPliegues(data.tricipital,data.subescapular);
        	        		IDMulti=MID;
        	        		Bloqueo(data.USER,data.fecha,data.nombre,data.area);
        	        	}else{
        	        		ERRORSQL=true;
        	        		VentanaError(data.descripcion);
        	        		IDMulti="";
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
        			
        			document.getElementById('tricipital').readOnly = false;
        			document.getElementById('talla').readOnly = false;
        			document.getElementById('peso').readOnly = false;
        			document.getElementById('abdomen').readOnly = false;
        			document.getElementById('subescapular').readOnly = false;
        			document.getElementById('abdomen').readOnly = false;
        			document.getElementById("BtnMod").disabled = false;
        			document.getElementById("BtnEl").disabled = false;
        			document.getElementById('TipoExamen').readOnly = false;
        			document.getElementById("talla").focus();
        		}else{
        			
        			document.getElementById('tricipital').readOnly = true;
        			document.getElementById('talla').readOnly = true;
        			document.getElementById('peso').readOnly = true;
        			document.getElementById('abdomen').readOnly = true;
        			document.getElementById('subescapular').readOnly = true;
        			document.getElementById('abdomen').readOnly = true;
        			document.getElementById('TipoExamen').readOnly = true;
        			document.getElementById("BtnMod").disabled = true;
        			document.getElementById("BtnEl").disabled = true;
        		}
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

        		document.getElementById('fecha').value=fecha;
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
        	        	   
        	    			var marcos="<select class=\"form-control input-sm\" id=\"facultad1\" name=\"facultad1\" onkeydown=\"CambioFac(event)\">";
        	    			marcos+=resultado+"</select>";
        	    			
        	    			document.getElementById("dep5").innerHTML = marcos;
        	    			document.getElementById("TipoExamen").focus();
        	    			AccionCarnetCarga=true;
        	        }
        		});
        		
        	}
        	function Editar(){
        		CargaDatosPacienteEdicion();
        	}
        	function GuardarEditar(){
        		if(carnetaccion!=""&&AccionCarnetCarga){
        			var action="modificar";
        			var carnet=validar_numerovacio('carnet');
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
        	        	   
        	    			var marcos="<select class=\"form-control input-sm\" id=\"facultad1\" name=\"facultad1\" onkeydown=\"CambioFac(event)\">";
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
        	function BuscarPaciente(entrada){
        		var carnet="";
        		if(entrada=='A'){
        			carnet=validar_numerovacio('carnet');
            		
        		}else{
        			carnet=entrada;
        		}
        		carnetaccion=carnet;
        		var action="PacienteMultifasico";
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
    			        		document.getElementById('cui').value  = data.CUI;
    			        		document.getElementById('correo').value  = data.correo;
    			        		document.getElementById('telefono').value  = data.telefono;
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
    		        			GenerarRegistrosMultifasico(data.total,data.Rmultifasico);
    		        	}else{	 
    		        		VentanaCrearUsuario();
    		        		busqueda=false;
    		        		
    		        	}
    		        	
    		        }
    		    });
        		
        	}
        	
        	function GenerarRegistrosMultifasico(total,data){
        		var marcodiv='<div class="form-group"><label for="RegM">Registros de consulta</label><select class="form-control input-sm" id="RMulti" onchange=CambioRegMulti()>';
        		var opciones='<option value=0>Nuevo</option>';
        		if(total!=0){
        			for(i=0;i<total;i++){
        				opciones+='<option value='+data[i].idMULTIFASICO+'>'+data[i].fecha+'</option>';
        			}
        		}
        		var fin='</select></div>'
        		var componente=marcodiv+opciones+fin;
        		document.getElementById("RegMulti").innerHTML =componente;
        		document.getElementById("TipoExamen").focus();
        	}
        	function CambioRegMulti(){
        		var valor=document.getElementById('RMulti').value;
        		document.getElementById("TablaEncargado").innerHTML = "";
        		if(valor!=0){
        			IDMulti=valor;
        			document.getElementById("Guard").style.display = 'none';
        			document.getElementById("Mod").style.display = 'block';
        			
        			CargaEdicion(IDMulti);
        		}else{
        			document.getElementById("Mod").style.display = 'none';
        			document.getElementById("Guard").style.display = 'block';
        			document.getElementById("BtnMod").disabled = false;
        			
        			document.getElementById('imc').value  = "";
        			document.getElementById('Diag').value  = "";
        			document.getElementById('pesoM').value  = "";
        			document.getElementById('pesoI').value  = "";
        			document.getElementById('sumapliegues').value= "";
        			
        			document.getElementById('tricipital').value= "";
        			document.getElementById('talla').value= "";
        			document.getElementById('peso').value= "";
        			document.getElementById('abdomen').value= "";
        			document.getElementById('subescapular').value= "";
        			document.getElementById('abdomen').value= "";
        			
        			document.getElementById('tricipital').readOnly = false;
        			document.getElementById('talla').readOnly = false;
        			document.getElementById('peso').readOnly = false;
        			document.getElementById('abdomen').readOnly = false;
        			document.getElementById('subescapular').readOnly = false;
        			document.getElementById('abdomen').readOnly = false;
        			document.getElementById('TipoExamen').readOnly = false;
        			IDMulti=0;
        		}
      
        	}
        	function CargaPliegues(trici,subes){
        		
    	    	var sumapliegues=0;
    	    	var tricipital=0;
    	    	var subescapular=0;
    	    	
    	    	tricipital=parseFloat(trici);
    	    	subescapular=parseFloat(subes);
    	    	
    	    	sumapliegues=tricipital+subescapular;
    	    	document.getElementById('sumapliegues').value= ""+sumapliegues.toFixed(2);
        	}

        	function CalcularPliegues(event){
        		var char = event.which || event.keyCode;
        	   // if(char == 13){ 
        	    	var auxtricipital="";
        	    	var auxsubescapular="";
        	    	
        	    	auxtricipital=validar_numerovacio('tricipital');
        	    	auxsubescapular=validar_numerovacio('subescapular');
        	    
        	    	CargaPliegues(auxtricipital,auxsubescapular);
        	   // }
        	   
        	}
        	function CargaIMC(TempTalla,TempPeso) {
    			var imc=0;
    			
    			talla =	parseFloat(TempTalla);
			    peso =	parseFloat(TempPeso);
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
			        	
			        	var pesomax=(talla*24.9*2.2).toFixed(2);
			        	var pesoideal=(talla*21.7*2.2).toFixed(2);
			        	
			        	document.getElementById('pesoM').value  = pesomax;
			        	document.getElementById('pesoI').value  = pesoideal;
			        	document.getElementById("tricipital").focus();
			        }
				});
        		
        	}
        	function CalcularIMC(event) {
        	    var char = event.which || event.keyCode;
        	    if(char == 13){ 
        	    
        			var TempTalla="";
        			var TempPeso="";
        			
        			TempTalla=validar_numerovacio('talla');
        			TempPeso=parseFloat(validar_numerovacio('peso'))*(0.453592);
        			
        			if(TempTalla>0&&TempPeso>0){
        				CargaIMC(TempTalla,TempPeso);
        			}else{
        				VentanaError("La talla y el peso deben ser mayor a cero");
        			}
        			

        		}
        	   
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
    function validar_envio(carnet,imc){
    	var resultado=true;
    	if(carnet=="0"||imc=="0"){
    		ERRORSQL=true;
    		resultado=false;
    	}
    	return resultado
    }
    function Modificar(){
    	var carnet=validar_numerovacio('carnet');
    	if(carnetaccion!=""&&AccionCarnetCarga){
    	var action="modificar";
    	var ID=IDMulti;
    	
    	var variable1=validar_vacio('TipoExamen');
    	var variable2=validar_numerovacio('talla');
    	var variable3=validar_numerovacio('peso');
    	var variable4=validar_numerovacio('imc');
    	var variable5=validar_numerovacio('pesoI');
    	var variable6=validar_numerovacio('pesoM');
    	var variable7=validar_numerovacio('tricipital');
    	var variable8=validar_numerovacio('subescapular');
    	var variable9=validar_vacio('Diag');
    	var variable10=validar_numerovacio('abdomen');
    	var sumapl=validar_numerovacio('sumapliegues');
    	
    	var cadena = [ 	'ID='+ ID,'a='+action
  		         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
  		         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'busqueda='+busqueda,'p10='+variable10].join('&');
  	
     	if(carnet!="0"&&variable2!="0"&&variable3!="0"&&variable4!="0"){
     		enviar_datos(cadena);
     	}else{
     		ERRORSQL=true;
     		VentanaError("Complete la informacion del IMC");
     	}
    	}else{
    		VentanaError("Realice la busqueda de la informacion del paciente e intentelo nuevamente");
    	}
    }
    function Guardar(){
    	ERRORSQL=false;
    	if(carnetaccion!=""&&AccionCarnetCarga){
    		var action="guardar";
        	var carnet=validar_numerovacio('carnet');
        	
        	var variable1=validar_vacio('TipoExamen');
        	var variable2=validar_numerovacio('talla');
        	var variable3=validar_numerovacio('peso');
        	var variable4=validar_numerovacio('imc');
        	var variable5=validar_numerovacio('pesoI');
        	var variable6=validar_numerovacio('pesoM');
        	var variable7=validar_numerovacio('tricipital');
        	var variable8=validar_numerovacio('subescapular');
        	
        	var variable9=validar_vacio('Diag');
        	var variable10=validar_numerovacio('abdomen');
        	var variable11="";
        	var variable12="";
        	var variable13="";
        	var variable14="";
        	var variable60=IdUsuarioSesion;
        	var sumapl=validar_numerovacio('sumapliegues');
        	
        	if(busqueda==false){
        		variable11=validar_vacio('nombre1');
        		variable12=validar_vacio('sexo1');
        		variable13=validar_vacio('fechaNac');
        		variable14=validar_numerovacio('facultad1');
        		var variable140=validar_vacio('edad1');
        		var variable141=validar_vacio('cui1');
        		var variable142=validar_numerovacio('tipopaciente1');
        		var variable143=validar_vacio('correo1');
        		var variable144=validar_numerovacio('telefono1');
        		var FechaE=false;
        		if(variable140!=""){
        			//FechaE=existeFecha(fechaNac);
        			FechaE=true;
        		}else{
        			VentanaError("Verifique la edad del paciente");
        		}
        		
        		
        		if(variable11!=""&&variable12!=""&&variable13!=""&&variable14!="0"&&FechaE==true&&variable142!="0"){
        			var cadena = [ 	'carnet='+ carnet,'a='+action
               		         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
               		         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'busqueda='+busqueda
               		         	   ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p10='+variable10
               		         	   ,'p60='+variable60,'p41='+variable141,'p42='+variable142,'p43='+variable143,'p44='+variable144].join('&');
               	
                  	if(validar_envio(carnet,variable4)){
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
          		         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'busqueda='+busqueda
          		         	   ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p10='+variable10,'p60='+variable60].join('&');
          	
             	if(validar_envio(carnet,variable4)){
             		enviar_datos(cadena);
             	}else{
             		ERRORSQL=true;
             		VentanaError("Complete la informacion del IMC");
             	}
        	}
        	
        	
    	}else{
    		ERRORSQL=true;
    		//MostrarMensajeServidor("Error, realice la busqueda del paciente e intentelo nuevamente");
    		VentanaError("Realice la busqueda de la informacion del paciente e intentelo nuevamente");
    	}
    	
 		
 		         	
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
        			    	 document.getElementById("correo1").focus();
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
    document.getElementById('fechaNac').onkeydown = function (e) {
    	if(e.keyCode == 13){
    		var validar=document.getElementById('fechaNac').value;
    		ValidarFecha();
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
    		
    		document.getElementById("talla").focus();
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
    document.getElementById('talla').onkeydown = function (e) {
    	//alert(e.keyCode);
    	if(e.keyCode == 13){
    		
    		document.getElementById("peso").focus();
    		 return false;
           
    	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
    		        return false;
    	}else{
    		document.getElementById('imc').value="";
    		document.getElementById('pesoI').value="";
    		document.getElementById('pesoM').value="";
    		document.getElementById('Diag').value="";
    	}
    }
    document.getElementById('peso').onkeydown = function (e) {
    	//alert(e.keyCode);
		if(e.keyCode == 13){
			CalcularIMC(e);
    		document.getElementById("tricipital").focus();
    		 return false;
           
    	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
    		        return false;
    	}else{
    		document.getElementById('imc').value="";
    		document.getElementById('pesoI').value="";
    		document.getElementById('pesoM').value="";
    		document.getElementById('Diag').value="";
    	}
    }
    document.getElementById('tricipital').onkeydown = function (e) {
    	//alert(e.keyCode);
		if(e.keyCode == 13){
			
    		document.getElementById("subescapular").focus();
    		 return false;
           
    	}else if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
    		        return false;
    	}
    }
    document.getElementById('subescapular').onkeydown = function (e) {
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
		if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8|| e.keyCode == 110|| e.keyCode == 9|| (e.keyCode > 36 && e.keyCode < 41))) {
    		        return false;
    	}
    }
    function MostrarMensajeServidor(texto){
    	document.getElementById('MensajeAux').innerHTML  = texto;
    	jQuery('#MensajeServidor').modal("show");
    	
       
    } 
    function MostrarMensajeServidor2(texto){
    	document.getElementById('MensajeAux2').innerHTML  = texto;
    	jQuery('#MensajeServidor2').modal("show");
    	
       
    }
    function enviar_datos(datos){
    	var resultado="";

    	$.ajax({
            url: "../Multifasico",
            data: datos,
      	    type: 'post',
            dataType: 'json',
            success: function(data){
            	if(data.resultado=='OK'){
            		ERRORSQL=false;
            		MostrarMensajeServidor("Informacion almacenada con exito");
            		document.getElementById('carnet').value  = "";
            		document.getElementById('TipoExamen').value  = 1;
            		limpiarDatos();
            	}else{
            		ERRORSQL=true;
            		//MostrarMensajeServidor("Error al almacenar");
            		VentanaError("Error al almacenar en el servidor");
            	}
            	
            }
    	});
    }
    
    function CargaTiposExamen(){
		
			
			var action="cargaexamen";
    		var cadena = ['a='+action].join('&');


    		$.ajax({
    	        url: "../Multifasico",
    	        data: cadena,
    	  	    type: 'post',
    	        dataType: 'json',
    	        success: function(data){
    	        	if(data.resultado=='OK'){
    	        		//document.getElementById('enfe').value  = EnfeAux;
    	        		//alert(data.total);
    	        		AgregarTExamen(data.total,data);
    	        		//AgregarEnfermedadTabla(EnfeAux);
    	        		//document.getElementById('enfermedad').value  = "";
    	        	}
    	        	
    	        	
    	        	
    	        }
    		});
		

	}
    function AgregarTExamen(total,data){
    	document.getElementById("TipoExame1").innerHTML='';
    	var marco='<select id="TipoExamen" class="form-control input-sm" onkeydown=\"CambioTEx(event)\" >';
    	var fin='</select>';
    	var opcion='';
    	for (j = 0; j < total; j++) {
    		opcion+='<option value="'+data.Lista[j].idTIPO_EXAMEN+'">'+data.Lista[j].nombre+'</option>';
    	}
    	var resultado=marco+opcion+fin;
    	
    	document.getElementById("TipoExame1").innerHTML=resultado;
    }
   
 </script>
        </body>

        </html>