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
	
	   
	    
	   <link href="../jquery/menuacordeon/css/dcaccordion.css" rel="stylesheet" type="text/css" />
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.cookie.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.hoverIntent.minified.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.dcjqaccordion.2.7.min.js'></script>
    	
    	<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />
    
    	<style type="text/css">
			#titulos { color: black; word-spacing: -5 px; letter-spacing: 3px;}
			
			.foto-inicio{	width:100%; height:100px; 	}
			
			.page-header {
			    padding-bottom: 9px;
			    margin: 0px 0 0px;
			}
			.btn-default {
			    color: #333;
			    background-color: #D8D6D6;
			    border-color: #ccc;
			}
		</style>
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:10pt; }
       	
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
			});
    	</script>
    	
    	<script type="text/javascript" src="../jquery/flexigrid/jquery.js"></script>
    	<link rel="stylesheet" type="text/css" href="../CSS/flexigrid/flexigrid/flexigrid.css">

<script type="text/javascript" src="../jquery/flexigrid/flexigrid.js"></script>

<style>

	body
		{
		font-family: Arial, Helvetica, sans-serif;
		font-size: 12px;
		}
		
	.flexigrid div.fbutton .add
		{
			background: url(../css/flexigrid/images/add.png) no-repeat center left;
		}	

	.flexigrid div.fbutton .delete
		{
			background: url(../css/flexigrid/images/close.png) no-repeat center left;
		}	
	 
	

		
</style>

        </head>

        <body onload="CargaInicio()">
       
        <div class="container">
         <div class="panel2 panel-body">
        <header class="row col-sm-12">
        <div class="page-header">
        
     <form class="form-inline">
  
  <div class="form-group">
    <div style="float:right;">
		<a href="http://usalud.usac.edu.gt/index.jsp">
		<img src="../imagenes/logousac.png" width="300px"  >
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
		<img src="../imagenes/logousalud2.gif" width="300px"  onmouseout="this.src=&#39;../imagenes/logousalud2.gif&#39;;" onmouseover="this.src=&#39;../imagenes/logousac.png&#39;;">
	</a>
	</div> 
  </div>
  
</form>
	
       		 
        </div>
        </header>
        
        <div class="row col-sm-12">
        
        <nav class="col-sm-2">
        <ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3">
        <li> <a href="#"> <span class="glyphicon glyphicon-home"></span> Manejo de Trifoliar </a> </li>
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
        <h3 class="panel-title">Registro de Alimentos</h3>
        </div>
        <div class="panel-body">
	
	
	
	<div class="table-responsive">
	<table class="table" align="center">
	<tr>
	<td>
	<table id="flex1" style="display:none" ></table>
	</td>
	</tr>
	</table>
	</div>
	<label id="mensajes">.</label>
	 <form action="../RegistroAlimento" method="post" class="form-inline" role="form" onsubmit="return false">
	 <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Codigo</label>
		<input class="form-control" name="codigo" id="codigo" type="number" readonly/>
	  </div>
	 </div>
	<div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Nombre</label>
		<input class="form-control" name="nombre" id="nombre"  required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Calorias</label>
		<input class="form-control" name="calorias" id="calorias" type="number" required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Grupo</label>
		 <select class="form-control" id="Grupo">
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
     </div>
     <div class="row" align="center" id="guard" >
      		<div class="form-group" >			
							<button class="btn btn-default btn-lg" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="50" height="40" title="Guardar" />Guardar</button>
							
			</div>
		</div>
     <div class="row" align="center" id="ini" >
      		<div class="form-group" >			
							<button class="btn btn-default btn-lg" onclick="NuevoRegistro()" >
						     <img src="../imagenes/nuevo.png" width="50" height="40" title="Nuevo" />Nuevo</button>
							
			</div>
			<div class="form-group" >		
							<button class="btn btn-default btn-lg" onclick="EliminarRegistro()" >
						     <img src="../imagenes/eliminar.png" width="50" height="40" title="Eliminar" />Eliminar</button>
							
			</div>
		</div>
      <div class="row" align="center" id="Mod" >
      		<div class="form-group" >			
							<button class="btn btn-default btn-lg" onclick="NuevoRegistro()" >
						     <img src="../imagenes/nuevo.png" width="50" height="40" title="Nuevo" />Nuevo</button>
							
			</div>
            <div class="form-group" >			
							<button class="btn btn-default btn-lg" onclick="Modificar()" >
						     <img src="../imagenes/guardado.png" width="50" height="40" title="Modificar" />Modificar</button>
							
			</div>
			<div class="form-group" >		
							<button class="btn btn-default btn-lg" onclick="EliminarRegistro()" >
						     <img src="../imagenes/eliminar.png" width="50" height="40" title="Eliminar" />Eliminar</button>
							
			</div>
		</div>
	 	
	 </form>
	

<script type="text/javascript">
var idALIMENTO=0;
$("#flex1").flexigrid
(
{
url: '../TablaAlimento',
method: 'POST',
dataType: 'xml',
colModel : [
	{display: 'Seleccionar', name : 'chktradio', width : 90, sortable : false, align: 'left'},
	{display: 'ID', name : 'idALIMENTO', width : 50, sortable : true, align: 'center'},
	{display: 'nombre', name : 'nombre', width : 80, sortable : true, align: 'left'},
	{display: 'grupo', name : 'grupo', width : 120, sortable : true, align: 'left'}
	],
searchitems : [
	{display: 'ID', name : 'idALIMENTO', isdefault: true},
	{display: 'nombre', name : 'A.nombre'},
	{display: 'grupo', name : 'G.nombre'}
	],
sortname: "idALIMENTO",
sortorder: "asc",
usepager: true,
title: 'Alimento',
useRp: true,
rp: 10,
showTableToggleBtn: true,
width: 800,
onSubmit: addFormData,
height: 250,
}
);




//This function adds paramaters to the post of flexigrid. You can add a verification as well by return to false if you don't want flexigrid to submit			
function addFormData()
	{
	
	//passing a form object to serializeArray will get the valid data from all the objects, but, if the you pass a non-form object, you have to specify the input elements that the data will come from
	var dt = $('#sform').serializeArray();
	$("#flex1").flexOptions({params: dt});
	return true;
	}
function CargaInicio(){
	document.getElementById("Mod").style.display = 'none';
	document.getElementById("guard").style.display = 'none';
}
function EditarRegistro(){
	if(idALIMENTO=="0"){
		MensajeServidor(2,"Error, seleccione un registro valido");
	}else{
		//window.location.replace("/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp?MID="+idMultifasicos);
	}
}
function Guardar(){
	var nombre=document.getElementById('nombre').value;
	var caloria=document.getElementById('calorias').value;
	var grupo=document.getElementById('Grupo').value;
	if(nombre!=""&&caloria!=""&&grupo!=""){
		//alert(nombre+","+caloria+","+grupo);
		AñadirAlimentoBD(nombre,caloria,grupo);
	}else{
		MensajeServidor(2,"Error, faltan campos a ingresar");
	}
}
function Modificar(){
	var codigo=document.getElementById('codigo').value;
	var nombre=document.getElementById('nombre').value;
	var caloria=document.getElementById('calorias').value;
	var grupo=document.getElementById('Grupo').value;
	
	if(codigo!=""&&nombre!=""&&caloria!=""){
		var action="modificar";
		var cadena = ['a='+action,'codigo='+codigo,'alimento='+nombre,'caloria='+caloria,'grupo='+grupo].join('&');


		$.ajax({
	        url: "../TablaAlimento",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	if(data.resultado=='OK'){
	        		limpiartabla();
	        		MensajeServidor(1,data.descripcion);
	        	}else{
	        		MensajeServidor(2,data.descripcion);
	        	}
	        	
	        	
	        	
	        }
		});
	}else{
		MensajeServidor(2,"Error, faltan campos a ingresar");
	}
	
	
}
function AñadirAlimentoBD(alim,cal,grupo){
	var action="agregar";
	var cadena = ['a='+action,'alimento='+alim,'caloria='+cal,'grupo='+grupo].join('&');


	$.ajax({
        url: "../Alimento",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		idALIMENTO=0;
        		document.getElementById('nombre').value = "";
        		document.getElementById('calorias').value = "";
        		document.getElementById('Grupo').value = "";
        		limpiartabla();
        		MensajeServidor(1,"Registro almacenado correctamente");
        	}else{
        		MensajeServidor(2,data.descripcion);
        	}
        	
        	
        	
        }
	});
	
}
function EliminarRegistro(){
	if(idALIMENTO==0){
		MensajeServidor(2,"Error, seleccione un registro valido");		
	}
	else{
		
		var action="eliminardato";
		cadena = [ 	'idALIMENTO='   + idALIMENTO,
	             	'a='+action
	            ].join('&');
		$.ajax({
	        url: "../TablaAlimento",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		 MensajeServidor(1,data.descripcion);	
	        		 document.getElementById('codigo').value = "";
	        		 document.getElementById('nombre').value = "";
	        		 document.getElementById('calorias').value = "";
	        		 document.getElementById('Grupo').value = 1;
	        		 idALIMENTO=0;
	        		 limpiartabla();
	        	}else{
	        		MensajeServidor(2,"Error, el alimento esta siendo utilizado en otro registro y no puede ser eliminado");
	        		
	        	}
	        }
	    });
	}
	
}
function limpiartabla(){
	  
	idALIMENTO="0";
	  $('#flex1').flexReload();
}
function MensajeServidor(codigo,descripcion){
	if(codigo==1){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'green';
	}else if(codigo==2){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'red';
	}
}
function DatosSeleccionados(id,nomb,caloria,grup){
	idALIMENTO=id;
	document.getElementById('codigo').value = id;
	document.getElementById('nombre').value = nomb;
	document.getElementById('calorias').value = caloria;
	document.getElementById('Grupo').value = valorselect(grup);
	document.getElementById('mensajes').innerHTML = '';
	document.getElementById("ini").style.display = 'none';
	document.getElementById("guard").style.display = 'none';
	document.getElementById("Mod").style.display = 'block';
	
}
function NuevoRegistro(){
	idALIMENTO=0;
	document.getElementById('codigo').value = "";
	document.getElementById('nombre').value = "";
	document.getElementById('calorias').value = "";
	document.getElementById('Grupo').value = 1;
	document.getElementById("guard").style.display = 'block';
	document.getElementById("Mod").style.display = 'none';
	document.getElementById("ini").style.display = 'none';
}
function valorselect(entrada){
	var resultado=0;
	if(entrada=='Lacteos bajos en grasa'){
		resultado=1;
	}else if(entrada=='Lacteos enteros'){
		resultado=2;
	}if(entrada=='Vegetales'){
		resultado=3;
	}if(entrada=='Frutas'){
		resultado=4;
	}if(entrada=='Cereales'){
		resultado=5;
	}if(entrada=='Carnes'){
		resultado=6;
	}if(entrada=='Grasa'){
		resultado=7;
	}if(entrada=='Azucares'){
		resultado=8;
	}
	return resultado;
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