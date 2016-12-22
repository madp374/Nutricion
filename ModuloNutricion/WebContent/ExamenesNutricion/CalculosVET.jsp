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
			.imc2 {width:10px;}
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
        <h3 class="panel-title">Examen de Calculos VET</h3>
        </div>
        <div class="panel-body">
        
 <form action="../CalculosVET" method="post" class="form-inline" role="form">
   <article>
   <div class="panel panel-primary">
      <div class="panel-heading">Datos Generales</div>
      <div class="panel-body">
      
	      	<div class="row">
				<div class="form-group">
				  
					  <label for="LFecha">Fecha</label>
					  <input class="form-control input-sm" id="fecha" type="text" disabled/>
				  </div>
			
		
		  <div class="form-group">
			<label for="Lpeso">Peso (Kg)</label>
			<input class="form-control input-sm" id="peso" name="peso" type="number"  min="0.1" step="any"  style="width: 65px;" required/>         
		</div>
		<div class="form-group">
			<label for="Ltalla">IMC</label>
			<input class="form-control input-sm" id="imc3" name="imc3" type="number"  min="0.1" step="any"  style="width: 65px;" required/>   
		</div>
		  <div class="form-group">
			  <label for="TipoExame">Actividad fisica</label>
			  <input class="form-control input-sm" id="ActividadFisica" name="ActividadFisica" type="number"  min="0.1" step="any"  style="width: 65px;" required/>
			 
		  </div>
		  <div class="form-group">
			  <label for="Lformulavet">Formula VET</label>
			  					<select class="form-control" id="formulavet" name="formulavet">
									<option value="1">Harris Benedict</option>
									<option value="2">Scofield</option>
								</select>
		  </div>
		  
		</div>
      	
      </div>
    </div>	
    

  </article>
  	<script type="text/javascript">
  	document.getElementById('peso').onkeypress = function (e) {
        if (e.which === 13) {
            document.getElementById("imc3").focus();
            return false;
        }
    };
    document.getElementById('imc3').onkeypress = function (e) {
        if (e.which === 13) {
            document.getElementById("ActividadFisica").focus();
            return false;
        }
    };
    document.getElementById('ActividadFisica').onkeypress = function (e) {
        if (e.which === 13) {
            document.getElementById("formulavet").focus();
            return false;
        }
    };
    document.getElementById('formulavet').onkeypress = function (e) {
        if (e.which === 13) {
            document.getElementById("vet").focus();
            return false;
        }
    };
    function CalculoAdecuacion(){
    	var TpProte=(parseFloat( document.getElementById('TProte').value)/parseFloat( document.getElementById('grsProte').value))*100;
    	var TpCarbo=(parseFloat( document.getElementById('TCarbo').value)/parseFloat( document.getElementById('grsCarbo').value))*100;
    	var TpGrasa=(parseFloat( document.getElementById('TGrasa').value)/parseFloat( document.getElementById('grsGrasa').value))*100;
    	
    	document.getElementById('TpProte').value=TpProte;
    	document.getElementById('TpCarbo').value=TpCarbo;
    	document.getElementById('TpGrasa').value=TpGrasa;
    	
    }
    function AutoSumaTotales1(){
    	var TKcal = parseFloat( document.getElementById('KcalAzucar').value)+parseFloat(document.getElementById('KcalGrasa1').value )+parseFloat(document.getElementById('KcalCarne').value )+parseFloat(document.getElementById('KcalCereal').value )+parseFloat(document.getElementById('KcalFruta').value )+parseFloat(document.getElementById('KcalVege').value )+parseFloat(document.getElementById('KcalLacteoE').value )+parseFloat(document.getElementById('KcalLacteoSG').value );
    	var TProte = parseFloat(document.getElementById('ProteAzucar').value )+parseFloat(document.getElementById('ProteGrasa1').value)+parseFloat(document.getElementById('ProteCarne').value )+parseFloat(document.getElementById('ProteCereal').value )+parseFloat(document.getElementById('ProteFruta').value )+parseFloat(document.getElementById('ProteVege').value )+parseFloat(document.getElementById('ProteLacteoE').value )+parseFloat(document.getElementById('ProteLacteoSG').value );
    	var TCarbo = parseFloat(document.getElementById('CarboAzucar').value )+parseFloat(document.getElementById('CarboGrasa1').value )+parseFloat(document.getElementById('CarboCarne').value )+parseFloat(document.getElementById('CarboCereal').value )+parseFloat(document.getElementById('CarboFruta').value )+parseFloat(document.getElementById('CarboVege').value )+parseFloat(document.getElementById('CarboLacteoE').value )+parseFloat(document.getElementById('CarboLacteoSG').value );
    	var TGrasa = parseFloat(document.getElementById('GrasaAzucar').value )+parseFloat(document.getElementById('GrasaGrasa1').value )+parseFloat(document.getElementById('GrasaCarne').value )+parseFloat(document.getElementById('GrasaCereal').value )+parseFloat(document.getElementById('GrasaFruta').value )+parseFloat(document.getElementById('GrasaVege').value )+parseFloat(document.getElementById('GrasaLacteoE').value )+parseFloat(document.getElementById('GrasaLacteoSG').value );
    	document.getElementById('TKcal').value=TKcal ;
    	document.getElementById('TProte').value=TProte;
    	document.getElementById('TCarbo').value=TCarbo;
    	document.getElementById('TGrasa').value=TGrasa;
    	CalculoAdecuacion();
    }
    function CalculoAzucar(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	var KcalLacteoSG=0;
        	var ProteLacteoSG=0;
        	var CarboLacteoSG=0;
        	var GrasaLacteoSG=0;
        	var porLacteoSG = document.getElementById('porAzucar').value;
        	if(porLacteoSG!=""){
        		KcalLacteoSG = parseFloat(porLacteoSG)*20;
        		CarboLacteoSG=parseFloat(porLacteoSG)*5;
        		ProteLacteoSG=parseFloat(porLacteoSG)*0;
        		GrasaLacteoSG=parseFloat(porLacteoSG)*0;
        	}
        	document.getElementById('KcalAzucar').value=KcalLacteoSG;
        	document.getElementById('CarboAzucar').value=CarboLacteoSG;
        	document.getElementById('ProteAzucar').value=ProteLacteoSG;
        	document.getElementById('GrasaAzucar').value=GrasaLacteoSG;
        	AutoSumaTotales1();
        }
    }
    function CalculoGrasa1(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	var KcalLacteoSG=0;
        	var ProteLacteoSG=0;
        	var CarboLacteoSG=0;
        	var GrasaLacteoSG=0;
        	var porLacteoSG = document.getElementById('porGrasa1').value;
        	if(porLacteoSG!=""){
        		KcalLacteoSG = parseFloat(porLacteoSG)*45;
        		CarboLacteoSG=parseFloat(porLacteoSG)*0;
        		ProteLacteoSG=parseFloat(porLacteoSG)*0;
        		GrasaLacteoSG=parseFloat(porLacteoSG)*5;
        	}
        	document.getElementById('KcalGrasa1').value=KcalLacteoSG;
        	document.getElementById('CarboGrasa1').value=CarboLacteoSG;
        	document.getElementById('ProteGrasa1').value=ProteLacteoSG;
        	document.getElementById('GrasaGrasa1').value=GrasaLacteoSG;
        	document.getElementById("porAzucar").focus();
        }
    }
    function CalculoCarne(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	var KcalLacteoSG=0;
        	var ProteLacteoSG=0;
        	var CarboLacteoSG=0;
        	var GrasaLacteoSG=0;
        	var porLacteoSG = document.getElementById('porCarne').value;
        	if(porLacteoSG!=""){
        		KcalLacteoSG = parseFloat(porLacteoSG)*65;
        		CarboLacteoSG=parseFloat(porLacteoSG)*0;
        		ProteLacteoSG=parseFloat(porLacteoSG)*7;
        		GrasaLacteoSG=parseFloat(porLacteoSG)*4;
        	}
        	document.getElementById('KcalCarne').value=KcalLacteoSG;
        	document.getElementById('CarboCarne').value=CarboLacteoSG;
        	document.getElementById('ProteCarne').value=ProteLacteoSG;
        	document.getElementById('GrasaCarne').value=GrasaLacteoSG;
        	document.getElementById("porGrasa1").focus();
        }
    }
    function CalculoCereal(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	var KcalLacteoSG=0;
        	var ProteLacteoSG=0;
        	var CarboLacteoSG=0;
        	var GrasaLacteoSG=0;
        	var porLacteoSG = document.getElementById('porCereal').value;
        	if(porLacteoSG!=""){
        		KcalLacteoSG = parseFloat(porLacteoSG)*75;
        		CarboLacteoSG=parseFloat(porLacteoSG)*14;
        		ProteLacteoSG=parseFloat(porLacteoSG)*3;
        		GrasaLacteoSG=parseFloat(porLacteoSG)*1;
        	}
        	document.getElementById('KcalCereal').value=KcalLacteoSG;
        	document.getElementById('ProteCereal').value=ProteLacteoSG;
        	document.getElementById('CarboCereal').value=CarboLacteoSG;
        	document.getElementById('GrasaCereal').value=GrasaLacteoSG;
        	document.getElementById("porCarne").focus();
        }
    }
    function CalculoFruta(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	var KcalLacteoSG=0;
        	var ProteLacteoSG=0;
        	var CarboLacteoSG=0;
        	var GrasaLacteoSG=0;
        	var porLacteoSG = document.getElementById('porFruta').value;
        	if(porLacteoSG!=""){
        		KcalLacteoSG = parseFloat(porLacteoSG)*80;
        		CarboLacteoSG=parseFloat(porLacteoSG)*20;
        		ProteLacteoSG=parseFloat(porLacteoSG)*0;
        		GrasaLacteoSG=parseFloat(porLacteoSG)*0;
        	}
        	document.getElementById('KcalFruta').value=KcalLacteoSG;
        	document.getElementById('ProteFruta').value=ProteLacteoSG;
        	document.getElementById('CarboFruta').value=CarboLacteoSG;
        	document.getElementById('GrasaFruta').value=GrasaLacteoSG;
        	document.getElementById("porCereal").focus();
        }
    }
    function CalculoVegetal(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	var KcalLacteoSG=0;
        	var ProteLacteoSG=0;
        	var CarboLacteoSG=0;
        	var GrasaLacteoSG=0;
        	var porLacteoSG = document.getElementById('porVege').value;
        	if(porLacteoSG!=""){
        		KcalLacteoSG = parseFloat(porLacteoSG)*35;
        		CarboLacteoSG=parseFloat(porLacteoSG)*8;
        		ProteLacteoSG=parseFloat(porLacteoSG)*1;
        		GrasaLacteoSG=parseFloat(porLacteoSG)*0;
        	}
        	document.getElementById('KcalVege').value=KcalLacteoSG;
        	document.getElementById('CarboVege').value=CarboLacteoSG;
        	document.getElementById('ProteVege').value=ProteLacteoSG;
        	document.getElementById('GrasaVege').value=GrasaLacteoSG;
        	document.getElementById("porFruta").focus();
        }
    }
    function CalculoLacteoEntero(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	var KcalLacteoSG=0;
        	var ProteLacteoSG=0;
        	var CarboLacteoSG=0;
        	var GrasaLacteoSG=0;
        	var porLacteoSG = document.getElementById('porLacteoE').value;
        	if(porLacteoSG!=""){
        		KcalLacteoSG = parseFloat(porLacteoSG)*150;
        		CarboLacteoSG=parseFloat(porLacteoSG)*11;
        		ProteLacteoSG=parseFloat(porLacteoSG)*9;
        		GrasaLacteoSG=parseFloat(porLacteoSG)*8;
        	}
        	document.getElementById('KcalLacteoE').value=KcalLacteoSG;
        	document.getElementById('CarboLacteoE').value=CarboLacteoSG;
        	document.getElementById('ProteLacteoE').value=ProteLacteoSG;
        	document.getElementById('GrasaLacteoE').value=GrasaLacteoSG;
        	document.getElementById("porVege").focus();
        }
    }
    function CalculoLacteoSinGrasa(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	var KcalLacteoSG=0;
        	var ProteLacteoSG=0;
        	var CarboLacteoSG=0;
        	var GrasaLacteoSG=0;
        	var porLacteoSG = document.getElementById('porLacteoSG').value;
        	if(porLacteoSG!=""){
        		KcalLacteoSG = parseFloat(porLacteoSG)*100;
        		CarboLacteoSG=parseFloat(porLacteoSG)*11;
        		ProteLacteoSG=parseFloat(porLacteoSG)*7;
        		GrasaLacteoSG=parseFloat(porLacteoSG)*3;
        	}
        	document.getElementById('KcalLacteoSG').value=KcalLacteoSG;
        	document.getElementById('CarboLacteoSG').value=CarboLacteoSG;
        	document.getElementById('ProteLacteoSG').value=ProteLacteoSG;
        	document.getElementById('GrasaLacteoSG').value=GrasaLacteoSG;
        	document.getElementById("porLacteoE").focus();
        }
    }
    
    function AutoSumaKcalPor(){
    	var porCarbo = parseFloat(document.getElementById('porCarbo').value);
    	var porProte = parseFloat(document.getElementById('porProte').value);
    	var porGrasa = parseFloat(document.getElementById('porGrasa').value);
    	
    	var KcalCarbo = parseFloat(document.getElementById('KcalCarbo').value);
    	var KcalProte = parseFloat(document.getElementById('KcalProte').value);
    	var KcalGrasa = parseFloat(document.getElementById('KcalGrasa').value);
    	
    	var totalpor = porCarbo + porProte + porGrasa;
    	var totalKcal = KcalCarbo + KcalProte + KcalGrasa;
    	
    	document.getElementById('totalpor').value  = totalpor;
    	document.getElementById('totalKcal').value  = totalKcal;
    }
    function CalculoGrasa(event){
    	var char = event.which || event.keyCode;
        if(char == 13){ 
        	var porCarbo = parseFloat(document.getElementById('porGrasa').value);
        	var IMC=parseFloat(document.getElementById("imc3").value);
        	var veta = parseFloat(document.getElementById("veta").value);
        	var ReadBP=parseFloat(document.getElementById('ReadBP').value);
        	var ReadSP=parseFloat(document.getElementById('ReadSP').value);
        	var ReadOb=parseFloat(document.getElementById('ReadOb').value);
        	var KcalCarbo = 0;
        	
        	if(IMC > 18.49 && IMC < 25){
        		KcalCarbo = (veta*porCarbo)/100;
        	}else if(IMC < 18.5){
        		KcalCarbo = ReadBP*porCarbo/100;
        	}else if(IMC > 24.9 &&  IMC < 30){
        		KcalCarbo = ReadSP*porCarbo/100;
        	}else if(IMC > 29.99){
        		KcalCarbo= ReadOb*porCarbo/100;
        	}
        	var grsCarbo = KcalCarbo/9;
        	document.getElementById('KcalGrasa').value  = KcalCarbo;
        	document.getElementById('grsGrasa').value  = grsCarbo;
        	AutoSumaKcalPor();
        	document.getElementById("porLacteoSG").focus();
        }
    }
    function CalculoProte(event){
    	var char = event.which || event.keyCode;
        if(char == 13){ 
        	var porCarbo = parseFloat(document.getElementById('porProte').value);
        	var IMC=parseFloat(document.getElementById("imc3").value);
        	var veta = parseFloat(document.getElementById("veta").value);
        	var ReadBP=parseFloat(document.getElementById('ReadBP').value);
        	var ReadSP=parseFloat(document.getElementById('ReadSP').value);
        	var ReadOb=parseFloat(document.getElementById('ReadOb').value);
        	var KcalCarbo = 0;
        	
        	if(IMC > 18.49 && IMC < 25){
        		KcalCarbo = (veta*porCarbo)/100;
        	}else if(IMC < 18.5){
        		KcalCarbo = ReadBP*porCarbo/100;
        	}else if(IMC > 24.9 &&  IMC < 30){
        		KcalCarbo = ReadSP*porCarbo/100;
        	}else if(IMC > 29.99){
        		KcalCarbo= ReadOb*porCarbo/100;
        	}
        	
        	var grsCarbo = KcalCarbo/4;
        	document.getElementById('KcalProte').value  = KcalCarbo;
        	
        	document.getElementById('grsProte').value  = grsCarbo;
        	document.getElementById("porGrasa").focus();
        	
        }
    }
    function CalculoCarbo(event){
    	var char = event.which || event.keyCode;
        if(char == 13){ 
        	var porCarbo = parseFloat(document.getElementById('porCarbo').value);
        	var IMC=parseFloat(document.getElementById("imc3").value);
        	var veta = parseFloat(document.getElementById("veta").value);
        	var ReadBP=parseFloat(document.getElementById('ReadBP').value);
        	var ReadSP=parseFloat(document.getElementById('ReadSP').value);
        	var ReadOb=parseFloat(document.getElementById('ReadOb').value);
        	var KcalCarbo = 0;
        	
        	if(IMC > 18.49 && IMC < 25){
        		KcalCarbo = (veta*porCarbo)/100;
        	}else if(IMC < 18.5){
        		KcalCarbo = ReadBP*porCarbo/100;
        	}else if(IMC > 24.9 &&  IMC < 30){
        		KcalCarbo = ReadSP*porCarbo/100;
        	}else if(IMC > 29.99){
        		KcalCarbo= ReadOb*porCarbo/100;
        	}
        	var grsCarbo = KcalCarbo/4;
        	document.getElementById('KcalCarbo').value  = KcalCarbo;
        	document.getElementById('grsCarbo').value  = grsCarbo;
        	document.getElementById("porProte").focus();
        }
    	
    }
    function ReadecuacionPeso(actividad){
    	var ReadBP=0;
    	var ReadSP=0;
    	var ReadOb=0;
    	var IMC=parseFloat(document.getElementById("imc3").value);
    	
    	if(IMC < 18.5){
    		ReadBP = actividad + 250;
    	}else if(IMC > 24.99 && IMC < 30){
    		ReadSP = actividad - 250;
    	}else if(IMC > 29.99){
    		ReadOb=actividad - 500;
    	}
    	document.getElementById('ReadBP').value  = ReadBP;
    	document.getElementById('ReadSP').value  = ReadSP;
    	document.getElementById('ReadOb').value  = ReadOb;
    	
    }
   	function CalcularVETMaxActivFisica(vet){
   		//var OpcionActividad=document.getElementById("ActividadFisica");
    	//var Actividad = OpcionActividad.options[OpcionActividad.selectedIndex].value;
    	var Actividad = document.getElementById("ActividadFisica").value;
    	var ActividadFisica = parseFloat(Actividad);
    	
    	var operacion=ActividadFisica*vet;
    	document.getElementById('veta').value  = operacion;
    	ReadecuacionPeso(operacion);
   	}
    function CalculosVET(event){
    	var char = event.which || event.keyCode;
        if(char == 13){ 
        	var SexoVET="Masculino";
        	var EdadVET=23;
        	var PesoKG=0;
        	var FormulaVET="";
        	var VET=0;
        	var talla=1.6;
        	
        	PesoKG=parseInt(document.getElementById("peso").value);
        	var FormulaVET=document.getElementById("formulavet");
        	var OpcionFormula = FormulaVET.options[FormulaVET.selectedIndex].value;
        	
        	if(OpcionFormula==1){ //Formula Harris Benedict
        		if(SexoVET=="Masculino"){
        			VET= 66.47 + (13.75*PesoKG)+ (5*talla)- (6.66*EdadVET);
        		}else{//Femenino
        			VET= 655.1 + (9.56*PesoKG)+ (1.85*talla)- (4.68*EdadVET);
        		}
        	}else{ // Formula Scofield
				if(SexoVET=="Masculino"){
        			if(EdadVET >17 && EdadVET <31){
        				VET= (15.057*PesoKG) + 692.2;
		
        			}else if(EdadVET >30 && EdadVET <61){
        				VET= (11.472*PesoenKilogramos) + 873.1;
			
        			}else if(EdadVET >59){
        				VET= (11.711*PesoenKilogramos) + 587.7;

        			}
        		}else{//Femenino
        			if(EdadVET >17 && EdadVET <31){
        				VET= (14.818*PesoKG) + 486.6;

        			}else if(EdadVET >30 && EdadVET <61){
        				VET= (8.126*PesoenKilogramos) + 845.6;

        			}else if(EdadVET >59){
        				VET= (9.082*PesoenKilogramos) + 658.5;
        			}
        		}
        	}
        	document.getElementById('vet').value  = VET;
        	CalcularVETMaxActivFisica(VET);
        	document.getElementById("porCarbo").focus();
        	
        }
    	
    }
  	</script>
  <article>
  
      	
	<div class="container">
		<div class="row">
			<div class="col-sm-3" >
				<div class="row">
					<div class="form-group">
						<label for="Lvet">VET </label>
						<input class="form-control input-sm" id="vet" name="vet" type="number" step="any"  style="width: 65px;" onkeydown="CalculosVET(event)" required/>   
					</div>
				
					<div class="form-group">
						<label for="Lveta">VET  + Actividad fisica</label>
						<input class="form-control input-sm" id="veta" name="veta" type="number" step="any"  style="width: 65px;" />   
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="Ltalla">Readecuacion bajo peso</label>
						<input class="form-control input-sm" id="ReadBP" name="ReadBP" type="number"   style="width: 65px;" />   
					</div>
				
					<div class="form-group">
						<label for="Ltalla">Readecuacion sobrepeso</label>
						<input class="form-control input-sm" id="ReadSP" name="ReadSP" type="number"    style="width: 65px;" />   
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="Ltalla">Readecuacion obesidad</label>
						<input class="form-control input-sm" id="ReadOb" name="ReadOb" type="number"   style="width: 65px;" />   
					</div>
				</div>
			</div>
			
			<div class="col-sm-6" >
				<div class="row">
				<div class="form-group">
					<div class="table-responsive">
					<table class="table" width="90%">
						<thead>
							<tr>
								<th>Nutrientes</th>
								<th>Porcentaje</th>
								<th>Kilocalorias</th>
								<th>Gramos</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="form-group">
										<label>Carbohidratos</label>
										
									</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		% <input class="form-control input-sm" id="porCarbo" name="porCarbo" type="number"   style="width: 65px;" onkeydown="CalculoCarbo(event)" />                
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Kcal <input class="form-control input-sm" id="KcalCarbo" name="KcalCarbo" type="number"   style="width: 65px;" />             
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Gramos <input class="form-control input-sm" id="grsCarbo" name="grsCarbo" type="number"  style="width: 65px;" />              
								  	</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
										<label>Proteinas</label>
										
									</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		% <input class="form-control input-sm" id="porProte" name="porProte" type="number"   style="width: 65px;" onkeydown="CalculoProte(event)" />                
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Kcal <input class="form-control input-sm" id="KcalProte" name="KcalProte" type="number"   style="width: 65px;" />             
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Gramos <input class="form-control input-sm" id="grsProte" name="grsProte" type="number"  style="width: 65px;" />              
								  	</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
										<label>Grasas</label>
										
									</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		% <input class="form-control input-sm" id="porGrasa" name="porGrasa" type="number"   style="width: 65px;" onkeydown="CalculoGrasa(event)"/>                
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Kcal <input class="form-control input-sm" id="KcalGrasa" name="KcalGrasa" type="number"   style="width: 65px;" />             
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Gramos <input class="form-control input-sm" id="grsGrasa" name="grsGrasa" type="number"    style="width: 65px;" />              
								  	</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
										<label >Total</label>
										
									</div>
								</td>
								<td>
									<div class="form-group">
								  		%<input class="form-control input-sm" id="totalpor" name="totalpor" type="number"   style="width: 65px;" />              
								  	</div>
								</td>
								<td>
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="totalKcal" name="totalKcal" type="number"    style="width: 65px;" />              
								  	</div>
								</td>
								<td></td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>  
      	
     
  
	
  </article>
  <article>
  
  <div class="panel panel-primary">
      <div class="panel-heading">Distribucion de porciones</div>
      <div class="panel-body">
      
  <div class="row">
  	<div class="form-group">
  		<div class="table-responsive">
			<table class="table" width="90%">  
				<thead>
					<tr>
						<th>Grupo</th>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
						<th>Proteinas</th>
						<th>Carbohidratos</th>
						<th>Grasas</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<div class="form-group">
										<label>Lacteos sin grasa</label>
										
							</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Porciones<input class="form-control input-sm" id="porLacteoSG" name="porLacteoSG" type="number"   style="width: 65px;" onkeydown="CalculoLacteoSinGrasa(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalLacteoSG" name="KcalLacteoSG" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteLacteoSG" name="ProteLacteoSG" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="CarboLacteoSG" name="CarboLacteoSG" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaLacteoSG" name="GrasaLacteoSG" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
										<label>Lacteos enteros</label>
										
							</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Porciones<input class="form-control input-sm" id="porLacteoE" name="porLacteoE" type="number"   style="width: 65px;" onkeydown="CalculoLacteoEntero(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalLacteoE" name="KcalLacteoE" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteLacteoE" name="ProteLacteoE" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="CarboLacteoE" name="CarboLacteoE" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaLacteoE" name="GrasaLacteoE" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
										<label>Vegetales</label>
										
							</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Porciones<input class="form-control input-sm" id="porVege" name="porVege" type="number"   style="width: 65px;" onkeydown="CalculoVegetal(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalVege" name="KcalVege" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteVege" name="ProteVege" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="CarboVege" name="CarboVege" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaVege" name="GrasaVege" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
										<label>Frutas</label>
										
							</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Porciones<input class="form-control input-sm" id="porFruta" name="porFruta" type="number"   style="width: 65px;" onkeydown="CalculoFruta(event)"/>                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalFruta" name="KcalFruta" type="number"  style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteFruta" name="ProteFruta" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="CarboFruta" name="CarboFruta" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaFruta" name="GrasaFruta" type="number"  style="width: 65px;" />                  
								  	</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
										<label>Cereales</label>
										
							</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Porciones<input class="form-control input-sm" id="porCereal" name="porCereal" type="number"   style="width: 65px;" onkeydown="CalculoCereal(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalCereal" name="KcalCereal" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteCereal" name="ProteCereal" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="CarboCereal" name="CarboCereal" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaCereal" name="GrasaCereal" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
										<label>Carnes</label>
										
							</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Porciones<input class="form-control input-sm" id="porCarne" name="porCarne" type="number"   style="width: 65px;" onkeydown="CalculoCarne(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalCarne" name="KcalCarne" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteCarne" name="ProteCarne" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="CarboCarne" name="CarboCarne" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaCarne" name="GrasaCarne" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
										<label>Grasas</label>
										
							</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Porciones<input class="form-control input-sm" id="porGrasa1" name="porGrasa1" type="number"  style="width: 65px;" onkeydown="CalculoGrasa1(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalGrasa1" name="KcalGrasa1" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteGrasa1" name="ProteGrasa1" type="number"    style="width: 65px;"/>                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="CarboGrasa1" name="CarboGrasa1" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaGrasa1" name="GrasaGrasa1" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
										<label>Azucares</label>
										
							</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Porciones<input class="form-control input-sm" id="porAzucar" name="porAzucar" type="number"   style="width: 65px;" onkeydown="CalculoAzucar(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalAzucar" name="KcalAzucar" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteAzucar" name="ProteAzucar" type="number"   style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="CarboAzucar" name="CarboAzucar" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaAzucar" name="GrasaAzucar" type="number"    style="width: 65px;" />                  
								  	</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
										<label>Total</label>
										
							</div>
						</td>
						<td align="center">
						</td>
						<td align="center">
									<div class="form-group">
								  		Total<input class="form-control input-sm" id="TKcal" name="TKcal" type="number"   style="width: 65px;" />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Total<input class="form-control input-sm" id="TProte" name="TProte" type="number"   style="width: 65px;" />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Total<input class="form-control input-sm" id="TCarbo" name="TCarbo" type="number"    style="width: 65px;" />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Total<input class="form-control input-sm" id="TGrasa" name="TGrasa" type="number"   style="width: 65px;" />                
								  	</div>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<div class="form-group">
										<label>Porcentaje de adecuacion</label>
										
							</div>
						</td>
						
						<td align="center">
									<div class="form-group">
								  		%<input class="form-control input-sm" id="TpProte" name="TpProte" type="number"   style="width: 65px;" />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		%<input class="form-control input-sm" id="TpCarbo" name="TpCarbo" type="number"    style="width: 65px;" />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		%<input class="form-control input-sm" id="TpGrasa" name="TpGrasa" type="number"    style="width: 65px;" />                
								  	</div>
						</td>
					</tr>
				</tbody>   
			</table>
		</div>
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