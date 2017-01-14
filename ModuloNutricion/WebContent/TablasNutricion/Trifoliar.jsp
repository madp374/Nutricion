<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        
         <link rel="stylesheet" href="../cleditor/script/jquery.cleditor.css" />
		<script src="../cleditor/script/jquery.min.js"></script>
	   <script src="../cleditor/script/jquery.cleditor.min.js"></script>
	   

	    
		
		
	    
	    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
	    
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
		<script type="text/javascript">
        $(document).ready(function ($) { $("#contenido").cleditor(); });
    </script>
	
		<script type="text/javascript">	
		
			
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
        <li> <a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/Trifoliar.jsp"> <span class="glyphicon glyphicon-home"></span> Inicio </a> </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Mantenimiento </a>
	        <ul>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/Trifoliar.jsp"> <span class="glyphicon glyphicon-home"></span> Manejo de Trifoliar </a></li>
				<li><a href="http://usalud.usac.edu.gt/ModuloNutricion/TablasNutricion/RegistroAlimento.jsp"> <span class="glyphicon glyphicon-book"></span> Registro de alimentos </a></li>
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
        </ul>
        </nav>
        
        <section class="col-sm-10">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Manejo de Trifoliares</h3>
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
	
	 <form action="../RegistroAlimento" method="post" class="form-inline" role="form" onsubmit="return false">
	 <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Codigo</label>
		<input class="form-control" name="codigo" id="codigo" type="number" readonly/>
	  </div>
	 </div>
	<div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Estado</label>
		<select class="form-control" id="estado">
													<option value="1" >Activo</option>
													<option value="2" >Inactivo</option>
													</select>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Titulo</label>
		<input class="form-control" name="titulo" id="titulo" type="text" required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Descripcion</label>
		<textarea class="form-control" id="descripcion" cols="50" rows="1" required></textarea>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Contenido</label>
		
		<textarea class="form-control" id="contenido" cols="50" rows="5"></textarea>
		
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
	  <table>
	  	<tr>
	  		<td>
	  			<label class="form-control" for="NCarnet" style="width: 150px;" >Archivo PDF</label>
	  		</td>
	  		<td>
	  			&nbsp;
	  		</td>
	  		<td>
	  			<label id="archivo"></label>
	  			<input class="form-control" id="fileName" type="file" name="fileName" size="30" accept=".pdf" />
	  			
	  		</td>
	  	</tr>
	  </table>
		
		
		
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Fecha de inicio</label>
		<input class="form-control" name="fecha_ini" id="fecha_ini" type="date" pattern='(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))' placeholder="YYYY-MM-DD" required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Fecha fin</label>
		<input class="form-control" name="fecha_fin" id="fecha_fin" type="date" pattern='(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))' placeholder="YYYY-MM-DD" required/>
	  </div>
     </div>
   <label id="mensajes">.</label>
     
     <div class="row" align="center" id="guard" >
      		<div class="form-group" >			
							<button class="btn btn-default btn-lg" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="50" height="40" title="Guardar" />Guardar</button>
							
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
var idTRIFOLIAR=0;
$("#flex1").flexigrid
(
{
url: '../TablaTrifoliar',
method: 'POST',
dataType: 'xml',
colModel : [
	{display: 'Seleccionar', name : 'chktradio', width : 90, sortable : false, align: 'left'},
	{display: 'ID', name : 'idTRIFOLIAR', width : 50, sortable : true, align: 'center'},
	{display: 'titulo', name : 'titulo', width : 120, sortable : true, align: 'left'},
	{display: 'estado', name : 'estado', width : 80, sortable : true, align: 'left'},
	{display: 'Fecha inicio', name : 'fecha_inicio', width : 120, sortable : true, align: 'left'},
	{display: 'Fecha fin', name : 'fecha_fin', width : 120, sortable : true, align: 'left'}
	],
searchitems : [
	{display: 'ID', name : 'idTRIFOLIAR', isdefault: true},
	{display: 'titulo', name : 'titulo'},
	{display: 'estado', name : 'estado'},
	{display: 'Fecha inicio', name : 'fecha_inicio'},
	{display: 'Fecha fin', name : 'fecha_fin'}
	],
sortname: "idTRIFOLIAR",
sortorder: "asc",
usepager: true,
title: 'Trifoliar',
useRp: true,
rp: 10,
showTableToggleBtn: true,
width: 800,
onSubmit: addFormData,
height: 150,
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
	document.getElementById("guard").style.display = 'block';
}
function EditarRegistro(){
	if(idTRIFOLIAR=="0"){
		MensajeServidor(2,"Error, seleccione un registro valido");
	}else{
		//window.location.replace("/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp?MID="+idMultifasicos);
	}
}
function validar_vacio(entrada){
	var resultado="";
	if(entrada!=""){
		resultado=entrada;
	}
	return resultado;
}
function Guardar(){
	var titulo=document.getElementById('titulo').value;
	var estado=valorselectInverso(document.getElementById('estado').value);
	var descripcion=document.getElementById('descripcion').value;
	var aux=''+document.getElementById('contenido').value+'';
	
	var contenido=encodeURI(aux);
	
	var archivo=document.getElementById('fileName').value;
    var fecha_ini=validar_vacio(document.getElementById('fecha_ini').value);
	var fecha_fin=validar_vacio(document.getElementById('fecha_fin').value);
	
	if(titulo!=""&&descripcion!=""&&contenido!=""&&fecha_ini!=""&&fecha_fin!=""){
		AñadirRegistro(titulo,estado,descripcion,contenido,archivo,fecha_ini,fecha_fin);
	}else{
		MensajeServidor(2,"Error, faltan campos a ingresar");
	}
}
function Modificar(){
	var titulo=document.getElementById('titulo').value;
	var estado=valorselectInverso(document.getElementById('estado').value);
	var descripcion=document.getElementById('descripcion').value;
	var aux=''+document.getElementById('contenido').value+'';
	
	var contenido=encodeURI(aux);
	
	var archivo=document.getElementById('fileName').value;
    var fecha_ini=validar_vacio(document.getElementById('fecha_ini').value);
	var fecha_fin=validar_vacio(document.getElementById('fecha_fin').value);
	
	if(titulo!=""&&descripcion!=""&&contenido!=""&&fecha_ini!=""&&fecha_fin!=""){
		ModificarRegistro(titulo,estado,descripcion,contenido,archivo,fecha_ini,fecha_fin);
	}else{
		MensajeServidor(2,"Error, faltan campos a ingresar");
	}
	
	
}
function ModificarRegistro(titulo,estado,descripcion,contenido,archivo,fecha_ini,fecha_fin){
	var action="modificar";
	var codigo=document.getElementById('codigo').value;
	
	
	if(archivo!=""){
		AñadirRegistro2(archivo);
	}else{
		archivo=document.getElementById('archivo').textContent;
		
	}
	var cadena = ['a='+action,'ID='+codigo,'titulo='+titulo,'estado='+estado,'descripcion='+descripcion
	              ,'contenido='+contenido,'archivo='+archivo,'fecha_ini='+fecha_ini,'fecha_fin='+fecha_fin].join('&');

	$.ajax({
        url: "../TablaTrifoliar",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		
        		NuevoRegistro();
        		limpiartabla();
        		MensajeServidor(1,"Registro modificado correctamente");
        	}else{
        		MensajeServidor(2,data.descripcion);
        	}
        	
        	
        	
        }
	});
	
}
function AñadirRegistro2(archivo){
	var formData = new FormData();
	formData.append("archivo", document.getElementById("fileName").files[0]);
	var request = new XMLHttpRequest();
	request.open("POST", "../trifoliar3");
	request.send(formData);
}
function AñadirRegistro(titulo,estado,descripcion,contenido,archivo,fecha_ini,fecha_fin){
	var action="agregar";
	var cadena = ['a='+action,'titulo='+titulo,'estado='+estado,'descripcion='+descripcion
	              ,'contenido='+contenido,'archivo='+archivo,'fecha_ini='+fecha_ini,'fecha_fin='+fecha_fin].join('&');
	
	if(archivo!=""){
		AñadirRegistro2(archivo);
	}
	

	$.ajax({
        url: "../TablaTrifoliar",
        data: cadena,
  	    type: 'post',
        dataType: 'json',
        success: function(data){
        	if(data.resultado=='OK'){
        		idTRIFOLIAR=0;
        		document.getElementById('codigo').value = "";
        		document.getElementById('estado').value = 1;
        		document.getElementById('titulo').value = "";
        		document.getElementById('descripcion').value = "";
        		$('#contenido').val('').blur();
        		
        		document.getElementById('fileName').value = "";
        		document.getElementById('fecha_ini').value = "";
        		document.getElementById('fecha_fin').value = "";
        		limpiartabla();
        		MensajeServidor(1,"Registro almacenado correctamente");
        	}else{
        		MensajeServidor(2,data.descripcion);
        	}
        	
        	
        	
        }
	});
	
}
function CargaRegistro(){
	if(idTRIFOLIAR==0){
		MensajeServidor(2,"Error, seleccione un registro valido");		
	}
	else{
		
		var action="carga";
		cadena = [ 	'idTRIFOLIAR='   + idTRIFOLIAR,
	             	'a='+action
	            ].join('&');
		$.ajax({
	        url: "../TablaTrifoliar",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		var textos= decodeURI(data.contenido);
	        		$('#contenido').val(textos).blur();
	        		document.getElementById('archivo').innerHTML = data.archivo;
	        		document.getElementById('fecha_ini').value = data.fecha_ini;
	        		document.getElementById('fecha_fin').value = data.fecha_fin;
	        	}else{
	        		MensajeServidor(2,"Error, no se puede eliminar");
	        		
	        	}
	        }
	    });
	}
	
}
function EliminarRegistro(){
	if(idTRIFOLIAR==0){
		MensajeServidor(2,"Error, seleccione un registro valido");		
	}
	else{
		
		var action="eliminardato";
		cadena = [ 	'idTRIFOLIAR='   + idTRIFOLIAR,
	             	'a='+action
	            ].join('&');
		$.ajax({
	        url: "../TablaTrifoliar",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		 MensajeServidor(1,data.descripcion);	
	        		 document.getElementById('codigo').value = "";
	         		 document.getElementById('estado').value = 1;
	         		 document.getElementById('titulo').value = "";
	         		 document.getElementById('descripcion').value = "";
	         		 $('#contenido').val('').blur();
	         		 document.getElementById('archivo').innerHTML = "";
	         		 document.getElementById('fileName').value = "";
	         		 document.getElementById('fecha_ini').value = "";
	         		 document.getElementById('fecha_fin').value = "";
	        		 idTRIFOLIAR=0;
	        		 limpiartabla();
	        	}else{
	        		MensajeServidor(2,"Error, el alimento esta siendo utilizado en otro registro y no puede ser eliminado");
	        		
	        	}
	        }
	    });
	}
	
}
function limpiartabla(){
	  
	idTRIFOLIAR=0;
	  $('#flex1').flexReload();
}
function MensajeServidor(codigo,descripcion){
	if(codigo==1){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'green';
	}else if(codigo==2){
		document.getElementById('mensajes').innerHTML = descripcion;
		document.getElementById('mensajes').style.color = 'red';
	}else if(codigo==3){
		document.getElementById('mensajes').innerHTML = '';
	}
}
function DatosSeleccionados(id,titulo,estado,descripcion){

	idTRIFOLIAR=id;
	document.getElementById('codigo').value = id;
	document.getElementById('titulo').value = titulo;
	document.getElementById('estado').value = valorselect(estado);
	document.getElementById('descripcion').value = descripcion;
	CargaRegistro();
	//$('#contenido').val(decodeURI(contenido)).blur();
	//document.getElementById('mensajes').innerHTML = '';
	document.getElementById("guard").style.display = 'none';
	document.getElementById("Mod").style.display = 'block';
	MensajeServidor(3,"");
}
function NuevoRegistro(){
	idTRIFOLIAR=0;
	document.getElementById('codigo').value = "";
	document.getElementById('estado').value = 1;
	document.getElementById('titulo').value = "";
	document.getElementById('descripcion').value = "";
	$('#contenido').val('').blur();
	
	document.getElementById('fileName').value = "";
	document.getElementById('fecha_ini').value = "";
	document.getElementById('fecha_fin').value = "";
	document.getElementById('archivo').innerHTML = "";
	document.getElementById("guard").style.display = 'block';
	document.getElementById("Mod").style.display = 'none';
}
function valorselectInverso(entrada){
	var resultado="";
	if(entrada=='1'){
		resultado="Activo";
	}else if(entrada=='2'){
		resultado="Inactivo";
	}
	return resultado;
}
function valorselect(entrada){
	var resultado=0;
	if(entrada=='Activo'){
		resultado=1;
	}else if(entrada=='Inactivo'){
		resultado=2;
	}
	return resultado;
}
function Contenido(){
	$('#contenido').val('<p>new text data</p>').blur();
	var codigo=document.getElementById('contenido').value;
	//alert(codigo);
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