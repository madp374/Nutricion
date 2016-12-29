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
        	var pesoL=0;
        	var idCE="";
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
        	function Guardar(){
        		var action="guardar";
        	
        		var variable1=validar_vacio('TipoExamen');
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
        		
        		var cadena = ['ID='+ idCE,'a='+action
        		      	,"p1="+variable1,"p2="+variable2,"p3="+variable3,"p4="+variable4,"p5="+variable5
        		      	,"p6="+variable6,"p7="+variable7,"p8="+variable8,"p9="+variable9,"p10="+variable10
        		      	,"p11="+variable11,"p12="+variable12,"p13="+variable13,"p14="+variable14,"p15="+variable15].join('&');
        		enviar_datos(cadena);
        			         	

        		alert("guardando");
        	}
        	function enviar_datos(datos){
        		var resultado="";

        		$.ajax({
        	        url: "../Reconsulta",
        	        data: datos,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	alert(data.resultado);
        	        	
        	        }
        		});
        	}
        	function CargaInicio() {
        	
        		AgregarFecha();
        		
        		var idCE = getUrlVars()["prodId"];
        		//var idCE = "1";
        		if(idCE==undefined){
        			alert('Error reload');
        		}else{
        			CargarTallaPeso(idCE);
        		}
        		
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
    		        	document.getElementById('talla').value  = data.talla;
    		        	pesoL=parseInt(data.peso);
    		        	idCE=data.idCE;
    		        }
    			});
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
        	
        		document.getElementById('pesoG').value  = pesog;
        		document.getElementById('pesoP').value  = pesop;
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
        			        	document.getElementById('peso').value  = peso;
        			        	//document.getElementById('pesoM').value  = data.pesomax;
        			        	//document.getElementById('pesoI').value  = data.pesoideal;
        			        }
        				});
        			}
        		    
        		}
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
        <h3 class="panel-title">Examen de Reconsulta</h3>
        </div>
        <div class="panel-body">
        
 <form action="../Reconsulta" method="post" class="form-inline" role="form">
   <article>
<div class="panel panel-primary">
	<div class="panel-heading">Datos Generales</div>
		<div class="panel-body" align="center">
			      	
			<div class="row">
				<div class="form-group">
				  
					  <label for="LFecha">Fecha</label>
					  <input class="form-control" id="fecha" type="text" disabled/>
				  </div>
				  <div class="form-group">
				  
					  <label for="TipoExame">Tipo de Examen</label><select class="form-control" id="TipoExamen">
											<option>Primera consulta</option>
											<option>Reconsulta</option>
										</select>
				  </div>
				  
			</div>
			      	
		</div>
</div>
  </article>	
  <article>
<div class="panel panel-primary">
	<div class="panel-heading">Datos objetivos</div>
		<div class="panel-body" align="center">
			      	
		  <div class="row">  
			<div class="form-group">
				<label for="Ltalla">Talla (m)</label>
				<input class="form-control" id="talla" name="talla" type="number"  min="0.1" max="5" step="any"  style="width: 85px;" onkeypress="CalcularIMC(event)" required/>
			</div>
			
			<div class="form-group">
				<label for="LpesoI">Peso (Lbs)</label>
				<input class="form-control" id="pesoL" name="pesoL" type="number" step="any"   style="width: 80px;" onkeypress="CalcularIMC(event)" required/>      	
			</div>
			<div class="form-group">
				<label for="Lpeso">Peso (Kg)</label>
				<input  class="form-control"id="peso" name="peso" type="number"  min="0.1" max="800" step="any"  style="width: 80px;" onkeypress="CalcularIMC(event)" readonly required/>
						   
			</div>
			 
			
			<div class="form-group">
				<label for="LpesoM">Peso ganado (Lbs)</label>
				<input class="form-control" id="pesoG" name="pesoG" type="number" step="any"   style="width: 80px;" readonly required/>               
			</div>
			<div class="form-group">
				<label for="LpesoM">Peso perdido (Lbs)</label>
				<input class="form-control" id="pesoP" name="pesoP" type="number" step="any"   style="width: 80px;" readonly required/>               
			</div>
			<div class="form-group">
				<label for="LpesoM">Cintura abdominal</label>
				<input class="form-control" id="cintura" name="cintura" type="number" step="any"   style="width: 80px;" required/>               
			</div>
			
			</div>	
			<div class="row"> 
				<div class="form-group">
					 <label for="Lims">IMC</label>
					 <input class="form-control" id="imc" name="imc" type="number" step="any"  style="width: 80px;" readonly required/>                
				</div>
				<div class="form-group">
					 <label for="LDiag">Diagnostico</label>
					 <input class="form-control" id="Diag" name="Diag" type="text" readonly required/>            
				</div>
			</div>
			<div class="row"> 
				<div class="form-group">
					 <label for="Lims">Porcentaje de grasa</label>
					 <input class="form-control" id="pgrasa" name="pgrasa" type="number" step="any"   style="width: 80px;" required/>                
				</div>
				<div class="form-group">
					 <label for="LDiag">Porcentaje de agua</label>
					 <input class="form-control" id="pagua" name="pagua" type="number"   style="width: 80px;" required/>            
				</div>
				<div class="form-group">
					 <label for="LDiag">Grasa visceral</label>
					 <input class="form-control" id="grasavisceral" name="grasavisceral" type="number"   style="width: 80px;" required/>            
				</div>

				<div class="form-group">
					 <label for="Lims">Masa osea</label>
					 <input class="form-control" id="masaosea" name="masaosea" type="number" step="any"  style="width: 80px;" required/>                
				</div>
				<div class="form-group">
					 <label for="LDiag">VET TANITA</label>
					 <input class="form-control" id="vettanita" name="vettanita" type="number"  style="width: 80px;" required/>            
				</div>
				
			</div>			
		</div>
</div>
  </article>
  <article>
<div class="panel panel-primary">
	<div class="panel-heading">Plan</div>
		<div class="panel-body" align="center">
		  <div class="row">
			<div class="form-group">
				<label for="Ltricipital">Datos subjetivos</label>
				<textarea class="form-control" name="datossubjetivos" id="datossubjetivos" cols="20" rows="5" ></textarea>
						   
			</div>
			<div class="form-group">
				<label for="Lsubescapular">Tratamiento</label>
				<textarea class="form-control" name="tratamiento" id="tratamiento"  cols="20" rows="5" ></textarea>
						   
			</div>
			<div class="form-group">
				<label for="Lsumapliegues">Educacion Alimentaria Nutricional</label>
				<textarea class="form-control" name="educacionalimentaria" id="educacionalimentaria" cols="20" rows="5" ></textarea>
				 
			</div>
		  </div>				
		</div>
</div>
  </article>
  </br>
            <div class="row" align="center">
            <div class="form-group">
						     <label for="BNuevo">Guardar</label>			
							<button class="btn btn-default btn-lg" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="80" height="60" title="Guardar" /></button>
							
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
        </body>

        </html>