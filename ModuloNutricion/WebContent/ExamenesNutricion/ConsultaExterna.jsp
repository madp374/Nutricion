<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  		<script src="../jquery/autocompletar/jquery.autocomplete.js"></script>
        
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
		
		<link rel="stylesheet" media="all" type="text/css" href="../jquery/carrusel/style/style-demo.css">

	  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
			.container{
				width: 100%;
			}
		</style>
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:10pt; }
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

        </head>

        <body onload="CargaInicio()">
        <script>
        	function CargaInicio() {
        	
        		var  today = new Date();
        		var m = today.getMonth() + 1;
        		var mes = (m < 10) ? '0' + m : m;
        		 
        		var fecha=today.getDate()+'/' +mes+'/'+today.getFullYear();

        		//document.getElementById('fecha').value=fecha;
        	}
        	
        </script>
        <div class="container">
         <div class="panel2 panel-body">
        <header class="row col-sm-12">
         <div class="page-header">
        
     <form class="form-inline">
  
  <div class="form-group">
    <div style="float:right;">
		<a href="http://usalud.usac.edu.gt/index.jsp">
		<img src="../imagenes/logousac.png" width="270px"  >
	</a>
	</div> 
  </div>
  
  <div class="form-group">
    <p><h3 align="center">&Aacute;rea de Medicina Preventiva e Investigaci&oacute;n</br>
			Clinica de Nutricion</br>
			Unidad de Salud. USAC</h3></p>
  </div>
  
  <div class="form-group">
    <div style="float:left;">
		<a href="http://usalud.usac.edu.gt/index.jsp">
		<img src="../imagenes/logousalud2.gif" width="270px"  onmouseout="this.src=&#39;../imagenes/logousalud2.gif&#39;;" onmouseover="this.src=&#39;../imagenes/logousac.png&#39;;">
	</a>
	</div> 
  </div>
  
</form>
	
       		 
        </div>
        </header>
        <div class="row col-sm-12">
        
        <nav class="col-sm-2">
        <ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3">
        <li > <a href="#"> <span class="glyphicon glyphicon-home"></span> Manejo de Trifoliar </a> </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Prescripción dietetica </a>
        <ul>
		<li><a href="#">Page 1</a></li>
		<li><a href="#">Page 2</a></li>
	  </ul>
         </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Consulta externa </a> 
        	<ul>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/ExamenesNutricion/ConsultaExterna.jsp"><span class="glyphicon glyphicon-list-alt"></span>Nuevo</a></li>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/ListadoMultifasico.jsp"><span class="glyphicon glyphicon-list-alt"></span>Catalogo</a></li>
		    </ul>
        </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Multifasico </a>
        	<ul>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp"><span class="glyphicon glyphicon-list-alt"></span>Nuevo</a></li>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/ListadoMultifasico.jsp"><span class="glyphicon glyphicon-list-alt"></span>Catalogo</a></li>
		    </ul>
        </li>
        </ul>
        </nav>
        
        <section class="col-sm-10">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Examen Consulta Externa</h3>
        </div>
        <div class="panel-body">
        
 <form action="../ConsultaExterna" method="post" class="form-inline" role="form">
   <div class="container" >
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
      		
<div class="row">  
  <div class="form-group">
   
	<label for="NCarnet">Carnet/Codigo Personal</label>
	<input class="form-control" name="carnet" id="carnet" type="number" required/>
	
  </div>
  <div class="form-group">
    <label for="Ntipo">Paciente</label>
    <select class="form-control" name="TipoCodigo">
							<option>Estudiante</option>
							<option>Trabajador</option>
						</select>
  </div>
  <div class="form-group">
    <p>

	<button class="btn btn-default btn-lg" onclick="BuscarPaciente(1);">
     <img src="../imagenes/ver.png" width="70" height="50" title="Buscar" />Buscar
	</button>
	</p>
							
	<script>
	var busqueda=false;
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
        		
        		var temp=GenerarITEM()+resultado+"</select>"
    			+"</div>";
    			
        		var capa = document.getElementById("capa");
           		capa.innerHTML = temp;
           		
           		var mensajes = document.getElementById("mensaje1");
           		var aux="<div class=\"form-group\"><input class=\"form-control\" type=\"text\" id=\"mensaje2\" name=\"mensaje2\" readonly /></div>";
           		mensajes.innerHTML = aux;
           		document.getElementById('mensaje2').value  = "Paciente no registrado";
        	
        }
	});
	
}
function GenerarITEM(){
	var texto="<div class=\"form-group\">"
 		 + "<label for=\"LNombre\">Nombre</label>"
		  +"<input class=\"form-control\" type=\"text\"  name=\"nombre\" id=\"nombre\" required  />"
	      +"</div>"
	      +"<div class=\"form-group\">"
		  +"<label for=\"LSexo\">Sexo</label><select  class=\"form-control\" name=\"Sexo\">"
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
function BuscarPaciente(entero){
	
	var carnet="a";
	carnet=document.getElementById('carnet').value;
	if(carnet!="a"){
		var action="buscar";
		cadena = [ 	'carnet='   + carnet,'a='+action].join('&');
		$.ajax({
	        url: "../Paciente",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		
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
	   	        		document.getElementById('nombre').value  = data.nombre;
		        		document.getElementById('sexo').value  = data.sexo;
		        		document.getElementById('edad').value  = data.fecha;
		        		document.getElementById('facultad').value  = data.facultad;
	        		
	        	}else{	        		
	        		CargaFacultad();
	        	}
	        	
	        }
	    });
		
	}
	
}


</script>
  </div>
  <div id="mensaje1" >
</div>
  </div>
  <div id="capa" class="row">
</div>
      		
      </div>
    </div>
     
      
      </article>
     
     <article>
     <div class="container">
	    <div class="row">
			<div class="col-sm-9" >
				<div class="panel panel-primary">
			      <div class="panel-heading">Antecedentes Medicos</div>
			      <div class="panel-body" align="center">
			      	
			      	<div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Enfermedades</label>
					  		<textarea class="form-control" name="enfermedad" id="enfermedad" cols="25" rows="5" ></textarea>
					                   
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsubescapular">Medicamentos</label>
					  		<textarea class="form-control" name="medicamento" id="medicamento" cols="25" rows="5" ></textarea>
					  		     
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Suplementos</label>
					  		<textarea class="form-control" name="suplemento" id="suplemento" cols="25" rows="5" ></textarea>
					  		
					  	</div>
					  </div>
			      	
			      	</div>
			    </div>
			</div>
			<div class="col-sm-3" >
				<div class="panel panel-primary">
			      <div class="panel-heading">Transtornos Digestivos</div>
			      <div class="panel-body" align="center">
			      
			      	<div class="row">
			      		<div class="form-group">
					  		<label for="Ltricipital">Diarrea</label>
					  		<input class="form-control" id="diarrea" type="checkbox" align="center" />
					                   
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsubescapular">Flatulencia</label>
					  		<input class="form-control" id="flatulencia" type="checkbox" align="center" />
					  		     
					  	</div>
			      	</div>
			      	<div class="row">
			      		<div class="form-group">
					  		<label for="Lsumapliegues">Acidez</label>
					  		<input class="form-control" id="acidez" type="checkbox" align="center" />
					  		
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Estreñimiento</label>
					  		<input class="form-control" id="estreñimiento" type="checkbox" align="center" />
					  		
					  	</div>
			      	</div>
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
      
      	<div class="row">
  	<div class="form-group">
  		<label for="Ltricipital">Fuma</label>
  		<input class="form-control" id="fuma" type="checkbox" align="center" />
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsubescapular">No. Cigarrillos</label>
  		<input class="form-control" id="ncigarro"  min="0.1" type="number" step="any" style="width: 80px;" />
            
  	</div>
  	<div class="form-group">
  		<label for="Lsumapliegues">Frecuencia</label>
  		<select class="form-control" id="fumafrec">
							<option>Frecuentemente</option>
						</select>
  
  	</div>

  	<div class="form-group">
  		<label for="Ltricipital">Ejercicio</label>
  		<input class="form-control" id="ejercicio" type="checkbox" align="center" />
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsubescapular">Tiempo en minutos</label>
  		<input class="form-control" id="ejerciciotiempo"  min="0.1" type="number" step="any" style="width: 80px;" />
            
  	</div>
  	<div class="form-group">
  		<label for="Lsumapliegues">Frecuencia</label>
  		<select class="form-control" id="ejerciciofrec">
							<option>Frecuentemente</option>
						</select>
  
  	</div>

  	<div class="form-group">
  		<label for="Ltricipital">Bebidas alcoholicas</label>
  		<input class="form-control" id="bebidaalc" type="checkbox" align="center" />
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsumapliegues">Frecuencia</label>
  		<select class="form-control" id="bebidaalcfrec">
							<option>Frecuentemente</option>
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
      	
      	<div class="container">
		    <div class="row">
				<div class="col-sm-6" >
				
					<div class="panel panel-primary">
				      <div class="panel-heading">Tiempos de comida</div>
				      <div class="panel-body" align="center">
				      		<div class="row">
				      			<div class="form-group" align="center">
							  		<label for="Ltricipital">Desayuno</label>
							  		<input class="form-control" id="tdesayuno" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="horadesayuno" id="horadesayuno" type="time" />
							  
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Ltricipital">Refaccion AM</label>
							  		<input class="form-control" id="refam" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="refamhr" id="refamhr" type="time" />
							  
							  	</div>
				      		</div>
				      		<div class="row">
				      			<div class="form-group" align="center">
							  		<label for="Ltricipital">Almuerzo</label>
							  		<input class="form-control" id="talmu" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="almh" id="almh" type="time" />
							  
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Ltricipital">Refaccion PM</label>
							  		<input class="form-control" id="refpm" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="refpmhr" id="refpmhr" type="time" />
							  
							  	</div>
				      		</div>
				      		<div class="row">
				      			<div class="form-group" align="center">
							  		<label for="Ltricipital">Cena</label>
							  		<input class="form-control" id="cenaa" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="cenhr" id="cenhr" type="time" />
							  
							  	</div>
				      		</div>
				      </div>
				    </div>
				
				</div>
				<div class="col-sm-6" >
					<div class="row">
						<div class="panel panel-primary">
			      <div class="panel-heading">Tiempo por comida(minutos)</div>
			      <div class="panel-body" align="center">
			      
			      <div class="row">
				  	<div class="form-group">
				  		<label for="Ltricipital">Desayuno</label>
				  		<input class="form-control" name="tcdesayuno" id="tcdesayuno" type="number" style="width: 70px;" />
				                   
				  	</div>
				  	<div class="form-group">
				  		<label for="Lsubescapular">Refaccion</label>
				  		<input class="form-control" name="tcrefaccion" id="tcrefaccion" type="number" style="width: 70px;" />
				  		     
				  	</div>
				  	<div class="form-group">
				  		<label for="Lsumapliegues">Almuerzo</label>
				  		<input class="form-control" name="tcalmuerzo" id="tcalmuerzo" type="number" style="width: 70px;" />
				  		
				  	</div>
				  	<div class="form-group">
				  		<label for="Lsumapliegues">Cena</label>
				  		<input class="form-control" name="tccena" id="tccena" type="number" style="width: 70px;" />
				  		
				  	</div>
				  </div>
			      
			      </div>
			    </div>
					</div>
					<div class="row">
						<div class="col-sm-6" >
							<div class="panel panel-primary">
							      <div class="panel-heading">Lugar de consumo</div>
							      <div class="panel-body" align="center">
							      		<div class="row">
										  	<div class="form-group">
										  		<label for="Lcasa">Casa</label>
										  		<input class="form-control" id="Lcasa" type="checkbox" align="center" />
										                   
										  	</div>
										  	<div class="form-group">
										  		<label for="Ltrabajo">Trabajo</label>
										  		<input class="form-control" id="Ltrabajo" type="checkbox" align="center" />
										  		     
										  	</div>
										  	<div class="form-group">
										  		<label for="Lotros">Otros</label>
										  		<input class="form-control" id="Lotro" type="checkbox" align="center" />
										  		
										  	</div>
										  </div>
							      </div>
							    </div>
						</div>
						<div class="col-sm-6" >
							<div class="panel panel-primary">
						      <div class="panel-heading">Origen de alimentos</div>
						      <div class="panel-body" align="center">
						      		 <div class="row">
									  	<div class="form-group">
									  		<label for="Ltricipital">Casa</label>
									  		<input class="form-control" id="Ocasa" type="checkbox" align="center" />
									                   
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsubescapular">Cafeteria</label>
									  		<input class="form-control" id="Ocafeteria" type="checkbox" align="center" />
									  		     
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsumapliegues">Caseta</label>
									  		<input class="form-control" id="Ocaseta" type="checkbox" align="center" />
									  		
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsumapliegues">Chiclero</label>
									  		<input class="form-control" id="Ochiclero" type="checkbox" align="center" />
									  		
									  	</div>
									  </div>
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
			      <div class="panel-body" align="center">
			      
			        <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Consumo de Agua(Vasos)</label>
					  		<input class="form-control" name="agua" id="agua" type="number"  required/>
					                  
					  	</div>
					  	
					  	<div class="form-group">
					  		<label for="Lsubescapular">Alimentos que le hacen daño</label>
					  		<textarea class="form-control" name="ald" id="ald" cols="20" rows="5" ></textarea>
					            
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Alimentos que no le gustan</label>
					  		<textarea class="form-control" name="aln" id="aln" cols="20" rows="5" ></textarea>
					        
					  		
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Alimentos preferidos</label>
					  		<textarea class="form-control" name="alp" id="alp" cols="20" rows="5" ></textarea>
					        
					  		
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
    		<div class="container">
    			 <div class="row">
				    <div class="col-sm-9" >
				    
			<div class="panel panel-primary">
		      <div class="panel-heading">Recordatorios</div>
		      <div class="panel-body">
		      	
		      	<h2>Recordatorio de 24 horas</h2>
					  <div class="row">
					  		<div class="form-group">
						    <label>Nuevo tiempo de comida</label>
						    <select class="form-control" id="TiempoComida" name="TiempoComida">
													<option>Desayuno</option>
													<option>Almuerzo</option>
													<option>Cena</option>
												</select>
						</div>
						<div class="form-group">
						    <p>				
							<button class="btn btn-default btn-lg" onclick="AgregarTiempoComida()" >
						     <img src="../imagenes/th.jpg" width="40" height="30" title="Tiempo" /></button>
							</p>
						</div>
					  </div>
					  <br>
					  <div id="TablaAlimento" class="row">
					  
					 </div>
					  <br>
					  <div class="row">
					  	<div class="form-group">
						    <label>Alimento</label>
						    <input class="form-control autocomplete" id="alimento" name="alimento" placeholder="Ingresa alimento" />
						</div>
						<div class="form-group">
						    <label>Calorias</label>
						    <input class="form-control" id="calorias" name="calorias" style="width: 70px;" readonly />
						</div>
						<div class="form-group">
						    <label>Cantidad</label>
						    <input class="form-control" id="cantidada" name="cantidada" type="number" style="width: 70px;" required />
						</div>
						<div class="form-group">
						    <label for="Ntipo">Porcion</label>
						    <select class="form-control" name="porcion" id="porcion">
													<option value="1" >U</option>
													<option value="2" >ml</option>
												</select>
						  </div>
						  <div class="form-group">
						    <p>				
							<button class="btn btn-default btn-lg" onclick="AgregarAlimento()" >
						     <img src="../imagenes/agregar.png" width="40" height="30" title="Agregar" /></button>
							</p>
						  </div>
						<div class="form-group">
						    <p>				
							<button class="btn btn-default btn-lg" onclick="NuevoAlimento()" >
						     <img src="../imagenes/AgregarAlimento.jpg" width="40" height="30" title="Nuevo" /></button>
							</p>
						</div>
					</div>
		      	
		      </div>
		    </div>
					  
				    
						
<script>
var tiempoCom="Desayuno";
var marco="<div class=\"table-responsive\"><table class=\"table\" border=\"1px\" >";
var fintabla="</table></div>";
var encabCom="";
var listadoAlimentos="";
var ArrTiempoCom=[];
var ArrComida=[];
var ArrCant=[];
var ArrUnidad=[];
var ArrpComida=[];
var ArrKcal=[];
var posicion=0;

var contador=0;
var contp=0;

function Guardar(){
	var carnet=document.getElementById('carnet').value;;
	
	var variable1=document.getElementById('enfermedad').value;

	var variable2=document.getElementById("medicamento").value;
	var variable3=document.getElementById("suplemento").value;
	var variable4=document.getElementById("diarrea").value;
	var variable5=document.getElementById("flatulencia").value;
	var variable6=document.getElementById("acidez").value;
	var variable7=document.getElementById("estreñimiento").value;
	var variable8=document.getElementById("fuma").value;
	var variable9=document.getElementById("ncigarro").value;
	var variable10=document.getElementById("fumafrec").value;
	
	var info="";
	
	
	
	var variable11=document.getElementById("ejercicio").value;
	var variable12=document.getElementById("ejerciciotiempo").value;
	var variable13=document.getElementById("ejerciciofrec").value;
	var variable14=document.getElementById("bebidaalc").value;
	var variable15=document.getElementById("bebidaalcfrec").value;
	var variable16=document.getElementById("tdesayuno").value;
	var variable17=document.getElementById("horadesayuno").value;
	var variable18=document.getElementById("refam").value;
	var variable19=document.getElementById("refamhr").value;
	var variable20=document.getElementById("talmu").value;
	
	
	
	var variable21=document.getElementById("almh").value;
	var variable22=document.getElementById("refpm").value;
	var variable23=document.getElementById("refpmhr").value;
	var variable24=document.getElementById("cenaa").value;
	var variable25=document.getElementById("cenhr").value;
	var variable26=document.getElementById("Lcasa").value;
	var variable27=document.getElementById("Ltrabajo").value;
	var variable28=document.getElementById("Lotro").value;
	var variable29=document.getElementById("Ocasa").value;
	var variable30=document.getElementById("Ocafeteria").value;
	
	
	
	var variable31=document.getElementById("Ocaseta").value;
	var variable32=document.getElementById("Ochiclero").value;
	var variable33=document.getElementById("tcdesayuno").value;
	var variable34=document.getElementById("tcrefaccion").value;
	var variable35=document.getElementById("tcalmuerzo").value;
	var variable36=document.getElementById("tccena").value;
	var variable37=document.getElementById("agua").value;
	var variable38=document.getElementById("ald").value;
	var variable39=document.getElementById("aln").value;
	var variable40=document.getElementById("alp").value;
	
	info= variable31+","+variable32+","+variable33+","+variable34+","+variable35+","+
	variable36+","+variable37+","+variable38+","+variable39+","+variable40;
	alert(info);
	
	alert("guardando");
}
function LimpiarElementos(){
	document.getElementById('alimento').value="";
	document.getElementById('cantidada').value="";
	document.getElementById('calorias').value="";
}
function AgregarAlimento(){
	
	ArrComida[contp]=document.getElementById("alimento").value;
	var calorias=parseInt(document.getElementById("calorias").value);
	var cant=parseInt(document.getElementById("cantidada").value);
	
	var e = document.getElementById("porcion");
	var porcion = e.options[e.selectedIndex].text;
	
	ArrCant[contp]=cant;
	ArrUnidad[contp]=porcion;
	
	
	ArrKcal[contp]=cant*calorias;
	ArrpComida[contp]=posicion;
	contp++;
	ActualizarTabla();
	LimpiarElementos();
}
function EliminarAlimento(entrada){
	ArrpComida[entrada]=-100;
	ActualizarTabla();
}

function ActualizarTabla(){
	encabCom="";
	document.getElementById("TablaAlimento").innerHTML= "";
	var info="";
	var Cantidad=0;
	var Metrica=0;
	var info="";
	for (i = 0; i < contador; i++) { 
		encabCom += "<tr><th colspan=\"5\" bgcolor=\"#2D7C06\"><font color=\"white\">"+ArrTiempoCom[i]+"</font></th></tr>";
		encabCom+="<tr><th>Alimento</th><th>Cantidad</th><th>Porcion</th><th>Kcal</th><th></th></tr>";
		
		for (j = 0; j < ArrpComida.length; j++) { 
			
			
		if((i==ArrpComida[j])&&(ArrpComida[j]!=-100)){
			encabCom+="<tr><td>"+ArrComida[j]+"</td><td>"+ArrCant[j]+"</td><td>"+ArrUnidad[j]+"</td><td>"+ArrKcal[j]+"</td><td>"+
			"<button class=\"btn btn-default btn-lg\" onclick=\"EliminarAlimento("+j+")\" >"
		    + "<img src=\"../imagenes/eliminar2.png\" width=\"10\" height=\"8\" title=\"Eliminar\" /></button>"
		     +"</td></tr>";
		}
		}
		
		
	}
	var sumatoria=0;
	for (z = 0; z < ArrKcal.length; z++) {
		sumatoria+=ArrKcal[z];
	}
	var calculo = "<tr><td colspan=\"3\">Total</td><td>"+sumatoria+"</td><td></td></tr>"
	
	var NuevaTablaComida = marco + encabCom +calculo+ fintabla;
	document.getElementById("TablaAlimento").innerHTML = NuevaTablaComida;
}
function AgregarTiempoComida(){
	//ArrTiempoCom.splice(0, ArrTiempoCom.length);
	
	tiempoCom = document.getElementById("TiempoComida").value;
	
	//ArrTiempoCom.push(tiempoCom);
	ArrTiempoCom[contador]=tiempoCom;
	posicion=contador;
	contador++;
	
	ActualizarTabla();
	
	
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
	         	      		 
	              		
	              	
	              	
	              }
	          });
	         // document.getElementById('alimento').value  = ui.item.value;
	          //document.getElementById('calorias').value  = "40";
	          return false;
	       }
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
</script>

<div class="panel panel-primary">
      <div class="panel-heading">Evaluacion Antropometrica</div>
      <div class="panel-body">
      
      	<div class="row">
				<div class="form-group">
						<label>Talla(m)</label>
						<input class="form-control" id="talla" name="talla" type="number"  />
				</div>
				<div class="form-group">
						<label>Peso usual(Lbs)</label>
						<input class="form-control" id="pesousual" name="pesousual" type="number"  />
				</div>
				<div class="form-group">
						<label>Peso minimo(Lbs)</label>
						<input class="form-control" id="pesominimo" name="pesominimo" type="number"  />
				</div>
			</div>	
			<div class="row">
				<div class="form-group">
						<label>Peso maximo(Lbs)</label>
						<input class="form-control" id="pesomax" name="pesomax" type="number"  />
				</div>
				<div class="form-group">
						<label>Circunferencia de muñeca</label>
						<input class="form-control" id="circunferencia" name="circunferencia" type="number"  />
				</div>
				<div class="form-group">
						<label>Constitucion osea</label>
						<select class="form-control" name="constitucion">
								<option>Pequeña</option>
								<option>Mediana</option>
								<option>Grande</option>
						</select>
				</div>
			</div>	
      
      </div>
    </div>


<div class="panel panel-primary">
      <div class="panel-heading">Registro</div>
      <div class="panel-body">
      		<div class="row">
					<div class="form-group">
							<label>Peso (kg)</label>
							<input class="form-control" id="peso" name="peso" type="number"  />
					</div>
					<div class="form-group">
							<label>% de Grasa</label>
							<input class="form-control" id="grasa" name="grasa" type="number"  />
					</div>
					<div class="form-group">
							<label>% de masa muscular</label>
							<input class="form-control" id="musculo" name="musculo" type="number"  />
					</div>
				</div>	
				
				<div class="row">
					<div class="form-group">
							<label>Peso (Lbs)</label>
							<input class="form-control" id="pesolb" name="pesolb" type="number"  />
					</div>
					<div class="form-group">
							<label>% de Agua</label>
							<input class="form-control" id="agua" name="agua" type="number"  />
					</div>
					<div class="form-group">
							<label>Masa Osea</label>
							<input class="form-control" id="masa" name="masa" type="number"  />
					</div>
				</div>
				<div class="row">
					<div class="form-group">
							<label>Grasa Visceral</label>
							<input class="form-control" id="viscera" name="viscera" type="number"  />
					</div>
					<div class="form-group">
							<label>Cintura Abdominal</label>
							<input class="form-control" id="abdomen" name="abdomen" type="number"  />
					</div>
					<div class="form-group">
							<label>IMC</label>
							<input class="form-control" id="imc" name="imc" type="number" readonly  />
					</div>
				</div>
				<div class="row">
					<div class="form-group">
							<label>Diagnostico</label>
							<input class="form-control" id="diagnostico" name="diagnostico" readonly />
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
					<textarea class="form-control" name="plan" cols="60" rows="15" ></textarea>
			</div>
		
		</div>	
      </div>
    </div>
	
				    </div>
				    
				    <div class="col-sm-1" >
				    </div>
				    <div class="col-sm-3" >
				    <div class="panel panel-primary">
      <div class="panel-heading">Frecuencia de consumo</div>
      <div class="panel-body">
				    	
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Verduras</label>
					  		<select name="verdura" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Frutas</label>
					  		<select name="fruta" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Carne(res,cerdo), pollo, pescado</label>
					  		<select name="pollo" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Lacteos</label>
					  		<select name="lacteo" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Hamburguesas, pizza, pollo frito</label>
					  		<select name="hamburguesa" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Snacks (papalinas, tortrix, ricitos, etc)</label>
					  		<select name="snack" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Refrescos embasados</label>
					  		<select name="refresco" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Galletas, pasteles, pan dulce</label>
					  		<select name="galleta" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Dulces, chocolates, chicles</label>
					  		<select name="dulce" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Embutidos</label>
					  		<select name="embutido" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Sopas instantaneas</label>
					  		<select name="sopa" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Frituras, chicharrones, carnitas</label>
					  		<select name="fritura" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Tortillas</label>
					  		<select name="tortilla" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Papas</label>
					  		<select name="papa" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Pasta</label>
					  		<select name="pasta" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Arroz</label>
					  		<select name="Arroz" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Frijol</label>
					  		<select name="frijol" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Pan</label>
					  		<select name="pan" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Huevo</label>
					  		<select name="huevo" class="form-control" >
				            	<option>Diario</option>
				                <option>Semanal</option>
				                <option>Mensual</option>
				            </select>        
					  	</div>
					  </div>
					  </div>
    </div>
					  
				    </div>
				  </div>
    		</div>
    	</article>
    </div>
  </div>
  
  </div>
  </br>
            <p align="center">
            	<input type="image" name="checkout"
            	 class="btn btn-default btn-lg" type="button"
								value="Pr"
								src="../imagenes/guardado.png" style="width: 80px; height:60px;\"
								alt="Proceed to Checkout\"
								onclick="Guardar()"
								title="Guardar">
        	</p>
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
        </body>

        </html>