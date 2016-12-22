<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
		
		<link rel="stylesheet" media="all" type="text/css" href="../jquery/carrusel/style/style-demo.css">

	    <script src="../jquery/carrusel/script/jquery-1.11.1.js"></script>
	    <script src="../jquery/carrusel/script/jquery.easing-1.3.js"></script>
	    <script src="../jquery/carrusel/script/jquery.mousewheel-3.1.12.js"></script>
	    <script src="../jquery/carrusel/script/jquery.jcarousellite.js"></script>
	    
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
		</style>
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:10pt; }
       	
	</style>
		
	
		<script>	
			$(function() {
				$(".menu_header").jCarouselLite({
					hoverPause:true,
					visible: 4,
					auto:500,
					speed:3000,
					scroll:1
					});
				});	
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

        		document.getElementById('fecha').value=fecha;
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
        <h3 class="panel-title">Examen Multifasico</h3>
        </div>
        <div class="panel-body">
        
 <form action="../Multifasico" method="post" class="form-inline" role="form">
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

function CalcularPliegues(event){
	var char = event.which || event.keyCode;
    if(char == 13){ 
    	var auxtricipital="";
    	var auxsubescapular="";
    	var sumapliegues=0;
    	var tricipital=0;
    	var subescapular=0;
    	
    	auxtricipital=document.getElementById('tricipital').value;
    	auxsubescapular=document.getElementById('subescapular').value;
    }
    if(auxtricipital==""||auxsubescapular==""){
    	tricipital=0;
    	subescapular=0;
		document.getElementById('sumapliegues').value  = "";
	}else{
		tricipital=parseFloat(auxtricipital);
    	subescapular=parseFloat(auxsubescapular);
    	sumapliegues=tricipital+subescapular;
    	document.getElementById('sumapliegues').value  = ""+sumapliegues;
	}
}

function CalcularIMC(event) {
    var char = event.which || event.keyCode;
    if(char == 13){ 
    
		var talla=0;
		var peso=0;
		var imc=0;
		
		var TempTalla="";
		var TempPeso="";
		
		TempTalla=document.getElementById('talla').value;
		TempPeso=document.getElementById('peso').value;
		
		if(TempTalla==""||TempPeso==""){
			talla=0;
			peso=0;
			document.getElementById('imc').value  = "";
		}else{
			talla =	parseFloat(TempTalla);
		    peso =	parseFloat(TempPeso);
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
		        	document.getElementById('imc').value  = ""+imc;
		        	document.getElementById('Diag').value  = data.diagnostico;
		        	document.getElementById('pesoM').value  = data.pesomax;
		        	document.getElementById('pesoI').value  = data.pesoideal;
		        }
			});
		}
	    
	}
   
}



</script>
  </div>
  <div id="mensaje1" >
</div>
  </div>
<div id="capa" class="row">
</div>
<div class="row">
	<div class="form-group">
	  
		  <label for="LFecha">Fecha</label>
		  <input class="form-control" id="fecha" type="text" disabled/>
	  </div>
	  <div class="form-group">
	  
		  <label for="TipoExame">Tipo de Examen</label><select class="form-control" name="TipoExamen">
								<option>Ingreso</option>
								<option>Reingreso</option>
							</select>
	  </div>
	  
</div>
      	
      	</div>
    </div>
  
  
            
   
  </article>	
  <article>
  <div class="panel panel-primary">
      <div class="panel-heading">Antropometria</div>
      <div class="panel-body">
      	
<div class="row">  
	<div class="form-group">
		<label for="Ltalla">Talla (m)</label>
		<input class="form-control" id="talla" name="talla" type="number"  min="0.1" max="5" step="any" onkeypress="CalcularIMC(event)" required/>
	</div>
	<div class="form-group">
		<label for="Lpeso">Peso (Kg)</label>
		<input  class="form-control"id="peso" name="peso" type="number"  min="0.1" max="800" step="any" onkeypress="CalcularIMC(event)"  required/>
                   
	</div>
	
	<div class="form-group">
		 <label for="Lims">IMC</label>
		 <input class="form-control" id="imc" name="imc" type="number" step="any" readonly required/>
                    
	</div>
	</div>
	<div class="row">  
	<div class="form-group">
		<label for="LpesoI">Peso ideal (Lbs)</label>
		<input class="form-control" id="pesoI" name="pesoI" type="number" step="any" readonly required/>
                	
	</div>
	<div class="form-group">
		<label for="LpesoM">Peso maximo (Lbs)</label>
		<input class="form-control" id="pesoM" name="pesoM" type="number" step="any" readonly required/>
                    
                   
	</div>
	<div class="form-group">
		 <label for="LDiag">Diagnostico</label>
		 <input class="form-control" id="Diag" name="Diag" type="text" readonly required/>
                    
	</div>
	</div>
      	
      	</div>
    </div>

  
  </article>
  <article>
  <div class="panel panel-primary">
      <div class="panel-heading">Pliegues Cutaneos</div>
      <div class="panel-body">
      	
  <div class="row">
  	<div class="form-group">
  		<label for="Ltricipital">Tricipital (mm)</label>
  		<input class="form-control" id="tricipital" name="tricipital" min="0.1" type="number" step="any" onkeypress="CalcularPliegues(event)" required />
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsubescapular">Subescapular (mm)</label>
  		<input class="form-control" id="subescapular" name="subescapular" min="0.1" type="number" step="any" onkeypress="CalcularPliegues(event)" required "/></td>
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsumapliegues">Sumatoria de ambos pliegues</label>
  		<input class="form-control" id="sumapliegues" name="sumapliegues" type="number" step="any" readonly required />
         
  	</div>
  </div>
      	
      	</div>
    </div>
    
 

  </article>
  </br>
            <p align="center">
            	<input type="image" name="checkout"
            	 class="btn btn-default btn-lg" type="button"
								value="Pr"
								src="../imagenes/guardado.png" style="width: 80px; height:60px;\"
								alt="Proceed to Checkout\"
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