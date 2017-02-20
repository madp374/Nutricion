<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
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
			.panel-heading {
			    padding: 6px 15px;
			    }
			.container {
			    width: 80%;
			    padding-top:15px;
			}
			.input-sm {
			    height: 26px;
			    font-size: 11px;
			}
			.imc2 {width:10px;}
			.btn-default {
			    color: #333;
			    background-color: #D8D6D6;
			    border-color: #ccc;
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
       		input {font-size:8pt;}
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
        <li> <a href="/ModuloNutricion/TablasNutricion/Trifoliar.jsp"> <span class="glyphicon glyphicon-home"></span> Inicio </a> </li>
        
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Mantenimiento </a>
	        <ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3" style="background-color: #E0E0E0;">
				<li><a href="/ModuloNutricion/TablasNutricion/Trifoliar.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Manejo de Trifoliar </a></li>
				
				<li><a href="/ModuloNutricion/TablasNutricion/RegistroAlimento.jsp" style="color:black;"> <span class="glyphicon glyphicon-book"></span> Registro de alimentos </a></li>
		    </ul>
         </li>
        <li> <a href="/ModuloNutricion/ExamenesNutricion/ConsultaExterna.jsp"> <span class="glyphicon glyphicon-book"></span> Consulta externa </a> 
        	
        </li>
        <li> <a href="/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp"> <span class="glyphicon glyphicon-book"></span> Multifasico </a>
        	
        </li>
        </ul>
        </nav>
        
        <section class="col-sm-10">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Calculos VET</h3>
        </div>
        <div class="panel-body">
        
 <form action="../CalculosVET" method="post" class="form-inline" role="form" onsubmit="return false">
   <article>
   <div class="panel panel-primary">
      <div class="panel-heading">Datos Generales</div>
      <div class="panel-body">
      		 <div class="row-fluid">  
      		 	&nbsp;&nbsp;
      		 	<div class="form-group">
					<label  for="NCarnet">Carnet/Codigo Personal</label>
					<input class="form-control input-sm" name="carnet" id="carnet" type="number" style="width: 110px;" readonly/>
				  </div>
				 &nbsp;
				<div class="form-group">
				    <label for=LNombre>Nombre</label>
				    <input class="form-control input-sm" type="text"  name="nombre" id="nombre"  readonly />
				</div>
				&nbsp;
				<div class="form-group">
				    <label for=LNombre>Sexo</label>
				    <input class="form-control input-sm" type="text"  name="sexo" id="sexo" style="width: 80px;"readonly  />
				</div>
				&nbsp;
				<div class="form-group" >
				    <label for=LNombre>Edad</label>
				    <input class="form-control input-sm" type="text"  name="edad" id="edad" style="width: 70px;" readonly  />
				</div>
				&nbsp;
				<div class="form-group">
				    <label for=LNombre>Facultad/Dependencia</label>
				    <input class="form-control input-sm" type="text"  name="facultad" id="facultad" style="width: 110px;"readonly  />
				</div>
				 
				  </div> 
	      	<div class="row-fluid">
	      		&nbsp;&nbsp;
				<div class="form-group">
					  <label for="LFecha">Fecha</label>
					  <input class="form-control input-sm" id="fecha" type="text" style="width: 80px;" readonly/>
				  </div>
			
			&nbsp;
		  <div class="form-group">
			<label for="Lpeso">Peso (Lbs)</label>
			<input class="form-control input-sm" id="peso" name="peso" type="number"  min="0" step="any"  style="width: 80px;" required/>         
		</div>
		&nbsp;
		<div class="form-group">
			<label for="Ltalla">IMC</label>
			<input class="form-control input-sm" id="imc3" name="imc3" type="number"  min="0" step="any"  style="width: 70px;" readonly/>   
		</div>
		&nbsp;
		  <div class="form-group">
			  <label for="TipoExame">Actividad fisica</label>
			  <input class="form-control input-sm" id="ActividadFisica" name="ActividadFisica" type="number"  min="0" step="any"  style="width: 80px;" required/>
		  </div>
		  &nbsp;
		  <div class="form-group">
			  <label for="Lformulavet">Formula VET</label>
			  					<select class="form-control input-sm" id="formulavet" name="formulavet">
									<option value="1">Harris Benedict</option>
									<option value="2">Scofield</option>
								</select>
		  </div>
		  
		</div>
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
  
      	
	
		<div class="row">
			<div class="col-sm-4" >
				<div class="row-fluid">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<div class="form-group">
						<label for="Lvet">VET<br>&nbsp;</label>
						<input class="form-control input-sm" id="vet" name="vet" type="number" min="0" step="any"  style="width: 80px;" onkeydown="CalculosVET(event)" required/>   
					</div>
					&nbsp;
					<div class="form-group">
						<label for="Lveta">VET  + Actividad<br>fisica</label>
						<input class="form-control input-sm" id="veta" name="veta" type="number" min="0" step="any"  style="width: 80px;" />   
					</div>
				</div>
				<div class="row-fluid">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<div class="form-group">
						<label for="Ltalla">Readecuacion<br>bajo peso</label>
						<input class="form-control input-sm" id="ReadBP" name="ReadBP" type="number" min="0"  style="width: 80px;" />   
					</div>
					&nbsp;
					<div class="form-group">
						<label for="Ltalla">Readecuacion<br>sobrepeso</label>
						<input class="form-control input-sm" id="ReadSP" name="ReadSP" type="number"  min="0"  style="width: 80px;" />   
					</div>
				</div>
				<div class="row-fluid">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<div class="form-group">
						<label for="Ltalla">Readecuacion<br>obesidad</label>
						<input class="form-control input-sm" id="ReadOb" name="ReadOb" type="number"  min="0" style="width: 80px;" />   
					</div>
					&nbsp;
					<div class="form-group">
							  <label for="Lformulavet">Tipo de dieta<br></label>
							  					<select class="form-control input-sm" id="tdieta" name="tdieta" style="width: 100px;" onchange=CambioTDieta()>
													<option value="0">Personalizado</option>
													<option value="1">Dietas Estandarizadas</option>
													<option value="2">Dietas Estandarizadas Hiperproteicas</option>
													<option value="3">Dietas Estandarizadas Hipograsa</option>
												</select>
						  </div>
				</div>
			</div>
			
			<div class="col-sm-7" >
				
					<div class="table-responsive">
					<table class="table table-bordered"  style="font-size:8pt;" >
						<thead>
							<tr>
								<th>Nutrientes</th>
								<th>Porcentaje&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
								<th>Kilocalorias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
								<th>Gramos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
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
								  		% <input class="form-control input-sm" id="porCarbo" name="porCarbo" type="number" min="0"  style="width: 65px;" onkeydown="CalculoCarbo(event)" />                
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Kcal <input class="form-control input-sm" id="KcalCarbo" name="KcalCarbo"    style="width: 65px;" readonly />             
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Gramos <input class="form-control input-sm" id="grsCarbo" name="grsCarbo"  style="width: 65px;" readonly />              
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
								  		% <input class="form-control input-sm" id="porProte" name="porProte" type="number" min="0"  style="width: 65px;" onkeydown="CalculoProte(event)" />                
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Kcal <input class="form-control input-sm" id="KcalProte" name="KcalProte"   style="width: 65px;" readonly />             
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Gramos <input class="form-control input-sm" id="grsProte" name="grsProte"   style="width: 65px;" readonly />              
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
								  		% <input class="form-control input-sm" id="porGrasa" name="porGrasa" type="number"  min="0" style="width: 65px;" onkeydown="CalculoGrasa(event)"/>                
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Kcal <input class="form-control input-sm" id="KcalGrasa" name="KcalGrasa"    style="width: 65px;" readonly  />             
								  	</div>
								</td>
								<td align="center">
									<div class="form-group">
								  		Gramos <input class="form-control input-sm" id="grsGrasa" name="grsGrasa"    style="width: 65px;" readonly  />              
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
								  		%<input class="form-control input-sm" id="totalpor" name="totalpor"    style="width: 65px;" readonly  />              
								  	</div>
								</td>
								<td>
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="totalKcal" name="totalKcal"     style="width: 65px;" readonly  />              
								  	</div>
								</td>
								<td></td>
							</tr>
						</tbody>
					</table>
					</div>
				
			</div>
		</div>
	
      	
     
  
	
  </article>
  <article>
  
  <div class="panel panel-primary">
      <div class="panel-heading">Distribucion de porciones</div>
      <div class="panel-body">
  <div class="row" align="center">
				  <div id="SelKcal"></div>
			</div>     

  		<div class="table-responsive">
			<table class="table table-bordered" width="90%" style="font-size:8pt;">  
				<thead>
					<tr align="center" >
						<th colspan="6"></th>
						<th colspan="5" align="center">Distribución en tiempos de comida</th>
					</tr>
					<tr >
						<th>Grupo</th>
						<th>Porciones</th>
						<th>&nbsp;</th>
						<th>Proteinas</th>
						<th>Carbohidratos</th>
						<th>Grasas</th>
						<th>Des</th>
						<th>Ref</th>
						<th>Alm</th>
						<th>Ref</th>
						<th>Cen</th>
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
										&nbsp;<br>
								  		<input class="form-control input-sm" id="porLacteoSG" name="porLacteoSG" type="number"  min="0" style="width: 50px;" onkeydown="CalculoLacteoSinGrasa(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalLacteoSG" name="KcalLacteoSG"     style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteLacteoSG" name="ProteLacteoSG"    style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
										&nbsp;&nbsp;&nbsp;&nbsp;grs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="CarboLacteoSG" name="CarboLacteoSG"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaLacteoSG" name="GrasaLacteoSG"    style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
										&nbsp;<br>
								  		<input class="form-control input-sm" id="de1" name="de1"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ra1',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ra1" name="ra1"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('az1',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="az1" name="az1"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('rp1',event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="rp1" name="rp1"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ce1',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ce1" name="ce1"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('de2',event)" />                  
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
									&nbsp;<br>
								  		<input class="form-control input-sm" id="porLacteoE" name="porLacteoE" type="number"  min="0" style="width: 50px;" onkeydown="CalculoLacteoEntero(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalLacteoE" name="KcalLacteoE"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteLacteoE" name="ProteLacteoE"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		&nbsp;&nbsp;&nbsp;&nbsp;grs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="CarboLacteoE" name="CarboLacteoE"    style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaLacteoE" name="GrasaLacteoE"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="de2" name="de2"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ra2',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ra2" name="ra2"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('az2',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="az2" name="az2"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('rp2',event)"   />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="rp2" name="rp2"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ce2',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ce2" name="ce2"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('de3',event)"  />                  
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
									&nbsp;<br>
								  		<input class="form-control input-sm" id="porVege" name="porVege" type="number"   style="width: 50px;" min="0" onkeydown="CalculoVegetal(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalVege" name="KcalVege"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteVege" name="ProteVege"    style="width:40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		&nbsp;&nbsp;&nbsp;&nbsp;grs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="CarboVege" name="CarboVege"     style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaVege" name="GrasaVege"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="de3" name="de3"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ra3',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ra3" name="ra3"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('az3',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="az3" name="az3"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('rp3',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="rp3" name="rp3"  type="number"  style="width: 50px;" min="0"  onkeydown="desplazarse('ce3',event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ce3" name="ce3"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('de4',event)"  />                  
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
									&nbsp;<br>
								  		<input class="form-control input-sm" id="porFruta" name="porFruta" type="number" min="0"  style="width: 50px;" onkeydown="CalculoFruta(event)"/>                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalFruta" name="KcalFruta"  style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteFruta" name="ProteFruta"   style="width:40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		&nbsp;&nbsp;&nbsp;&nbsp;grs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="CarboFruta" name="CarboFruta"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaFruta" name="GrasaFruta"  style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="de4" name="de4"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ra4',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ra4" name="ra4"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('az4',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="az4" name="az4"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('rp4',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="rp4" name="rp4"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ce4',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ce4" name="ce4"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('de5',event)"  />                  
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
									&nbsp;<br>
								  		<input class="form-control input-sm" id="porCereal" name="porCereal" type="number"  min="0" style="width: 50px;" onkeydown="CalculoCereal(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalCereal" name="KcalCereal"  style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteCereal" name="ProteCereal"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		&nbsp;&nbsp;&nbsp;&nbsp;grs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="CarboCereal" name="CarboCereal"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaCereal" name="GrasaCereal"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="de5" name="de5"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ra5',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ra5" name="ra5"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('az5',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="az5" name="az5"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('rp5',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="rp5" name="rp5"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ce5',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ce5" name="ce5"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('de6',event)"  />                  
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
									&nbsp;<br>
								  		<input class="form-control input-sm" id="porCarne" name="porCarne" type="number" min="0"  style="width: 50px;" onkeydown="CalculoCarne(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalCarne" name="KcalCarne"  style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteCarne" name="ProteCarne"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		&nbsp;&nbsp;&nbsp;&nbsp;grs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="CarboCarne" name="CarboCarne"  style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaCarne" name="GrasaCarne"  style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="de6" name="de6"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ra6',event)"   />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ra6" name="ra6"  type="number"  style="width: 50px;"  min="0" onkeydown="desplazarse('az6',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="az6" name="az6"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('rp6',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="rp6" name="rp6"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ce6',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ce6" name="ce6"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('de7',event)"  />                  
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
									&nbsp;<br>
								  		<input class="form-control input-sm" id="porGrasa1" name="porGrasa1" type="number"  style="width: 50px;" min="0" onkeydown="CalculoGrasa1(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalGrasa1" name="KcalGrasa1"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteGrasa1" name="ProteGrasa1"  style="width: 40px;" readonly />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		&nbsp;&nbsp;&nbsp;&nbsp;grs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="CarboGrasa1" name="CarboGrasa1"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaGrasa1" name="GrasaGrasa1"  style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="de7" name="de7"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ra7',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ra7" name="ra7"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('az7',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="az7" name="az7"  type="number"  style="width: 50px;"  min="0" onkeydown="desplazarse('rp7',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="rp7" name="rp7"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('ce7',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ce7" name="ce7"  type="number"  style="width: 50px;" min="0" onkeydown="desplazarse('de8',event)"  />                  
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
									&nbsp;<br>
								  		<input class="form-control input-sm" id="porAzucar" name="porAzucar" type="number" min="0"  style="width: 50px;" onkeydown="CalculoAzucar(event)" />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Kcal<input class="form-control input-sm" id="KcalAzucar" name="KcalAzucar"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="ProteAzucar" name="ProteAzucar"   style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		&nbsp;&nbsp;&nbsp;&nbsp;grs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="CarboAzucar" name="CarboAzucar"    style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		grs<input class="form-control input-sm" id="GrasaAzucar" name="GrasaAzucar"    style="width: 40px;" readonly  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="de8" name="de8"  type="number" min="0" style="width: 50px;" onkeydown="desplazarse('ra8',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ra8" name="ra8"  type="number" min="0" style="width: 50px;" onkeydown="desplazarse('az8',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="az8" name="az8"  type="number" min="0" style="width: 50px;" onkeydown="desplazarse('rp8',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="rp8" name="rp8"  type="number" min="0" style="width: 50px;" onkeydown="desplazarse('ce8',event)"  />                  
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
									&nbsp;<br>
								  		<input class="form-control input-sm" id="ce8" name="ce8"  type="number" min="0" style="width: 50px;"   />                  
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
								  		Total<input class="form-control input-sm" id="TKcal" name="TKcal"  style="width: 50px;" readonly  />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Total<input class="form-control input-sm" id="TProte" name="TProte"   style="width: 40px;" readonly  />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		&nbsp;&nbsp;&nbsp;&nbsp;Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control input-sm" id="TCarbo" name="TCarbo"    style="width: 40px;" readonly  />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		Total<input class="form-control input-sm" id="TGrasa" name="TGrasa"   style="width: 40px;" readonly  />                
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
								  		<label>%</label><input class="form-control input-sm" id="TpProte" name="TpProte"   style="width: 45px;" readonly  />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		<label>%</label><input class="form-control input-sm" id="TpCarbo" name="TpCarbo"    style="width: 45px;" readonly  />                 
								  	</div>
						</td>
						<td align="center">
									<div class="form-group">
								  		<label>%</label><input class="form-control input-sm" id="TpGrasa" name="TpGrasa"  style="width: 45px;" readonly  />                
								  	</div>
						</td>
					</tr>
				</tbody>   
			</table>
		</div>
     
      
      </div>
    </div>
    


  </article>
  </br>
          <div class="row" align="center" id="Guard" >
      		<div class="form-group" >			
							<button class="btn btn-default" id="gu1" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Guardar" />Guardar</button>
							
			</div>
			</div>
			<div class="row" align="center" id="Mod" >
            <div class="form-group" >			
							<button class="btn btn-default" onclick="Modificar()" id="BtnMod">
						     <img src="../imagenes/guardado.png" width="40" height="30" title="Modificar" />Modificar</button>
							
			</div>
			<div class="form-group" >		
							<button class="btn btn-default" onclick="Eliminar()" id="BtnEl" >
						     <img src="../imagenes/eliminar.png" width="40" height="30" title="Eliminar" />Eliminar</button>	
			</form>
			<form action="ReporteDieta.jsp"   class="form-inline" role="form" target="_black">
			</div>
			
				<div class="form-group">
				    <input class="form-control input-sm" type="hidden"  name="fu" id="fu"  />
				</div>
				<div class="form-group">
					<input type="image" src="../imagenes/report.png" class="btn btn-sm" value="Generar" alt="Generar informe" title="Generar informe" style="width: 90px; height:60px;" > 									
				</div> 
			</form>
		</div>


 <script type="text/javascript">
  	var pesoL=0;
  	var talla=0;
	var idCE="";
	var SexoVET="";
	var EdadVET=0;
	var idVET="";
	
	var UsuarioSesion = "null";
	var IdUsuarioSesion = "null";
	var PerfilSesion ="null";
	
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
		
		document.cookie = "CookieUsuario=; max-age=0";
		document.cookie = "CookieIDUsuario=; max-age=0";
		document.cookie = "CookiePerfil=; max-age=0";
		
		window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
		
	}
	
  	function CargaInicio() {
		CargarHora();
		
		idCE = getUrlVars()["prodId"];
		idVET = getUrlVars()["idVET"];
		
		
		
		if(idVET!=undefined){
			CargarEdicion(idVET);
			document.getElementById("Guard").style.display = 'none';
			
		}else{
			if(idCE==undefined){
				//alert('Error reload');
			}else{
				CargarTallaPeso(idCE);
				document.getElementById("Mod").style.display = 'none';
			}
		}
		//var idCE = "1";
		VerificarSesion();
		
	}
  	function getUrlVars() {
	    var vars = {};
	    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,    
	    function(m,key,value) {
	      vars[key] = value;
	    });
	    return vars;
	  }
  	function CargarEdicion(entrada){
	    var action="CargarEdicion";
		cadena = [ 	'ID=' + entrada,'a='+action].join('&');
		$.ajax({
	        url: "../CalculosVET",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	if(data.resultado=='OK'){
	        		talla=parseFloat(data.talla);
		        	
		        	document.getElementById('peso').value  = data.peso;	
		        	pesoL=parseFloat((data.peso)*(0.453592)).toFixed(2);
		        	document.getElementById('imc3').value=data.imc;
		        	document.getElementById("ActividadFisica").value=data.ActividadFisica;
		        	document.getElementById("formulavet").value = data.FormulaVet;
		        	document.getElementById("vet").value = data.VET;
		        	document.getElementById("veta").value = data.VETAF;
		        	
		        	document.getElementById("ReadBP").value = data.RBajoPeso;
		        	document.getElementById("ReadSP").value = data.RSobrePeso;
		        	document.getElementById("ReadOb").value = data.RObesidad;
		        	
		        	document.getElementById("porCarbo").value = data.carbohidrato;
		        	document.getElementById("porProte").value = data.proteina;
		        	document.getElementById("porGrasa").value = data.grasa;
		        	document.getElementById("fu").value = entrada;
		        	CalcCarbo();
		        	CalcProte();
		        	CalcGrasa();
		        	AutoSumaKcalPor();
		        	
		        	document.getElementById("porLacteoSG").value = data.placteosg;
		        	document.getElementById("porLacteoE").value = data.placteoe;
		        	document.getElementById("porVege").value = data.pvegetal;
		        	document.getElementById("porFruta").value = data.pfruta;
		        	document.getElementById("porCereal").value = data.pcereal;
		        	document.getElementById("porCarne").value = data.pcarne;
		        	document.getElementById("porGrasa1").value = data.pgrasa;
		        	document.getElementById("porAzucar").value = data.pazucar;
		        	
		        	CalcLSG();
		        	CalcLE();
		        	CalcVeg();
		        	CalcFr();
		        	CalcCer();
		        	CalcCar();
		        	CalcGr();
		        	CalcAz();
		        	AutoSumaTotales1();
		        	//idCE=data.idCE;
		        	SexoVET=data.sexo;
		        	EdadVET=parseInt(data.edad);
		        	LlenarDistribucion(data.dist,data.total);
		        	if(data.dieta!="0"){
		        		document.getElementById("tdieta").value = data.dieta;
		        		var action="CargaDieta";
		        		var cadena = ['ID='+ data.dieta,'a='+action].join('&');
		        		CargaDietas(cadena,data.distribucion);
		        	}else{
		        		document.getElementById("tdieta").value = "0";
		        	}
		        	Bloqueo(data.USR7,data.fecha,data.nombre,data.rol);
	        	}else{
	        		alert("Error al cargar");
	        	}
	        	
	        }
		});
	}
  	function LlenarDistribucion(data,total){
  		if(total!=0){
			for(i=0;i<total;i++){
				if(data[i].comida=="Almuerzo"){
					document.getElementById("az"+data[i].Grupo).value = data[i].porcion;
				}else if(data[i].comida=="Cena"){
					document.getElementById("ce"+data[i].Grupo).value = data[i].porcion;
				}else if(data[i].comida=="Desayuno"){
					document.getElementById("de"+data[i].Grupo).value = data[i].porcion;
				}else if(data[i].comida=="Refaccion AM"){
					document.getElementById("ra"+data[i].Grupo).value = data[i].porcion;
				}else if(data[i].comida=="Refaccion PM"){
					document.getElementById("rp"+data[i].Grupo).value = data[i].porcion;
				}
			}
		}
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
			
			document.getElementById('peso').readOnly = false;
        	document.getElementById("ActividadFisica").readOnly = false;
        	document.getElementById("formulavet").readOnly = false;
        	document.getElementById("vet").readOnly = false;
        	document.getElementById("veta").readOnly = false;
        	
        	document.getElementById("ReadBP").readOnly = false;
        	document.getElementById("ReadSP").readOnly = false;
        	document.getElementById("ReadOb").readOnly = false;
        	
        	document.getElementById("porCarbo").readOnly = false;
        	document.getElementById("porProte").readOnly = false;
        	document.getElementById("porGrasa").readOnly = false;
        	document.getElementById("porLacteoSG").readOnly = false;
        	document.getElementById("porLacteoE").readOnly = false;
        	document.getElementById("porVege").readOnly = false;
        	document.getElementById("porFruta").readOnly = false;
        	document.getElementById("porCereal").readOnly = false;
        	document.getElementById("porCarne").readOnly = false;
        	document.getElementById("porGrasa1").readOnly = false;
        	document.getElementById("porAzucar").readOnly = false;
			
			document.getElementById("BtnMod").disabled = false;
			document.getElementById("BtnEl").disabled = false;
			
			document.getElementById("peso").focus();
		}else{
			
			document.getElementById('peso').readOnly = true;
        	document.getElementById("ActividadFisica").readOnly = true;
        	document.getElementById("formulavet").readOnly= true;
        	document.getElementById("vet").readOnly = true;
        	document.getElementById("veta").readOnly = true;
        	
        	document.getElementById("ReadBP").readOnly= true;
        	document.getElementById("ReadSP").readOnly = true;;
        	document.getElementById("ReadOb").readOnly = true;
        	
        	document.getElementById("porCarbo").readOnly = true;
        	document.getElementById("porProte").readOnly = true;
        	document.getElementById("porGrasa").readOnly = true;
        	document.getElementById("porLacteoSG").readOnly = true;
        	document.getElementById("porLacteoE").readOnly = true;
        	document.getElementById("porVege").readOnly = true;
        	document.getElementById("porFruta").readOnly = true;
        	document.getElementById("porCereal").readOnly = true;
        	document.getElementById("porCarne").readOnly = true;
        	document.getElementById("porGrasa1").readOnly = true;
        	document.getElementById("porAzucar").readOnly = true;
			
			document.getElementById("BtnMod").disabled = true;
			document.getElementById("BtnEl").disabled = true;
		}
	}
  	function CargarTallaPeso(entrada){
	    var action="CargarTallaPeso";
		cadena = [ 	'ID=' + entrada,'a='+action].join('&');
		$.ajax({
	        url: "../CalculosVET",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	document.getElementById('carnet').value=data.idPACIENTE;
	        	document.getElementById('nombre').value=data.nombre;
	        	document.getElementById('edad').value=data.edad;
	        	document.getElementById('sexo').value=data.sexo;
	        	document.getElementById('facultad').value=data.facultad;
	        	talla=parseFloat(data.talla);
	        	document.getElementById('peso').value  = data.peso;
	        	pesoL=parseFloat(data.peso)*(0.453592);
	        		
	        	idCE=data.idCE;
	        	SexoVET=data.sexo;
	        	EdadVET=parseInt(data.edad);
	        	GenerarRegistrosReconsulta(data.total,data.RCALCULOSVET);
	        }
		});
	}
  	function GenerarRegistrosReconsulta(total,data){
		var marcodiv='<div class="form-group"><label for="RegM">Registros de consulta</label><select class="form-control input-sm" id="RMulti" onchange=CambioRegMulti()>';
		var opciones='<option value=0>Nuevo</option>';
		if(total!=0){
			for(i=0;i<total;i++){
				opciones+='<option value='+data[i].idCALCULOS_VET+'>'+data[i].fecha+'</option>';
			}
		}
		var fin='</select></div>'
		var exa='<div class="form-group"><label for="TipoExame">Tipo de consulta</label><select class="form-control input-sm" id="TipoExamen" onchange=CambioConsulta()><option value="1">Reconsulta</option><option value="2">Primera consulta</option></select></div>';
		var componente=marcodiv+opciones+fin+exa;
		document.getElementById("RegMulti").innerHTML =componente;
		document.getElementById("peso").focus();
	}
  	function CambioConsulta(){
		var x = document.getElementById("TipoExamen").selectedIndex;
		if(x==1){
			window.location.replace("/ModuloNutricion/ExamenesNutricion/ConsultaExterna.jsp?idCE="+idCE);
		}
		
	}
  	function CambioRegMulti(){
		var valor=document.getElementById('RMulti').value;
		document.getElementById("TablaEncargado").innerHTML = "";
		if(valor!=0){
			idVET=valor;
			document.getElementById("Guard").style.display = 'none';
			document.getElementById("Mod").style.display = 'block';
			
			CargarEdicion(idVET);
		}else{
			location.reload();
		}

	}
  	function CargarHora(){
		var  today = new Date();
		var m = today.getMonth() + 1;
		var mes = (m < 10) ? '0' + m : m;
		 
		var fecha=today.getDate()+'/' +mes+'/'+today.getFullYear();

		document.getElementById('fecha').value=fecha;
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
	function Modificar(){
		var action="modificar";
	
		var variable1=validar_numerovacio('peso');
		var variable2=validar_numerovacio("imc3");
		var variable3=validar_numerovacio("ActividadFisica");
		var variable4=validar_vacio("formulavet");
		var variable5=validar_numerovacio("vet");
		var variable6=validar_numerovacio("veta");
		var variable7=validar_numerovacio("ReadBP");
		var variable8=validar_numerovacio("ReadSP");
		var variable9=validar_numerovacio("ReadOb");
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
		
		
		var variable22="";
		if(variable21!=0){
			variable22=validar_vacio("RSKcal");
		}
		var variable30=validar_numerovacio("de1");
		var variable31=validar_numerovacio("ra1");
		var variable32=validar_numerovacio("az1");
		var variable33=validar_numerovacio("rp1");
		var variable34=validar_numerovacio("ce1");
		var variable35=validar_numerovacio("de2");
		var variable36=validar_numerovacio("ra2");
		var variable37=validar_numerovacio("az2");
		var variable38=validar_numerovacio("rp2");
		var variable39=validar_numerovacio("ce2");
		
		var variable40=validar_numerovacio("de3");
		var variable41=validar_numerovacio("ra3");
		var variable42=validar_numerovacio("az3");
		var variable43=validar_numerovacio("rp3");
		var variable44=validar_numerovacio("ce3");
		var variable45=validar_numerovacio("de4");
		var variable46=validar_numerovacio("ra4");
		var variable47=validar_numerovacio("az4");
		var variable48=validar_numerovacio("rp4");
		var variable49=validar_numerovacio("ce4");
		
		var variable50=validar_numerovacio("de5");
		var variable51=validar_numerovacio("ra5");
		var variable52=validar_numerovacio("az5");
		var variable53=validar_numerovacio("rp5");
		var variable54=validar_numerovacio("ce5");
		var variable55=validar_numerovacio("de6");
		var variable56=validar_numerovacio("ra6");
		var variable57=validar_numerovacio("az6");
		var variable58=validar_numerovacio("rp6");
		var variable59=validar_numerovacio("ce6");
		
		var variable60=validar_numerovacio("de7");
		var variable61=validar_numerovacio("ra7");
		var variable62=validar_numerovacio("az7");
		var variable63=validar_numerovacio("rp7");
		var variable64=validar_numerovacio("ce7");
		var variable65=validar_numerovacio("de8");
		var variable66=validar_numerovacio("ra8");
		var variable67=validar_numerovacio("az8");
		var variable68=validar_numerovacio("rp8");
		var variable69=validar_numerovacio("ce8");
		
		if((idVET!=undefined)&&(idVET!="")&&(variable2!="0")){
			var cadena = ['ID='+ idVET,'a='+action
					      	,"p1="+variable1,"p2="+variable2,"p3="+variable3,"p4="+variable4,"p5="+variable5
					      	,"p6="+variable6,"p7="+variable7,"p8="+variable8,"p9="+variable9,"p10="+variable10
					      	,"p11="+variable11,"p12="+variable12,"p13="+variable13,"p14="+variable14,"p15="+variable15
					      	,"p16="+variable16,"p17="+variable17,"p18="+variable18,"p19="+variable19,"p20="+variable20
					      	,"p21="+variable21,"p22="+variable22
					      	,"p30="+variable30,"p31="+variable31,"p32="+variable32,"p33="+variable33,"p34="+variable34
					      	,"p35="+variable35,"p36="+variable36,"p37="+variable37,"p38="+variable38,"p39="+variable39
					      	,"p40="+variable40,"p41="+variable41,"p42="+variable42,"p43="+variable43,"p44="+variable44
					      	,"p45="+variable45,"p46="+variable46,"p47="+variable47,"p48="+variable48,"p49="+variable49
					      	,"p50="+variable50,"p51="+variable51,"p52="+variable52,"p53="+variable53,"p54="+variable54
					      	,"p55="+variable55,"p56="+variable56,"p57="+variable57,"p58="+variable58,"p59="+variable59
					      	,"p60="+variable60,"p61="+variable61,"p62="+variable62,"p63="+variable63,"p64="+variable64
					      	,"p65="+variable65,"p66="+variable66,"p67="+variable67,"p68="+variable68,"p69="+variable69].join('&');
					enviar_datos(cadena);
		}else{
			alert("Error al guardar, revise que los campos esten completos");
		}
		
			         	

		
	}
	function Eliminar(){
		var action="eliminar";
		if((idVET!=undefined)&&(idVET!="")){
			var cadena = ['ID='+ idVET,'a='+action].join('&');
	        		enviar_datos(cadena);
		}
		else{
			alert("Error al eliminar");
		}
	}
  	function Guardar(){
		var action="guardar";
		
		var variable0=IdUsuarioSesion;
		var variable1=validar_numerovacio('peso');
		var variable2=validar_numerovacio("imc3");
		var variable3=validar_numerovacio("ActividadFisica");
		var variable4=validar_vacio("formulavet");
		var variable5=validar_numerovacio("vet");
		var variable6=validar_numerovacio("veta");
		var variable7=validar_numerovacio("ReadBP");
		var variable8=validar_numerovacio("ReadSP");
		var variable9=validar_numerovacio("ReadOb");
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
		
		
		var variable22="";
		if(variable21!=0){
			variable22=validar_vacio("RSKcal");
		}
		var variable30=validar_numerovacio("de1");
		var variable31=validar_numerovacio("ra1");
		var variable32=validar_numerovacio("az1");
		var variable33=validar_numerovacio("rp1");
		var variable34=validar_numerovacio("ce1");
		var variable35=validar_numerovacio("de2");
		var variable36=validar_numerovacio("ra2");
		var variable37=validar_numerovacio("az2");
		var variable38=validar_numerovacio("rp2");
		var variable39=validar_numerovacio("ce2");
		
		var variable40=validar_numerovacio("de3");
		var variable41=validar_numerovacio("ra3");
		var variable42=validar_numerovacio("az3");
		var variable43=validar_numerovacio("rp3");
		var variable44=validar_numerovacio("ce3");
		var variable45=validar_numerovacio("de4");
		var variable46=validar_numerovacio("ra4");
		var variable47=validar_numerovacio("az4");
		var variable48=validar_numerovacio("rp4");
		var variable49=validar_numerovacio("ce4");
		
		var variable50=validar_numerovacio("de5");
		var variable51=validar_numerovacio("ra5");
		var variable52=validar_numerovacio("az5");
		var variable53=validar_numerovacio("rp5");
		var variable54=validar_numerovacio("ce5");
		var variable55=validar_numerovacio("de6");
		var variable56=validar_numerovacio("ra6");
		var variable57=validar_numerovacio("az6");
		var variable58=validar_numerovacio("rp6");
		var variable59=validar_numerovacio("ce6");
		
		var variable60=validar_numerovacio("de7");
		var variable61=validar_numerovacio("ra7");
		var variable62=validar_numerovacio("az7");
		var variable63=validar_numerovacio("rp7");
		var variable64=validar_numerovacio("ce7");
		var variable65=validar_numerovacio("de8");
		var variable66=validar_numerovacio("ra8");
		var variable67=validar_numerovacio("az8");
		var variable68=validar_numerovacio("rp8");
		var variable69=validar_numerovacio("ce8");
		
		if((idCE!=undefined)&&(idCE!="")&&(variable2!="0")){
			var cadena = ['ID='+ idCE,'a='+action,'p0='+variable0
					      	,"p1="+variable1,"p2="+variable2,"p3="+variable3,"p4="+variable4,"p5="+variable5
					      	,"p6="+variable6,"p7="+variable7,"p8="+variable8,"p9="+variable9,"p10="+variable10
					      	,"p11="+variable11,"p12="+variable12,"p13="+variable13,"p14="+variable14,"p15="+variable15
					      	,"p16="+variable16,"p17="+variable17,"p18="+variable18,"p19="+variable19,"p20="+variable20
					      	,"p21="+variable21,"p22="+variable22
					      	,"p30="+variable30,"p31="+variable31,"p32="+variable32,"p33="+variable33,"p34="+variable34
					      	,"p35="+variable35,"p36="+variable36,"p37="+variable37,"p38="+variable38,"p39="+variable39
					      	,"p40="+variable40,"p41="+variable41,"p42="+variable42,"p43="+variable43,"p44="+variable44
					      	,"p45="+variable45,"p46="+variable46,"p47="+variable47,"p48="+variable48,"p49="+variable49
					      	,"p50="+variable50,"p51="+variable51,"p52="+variable52,"p53="+variable53,"p54="+variable54
					      	,"p55="+variable55,"p56="+variable56,"p57="+variable57,"p58="+variable58,"p59="+variable59
					      	,"p60="+variable60,"p61="+variable61,"p62="+variable62,"p63="+variable63,"p64="+variable64
					      	,"p65="+variable65,"p66="+variable66,"p67="+variable67,"p68="+variable68,"p69="+variable69].join('&');
					enviar_datos(cadena);
		}else{
			alert("Error al guardar, revise que los campos esten completos");
		}
		
			         	

		
	}
  	function enviar_datos(datos){
		var resultado="";

		$.ajax({
	        url: "../CalculosVET",
	        data: datos,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	if(data.resultado=='OK'){
	        		
	        		if(data.mensaje=="1"){
	        			alert("Registro almacenado");
	        			idVET=data.IDV;
	        			document.getElementById("Guard").style.display = 'none';
	        			document.getElementById("Mod").style.display = 'block';
	        			document.getElementById("fu").value = idVET;
	        		}
	        		else if(data.mensaje=="2"){
	        			alert("Registro modificado");
	        		}
	        		else if(data.mensaje=="3"){
	        			alert("Registro eliminado");
	        			location.reload();
	        		}
	        		
	        	}else{
	        		alert("ERROR al almacenar en el servidor");
	        	}
	        	
	        	
	        }
		});
	}
  	
  	document.getElementById('peso').onkeypress = function (e) {
        if (e.which === 13) {
        	
        	var auxpeso=(parseFloat(validar_numerovacio('peso')))*(0.453592);
        	var auxtalla=talla*talla;
		    var imc4=auxpeso/auxtalla;
		    document.getElementById('imc3').value=imc4.toFixed(2);
            document.getElementById("ActividadFisica").focus();
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
    document.getElementById('tdieta').onkeydown = function (e) {
        if (e.which === 13) {
        	var seleccion=document.getElementById("tdieta").value;
        	if(seleccion=="0"){
        		document.getElementById("porCarbo").focus();
        	}else{
        		document.getElementById("RSKcal").focus();
        	}
            
            return false;
        }
    };
    document.getElementById('ce8').onkeydown = function (e) {
        if (e.which === 13) {
            document.getElementById("gu1").focus();
            return false;
        }
    };
    function CalculoAdecuacion(){
    	var TpProte=(parseFloat( validar_numerovacio('TProte'))/parseFloat( validar_numerovacio('grsProte')))*100;
    	var TpCarbo=(parseFloat( validar_numerovacio('TCarbo'))/parseFloat( validar_numerovacio('grsCarbo')))*100;
    	var TpGrasa=(parseFloat( validar_numerovacio('TGrasa'))/parseFloat( validar_numerovacio('grsGrasa')))*100;
    	
    	
    	document.getElementById('TpProte').value=TpProte.toFixed(2);
    	document.getElementById('TpCarbo').value=TpCarbo.toFixed(2);
    	document.getElementById('TpGrasa').value=TpGrasa.toFixed(2);
    	
    }
    function AutoSumaTotales1(){
    	var TKcal =  parseFloat(validar_numerovacio('KcalAzucar'))+ parseFloat(validar_numerovacio('KcalGrasa1'))+ parseFloat(validar_numerovacio('KcalCarne'))+ parseFloat(validar_numerovacio('KcalCereal'))+ parseFloat(validar_numerovacio('KcalFruta'))+ parseFloat(validar_numerovacio('KcalVege'))+ parseFloat(validar_numerovacio('KcalLacteoE'))+ parseFloat(validar_numerovacio('KcalLacteoSG'));
    	var TProte = parseFloat(validar_numerovacio('ProteAzucar'))+parseFloat(validar_numerovacio('ProteGrasa1'))+parseFloat(validar_numerovacio('ProteCarne'))+parseFloat(validar_numerovacio('ProteCereal'))+parseFloat(validar_numerovacio('ProteFruta'))+parseFloat(validar_numerovacio('ProteVege'))+parseFloat(validar_numerovacio('ProteLacteoE'))+parseFloat(validar_numerovacio('ProteLacteoSG'));
    	var TCarbo = parseFloat(validar_numerovacio('CarboAzucar'))+parseFloat(validar_numerovacio('CarboGrasa1'))+parseFloat(validar_numerovacio('CarboCarne'))+parseFloat(validar_numerovacio('CarboCereal'))+parseFloat(validar_numerovacio('CarboFruta'))+parseFloat(validar_numerovacio('CarboVege'))+parseFloat(validar_numerovacio('CarboLacteoE'))+parseFloat(validar_numerovacio('CarboLacteoSG'));
    	var TGrasa = parseFloat(validar_numerovacio('GrasaAzucar'))+parseFloat(validar_numerovacio('GrasaGrasa1'))+parseFloat(validar_numerovacio('GrasaCarne'))+parseFloat(validar_numerovacio('GrasaCereal'))+parseFloat(validar_numerovacio('GrasaFruta'))+parseFloat(validar_numerovacio('GrasaVege'))+parseFloat(validar_numerovacio('GrasaLacteoE'))+parseFloat(validar_numerovacio('GrasaLacteoSG'));
    	document.getElementById('TKcal').value=TKcal ;
    	document.getElementById('TProte').value=TProte;
    	document.getElementById('TCarbo').value=TCarbo;
    	document.getElementById('TGrasa').value=TGrasa;
    	CalculoAdecuacion();
    }
    function CalcAz(){
    	var KcalLacteoSG=0;
    	var ProteLacteoSG=0;
    	var CarboLacteoSG=0;
    	var GrasaLacteoSG=0;
    	var porLacteoSG = document.getElementById('porAzucar').value;
    	if(porLacteoSG!=""){
    		KcalLacteoSG = parseFloat(porLacteoSG)*40;
    		CarboLacteoSG=parseFloat(porLacteoSG)*10;
    		ProteLacteoSG=parseFloat(porLacteoSG)*0;
    		GrasaLacteoSG=parseFloat(porLacteoSG)*0;
    	}
    	document.getElementById('KcalAzucar').value=KcalLacteoSG;
    	document.getElementById('CarboAzucar').value=CarboLacteoSG;
    	document.getElementById('ProteAzucar').value=ProteLacteoSG;
    	document.getElementById('GrasaAzucar').value=GrasaLacteoSG;
    }
    function CalculoAzucar(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	CalcAz();
        	AutoSumaTotales1();
        	document.getElementById("de1").focus();
        }
    }
    function CalcGr(){
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
    }
    function CalculoGrasa1(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	CalcGr();
        	AutoSumaTotales1();
        	document.getElementById("porAzucar").focus();
        }
    }
    function CalcCar(){
    	var KcalLacteoSG=0;
    	var ProteLacteoSG=0;
    	var CarboLacteoSG=0;
    	var GrasaLacteoSG=0;
    	var porLacteoSG = document.getElementById('porCarne').value;
    	if(porLacteoSG!=""){
    		KcalLacteoSG = parseFloat(porLacteoSG)*75;
    		CarboLacteoSG=parseFloat(porLacteoSG)*0;
    		ProteLacteoSG=parseFloat(porLacteoSG)*7;
    		GrasaLacteoSG=parseFloat(porLacteoSG)*5;
    	}
    	document.getElementById('KcalCarne').value=KcalLacteoSG;
    	document.getElementById('CarboCarne').value=CarboLacteoSG;
    	document.getElementById('ProteCarne').value=ProteLacteoSG;
    	document.getElementById('GrasaCarne').value=GrasaLacteoSG;
    }
    function CalculoCarne(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	CalcCar();
        	AutoSumaTotales1();
        	document.getElementById("porGrasa1").focus();
        }
    }
    function CalcCer(){
    	var KcalLacteoSG=0;
    	var ProteLacteoSG=0;
    	var CarboLacteoSG=0;
    	var GrasaLacteoSG=0;
    	var porLacteoSG = document.getElementById('porCereal').value;
    	if(porLacteoSG!=""){
    		KcalLacteoSG = parseFloat(porLacteoSG)*70;
    		CarboLacteoSG=parseFloat(porLacteoSG)*15;
    		ProteLacteoSG=parseFloat(porLacteoSG)*2;
    		GrasaLacteoSG=parseFloat(porLacteoSG)*0;
    	}
    	document.getElementById('KcalCereal').value=KcalLacteoSG;
    	document.getElementById('ProteCereal').value=ProteLacteoSG;
    	document.getElementById('CarboCereal').value=CarboLacteoSG;
    	document.getElementById('GrasaCereal').value=GrasaLacteoSG;
    }
    function CalculoCereal(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	CalcCer();
        	AutoSumaTotales1();
        	document.getElementById("porCarne").focus();
        }
    }
    function CalcFr(){
    	var KcalLacteoSG=0;
    	var ProteLacteoSG=0;
    	var CarboLacteoSG=0;
    	var GrasaLacteoSG=0;
    	var porLacteoSG = document.getElementById('porFruta').value;
    	if(porLacteoSG!=""){
    		KcalLacteoSG = parseFloat(porLacteoSG)*60;
    		CarboLacteoSG=parseFloat(porLacteoSG)*15;
    		ProteLacteoSG=parseFloat(porLacteoSG)*0;
    		GrasaLacteoSG=parseFloat(porLacteoSG)*0;
    	}
    	document.getElementById('KcalFruta').value=KcalLacteoSG;
    	document.getElementById('ProteFruta').value=ProteLacteoSG;
    	document.getElementById('CarboFruta').value=CarboLacteoSG;
    	document.getElementById('GrasaFruta').value=GrasaLacteoSG;
    }
    function CalculoFruta(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	CalcFr();
        	AutoSumaTotales1();
        	document.getElementById("porCereal").focus();
        }
    }
    function CalcVeg(){
    	var KcalLacteoSG=0;
    	var ProteLacteoSG=0;
    	var CarboLacteoSG=0;
    	var GrasaLacteoSG=0;
    	var porLacteoSG = document.getElementById('porVege').value;
    	if(porLacteoSG!=""){
    		KcalLacteoSG = parseFloat(porLacteoSG)*25;
    		CarboLacteoSG=parseFloat(porLacteoSG)*4;
    		ProteLacteoSG=parseFloat(porLacteoSG)*2;
    		GrasaLacteoSG=parseFloat(porLacteoSG)*0;
    	}
    	document.getElementById('KcalVege').value=KcalLacteoSG;
    	document.getElementById('CarboVege').value=CarboLacteoSG;
    	document.getElementById('ProteVege').value=ProteLacteoSG;
    	document.getElementById('GrasaVege').value=GrasaLacteoSG;
    }
    function CalculoVegetal(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	CalcVeg();
        	AutoSumaTotales1();
        	document.getElementById("porFruta").focus();
        }
    }
    function CalcLE(){
    	var KcalLacteoSG=0;
    	var ProteLacteoSG=0;
    	var CarboLacteoSG=0;
    	var GrasaLacteoSG=0;
    	var porLacteoSG = document.getElementById('porLacteoE').value;
    	if(porLacteoSG!=""){
    		KcalLacteoSG = parseFloat(porLacteoSG)*150;
    		CarboLacteoSG=parseFloat(porLacteoSG)*12;
    		ProteLacteoSG=parseFloat(porLacteoSG)*9;
    		GrasaLacteoSG=parseFloat(porLacteoSG)*8;
    	}
    	document.getElementById('KcalLacteoE').value=KcalLacteoSG;
    	document.getElementById('CarboLacteoE').value=CarboLacteoSG;
    	document.getElementById('ProteLacteoE').value=ProteLacteoSG;
    	document.getElementById('GrasaLacteoE').value=GrasaLacteoSG;
    }
    function CalculoLacteoEntero(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	CalcLE();
        	AutoSumaTotales1();
        	document.getElementById("porVege").focus();
        }
    }
    function CalcLSG(){
    	var KcalLacteoSG=0;
    	var ProteLacteoSG=0;
    	var CarboLacteoSG=0;
    	var GrasaLacteoSG=0;
    	var porLacteoSG = document.getElementById('porLacteoSG').value;
    	if(porLacteoSG!=""){
    		KcalLacteoSG = parseFloat(porLacteoSG)*95;
    		CarboLacteoSG=parseFloat(porLacteoSG)*12;
    		ProteLacteoSG=parseFloat(porLacteoSG)*9;
    		GrasaLacteoSG=parseFloat(porLacteoSG)*2;
    	}
    	document.getElementById('KcalLacteoSG').value=KcalLacteoSG;
    	document.getElementById('CarboLacteoSG').value=CarboLacteoSG;
    	document.getElementById('ProteLacteoSG').value=ProteLacteoSG;
    	document.getElementById('GrasaLacteoSG').value=GrasaLacteoSG;
    }
    function CalculoLacteoSinGrasa(event){
    	var char = event.which || event.keyCode;
        if(char == 13){
        	CalcLSG();
        	AutoSumaTotales1();
        	document.getElementById("porLacteoE").focus();
        }
    }
    
    function AutoSumaKcalPor(){
    	var porCarbo = parseFloat(validar_numerovacio('porCarbo'));
    	var porProte = parseFloat(validar_numerovacio('porProte'));
    	var porGrasa = parseFloat(validar_numerovacio('porGrasa'));
    	
    	var KcalCarbo = parseFloat(validar_numerovacio('KcalCarbo'));
    	var KcalProte = parseFloat(validar_numerovacio('KcalProte'));
    	var KcalGrasa = parseFloat(validar_numerovacio('KcalGrasa'));
    	
    	var totalpor = porCarbo + porProte + porGrasa;
    	var totalKcal = KcalCarbo + KcalProte + KcalGrasa;
    	
    	document.getElementById('totalpor').value  = totalpor.toFixed(2);
    	document.getElementById('totalKcal').value  = totalKcal.toFixed(2);
    }
    
    function CalcGrasa(){
    	var porCarbo = parseFloat(validar_numerovacio('porGrasa'));
    	var IMC=parseFloat(validar_numerovacio("imc3"));
    	var veta = parseFloat(validar_numerovacio("veta"));
    	var ReadBP=parseFloat(validar_numerovacio('ReadBP'));
    	var ReadSP=parseFloat(validar_numerovacio('ReadSP'));
    	var ReadOb=parseFloat(validar_numerovacio('ReadOb'));
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
    	document.getElementById('KcalGrasa').value  = KcalCarbo.toFixed(2);
    	document.getElementById('grsGrasa').value  = grsCarbo.toFixed(2);
    }
    function CalculoGrasa(event){
    	var char = event.which || event.keyCode;
        if(char == 13){ 
        	CalcGrasa();
        	AutoSumaKcalPor();
        	var seleccion=document.getElementById("tdieta").value;
        	if(seleccion=="0"){
        		document.getElementById("porLacteoSG").focus();
        	}else{
        		document.getElementById("RSKcal").focus();
        	}
        	
        }
    }
    function CalcProte(){
    	var porCarbo = parseFloat(validar_numerovacio('porProte'));
    	var IMC=parseFloat(validar_numerovacio("imc3"));
    	var veta = parseFloat(validar_numerovacio("veta"));
    	var ReadBP=parseFloat(validar_numerovacio('ReadBP'));
    	var ReadSP=parseFloat(validar_numerovacio('ReadSP'));
    	var ReadOb=parseFloat(validar_numerovacio('ReadOb'));
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
    	document.getElementById('KcalProte').value  = KcalCarbo.toFixed(2);
    	
    	document.getElementById('grsProte').value  = grsCarbo.toFixed(2);
    }
    function CalculoProte(event){
    	var char = event.which || event.keyCode;
        if(char == 13){ 
        	CalcProte();
        	AutoSumaKcalPor();
        	document.getElementById("porGrasa").focus();
        	
        }
    }
    function CalcCarbo(){
    	var porCarbo = parseFloat(validar_numerovacio('porCarbo'));
    	var IMC=parseFloat(validar_numerovacio("imc3"));
    	var veta = parseFloat(validar_numerovacio("veta"));
    	var ReadBP=parseFloat(validar_numerovacio('ReadBP'));
    	var ReadSP=parseFloat(validar_numerovacio('ReadSP'));
    	var ReadOb=parseFloat(validar_numerovacio('ReadOb'));
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
    	document.getElementById('KcalCarbo').value  = KcalCarbo.toFixed(2);
    	document.getElementById('grsCarbo').value  = grsCarbo.toFixed(2);
    	
    }
    function CalculoCarbo(event){
    	var char = event.which || event.keyCode;
        if(char == 13){ 
        	CalcCarbo();
        	AutoSumaKcalPor();
        	document.getElementById("porProte").focus();
        }
    	
    }
    function ReadecuacionPeso(actividad){
    	var ReadBP=0;
    	var ReadSP=0;
    	var ReadOb=0;
    	var IMC=parseFloat(validar_numerovacio("imc3"));
    	
    	if(IMC < 18.5){
    		ReadBP = actividad + 250;
    	}else if(IMC > 24.99 && IMC < 30){
    		ReadSP = actividad - 250;
    	}else if(IMC > 29.99){
    		ReadOb=actividad - 500;
    	}
    	document.getElementById('ReadBP').value  = ReadBP.toFixed(2);
    	document.getElementById('ReadSP').value  = ReadSP.toFixed(2);
    	document.getElementById('ReadOb').value  = ReadOb.toFixed(2);
    	document.getElementById("tdieta").focus();
    }
   	function CalcularVETMaxActivFisica(vet){
   		//var OpcionActividad=document.getElementById("ActividadFisica");
    	//var Actividad = OpcionActividad.options[OpcionActividad.selectedIndex].value;
    	var Actividad = validar_numerovacio("ActividadFisica");
    	var ActividadFisica = parseFloat(Actividad);
    	
    	var operacion=ActividadFisica*vet;
    	document.getElementById('veta').value  = operacion.toFixed(2);
    	ReadecuacionPeso(operacion);
   	}
    function CalculosVET(event){
    	var char = event.which || event.keyCode;
        if(char == 13){ 
        	//var SexoVET="Masculino";
        	//var EdadVET=23;
        	var PesoKG=0;
        	var FormulaVET="";
        	var VET=0;
        	//var talla=1.6;
        	PesoKG=(parseInt(validar_numerovacio("peso")))*(0.453592);
        	var FormulaVET=document.getElementById("formulavet");
        	var OpcionFormula = FormulaVET.options[FormulaVET.selectedIndex].value;
        	
        	if(OpcionFormula==1){ //Formula Harris Benedict
        		if(SexoVET=="Masculino"){
        			VET= 66.47 + (13.75*PesoKG)+ (5*talla*100)- (6.66*EdadVET);
        		}else{//Femenino
        			VET= 655.1 + (9.56*PesoKG)+ (1.85*talla*100)- (4.68*EdadVET);
        		}
        	}else{ // Formula Scofield
				if(SexoVET=="Masculino"){
        			if(EdadVET >17 && EdadVET <31){
        				VET= (15.057*PesoKG) + 692.2;
		
        			}else if(EdadVET >30 && EdadVET <61){
        				VET= (11.472*PesoKG) + 873.1;
			
        			}else if(EdadVET >59){
        				VET= (11.711*PesoKG) + 587.7;

        			}
        		}else{//Femenino
        			if(EdadVET >17 && EdadVET <31){
        				VET= (14.818*PesoKG) + 486.6;

        			}else if(EdadVET >30 && EdadVET <61){
        				VET= (8.126*PesoKG) + 845.6;

        			}else if(EdadVET >59){
        				VET= (9.082*PesoKG) + 658.5;
        			}
        		}
        	}
        	document.getElementById('vet').value  = VET.toFixed(2);
        	CalcularVETMaxActivFisica(VET);
        	document.getElementById("tdieta").focus();
        	
        }
    	
    }
    function desplazarse(entrada,e){
    	if (e.which === 13) {
    		document.getElementById(entrada).focus();
    	}
    	
    }
    function CambioTDieta(){
    	var seleccion=document.getElementById("tdieta").value;
    	if(seleccion=="0"){
    		document.getElementById("SelKcal").innerHTML="";
    		document.getElementById('porCarbo').readOnly= false;
    		document.getElementById('porProte').readOnly= false;
    		document.getElementById('porGrasa').readOnly= false;
    		
    		document.getElementById("porCarbo").readOnly = false;
        	document.getElementById("porProte").readOnly = false;
        	document.getElementById("porGrasa").readOnly = false;
        	document.getElementById("porLacteoSG").readOnly = false;
        	document.getElementById("porLacteoE").readOnly = false;
        	document.getElementById("porVege").readOnly = false;
        	document.getElementById("porFruta").readOnly = false;
        	document.getElementById("porCereal").readOnly = false;
        	document.getElementById("porCarne").readOnly = false;
        	document.getElementById("porGrasa1").readOnly = false;
        	document.getElementById("porAzucar").readOnly = false;
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
	        		
	        		CalcCarbo();
		        	CalcProte();
		        	CalcGrasa();
		        	AutoSumaKcalPor();
		        	GenerarSelKcal(data.total,data.columna);
					
		        	document.getElementById('porCarbo').readOnly= true;
	        		document.getElementById('porProte').readOnly= true;
	        		document.getElementById('porGrasa').readOnly= true;
	        		
	        		document.getElementById("porCarbo").readOnly = true;
		        	document.getElementById("porProte").readOnly = true;
		        	document.getElementById("porGrasa").readOnly = true;
		        	document.getElementById("porLacteoSG").readOnly = true;
		        	document.getElementById("porLacteoE").readOnly = true;
		        	document.getElementById("porVege").readOnly = true;
		        	document.getElementById("porFruta").readOnly = true;
		        	document.getElementById("porCereal").readOnly = true;
		        	document.getElementById("porCarne").readOnly = true;
		        	document.getElementById("porGrasa1").readOnly = true;
		        	document.getElementById("porAzucar").readOnly = true;
		        	if(sel!="-1"){
		        		document.getElementById('RSKcal').value  = sel;
		        	}
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
		        	
		        	CalcLSG();
		        	CalcLE();
		        	CalcVeg();
		        	CalcFr();
		        	CalcCer();
		        	CalcCar();
		        	CalcGr();
		        	CalcAz();
		        	AutoSumaTotales1();
		        	
		        	
	        	}
	        	
	        	
	        }
		});
	}
    
    function VerRegistros(){
    	window.location.replace("/ModuloNutricion/TablasNutricion/RegistrosCalculosVET.jsp");
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