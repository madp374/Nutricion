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

	    
		<script type="text/javascript" src="../jHtmlArea/scripts/jquery-1.3.2.js"></script>
	   
	    
	   <link href="../jquery/menuacordeon/css/dcaccordion.css" rel="stylesheet" type="text/css" />
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.cookie.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.hoverIntent.minified.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.dcjqaccordion.2.7.min.js'></script>
    	
    	<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />
		
		<script type="text/javascript" src="../jHtmlArea/scripts/jquery-ui-1.7.2.custom.min.js"></script>
		<link rel="Stylesheet" type="text/css" href="../jHtmlArea/style/jqueryui/ui-lightness/jquery-ui-1.7.2.custom.css" />
		<script type="text/javascript" src="../jHtmlArea/scripts/jHtmlArea-0.8.js"></script>
    	<link rel="Stylesheet" type="text/css" href="../jHtmlArea/style/jHtmlArea.css" />
    	
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
			.h1, .h2, .h3, h1, h2, h3, .h4, .h5, .h6, h4, h5, h6 {
			    margin-top: 0px;
			    margin-bottom: 0px;
			}
		
		</style>
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:10pt; }
       	div.jHtmlArea .ToolBar ul li a.custom_disk_button 
        {
            background: url(images/disk.png) no-repeat;
            background-position: 0 0;
        }
        
        div.jHtmlArea { border: solid 1px #ccc; }
	</style>
		
	
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
				$("#txtDefaultHtmlArea").htmlarea(); // Initialize jHtmlArea's with all default values

	            $("#txtCustomHtmlArea").htmlarea({
	                // Override/Specify the Toolbar buttons to show
	                toolbar: [
	                    ["bold", "italic", "underline", "|", "forecolor"],
	                    ["p", "h1", "h2", "h3", "h4", "h5", "h6"],
	                    ["link", "unlink", "|", "image"],                    
	                    [{
	                        // This is how to add a completely custom Toolbar Button
	                        css: "custom_disk_button",
	                        text: "Save",
	                        action: function(btn) {
	                            // 'this' = jHtmlArea object
	                            // 'btn' = jQuery object that represents the <A> "anchor" tag for the Toolbar Button
	                            alert('SAVE!\n\n' + this.toHtmlString());
	                        }
	                    }]
	                ],

	                // Override any of the toolbarText values - these are the Alt Text / Tooltips shown
	                // when the user hovers the mouse over the Toolbar Buttons
	                // Here are a couple translated to German, thanks to Google Translate.
	                toolbarText: $.extend({}, jHtmlArea.defaultOptions.toolbarText, {
	                        "bold": "fett",
	                        "italic": "kursiv",
	                        "underline": "unterstreichen"
	                    }),

	                // Specify a specific CSS file to use for the Editor
	                css: "style//jHtmlArea.Editor.css",

	                // Do something once the editor has finished loading
	                loaded: function() {
	                    //// 'this' is equal to the jHtmlArea object
	                    //alert("jHtmlArea has loaded!");
	                    //this.showHTMLView(); // show the HTML view once the editor has finished loading
	                }
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
		<textarea class="form-control" id="txtDefaultHtmlArea" cols="80" rows="15"><p><h3>Nutricion USALUD</h3>Texto de prueba <b>123</b>.</p></textarea>

	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Archivo</label>
		<input class="form-control" id="fileName" type="file" name="fileName" size="30"/><br/> 
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Fecha de inicio</label>
		<input class="form-control" name="fecha_ini" id="fecha_ini" type="date" required/>
	  </div>
     </div>
     <div class="row">  
	  <div class="form-group">
		<label class="form-control" for="NCarnet" style="width: 150px;" >Fecha fin</label>
		<input class="form-control" name="fecha_fin" id="fecha_fin" type="date" required/>
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
	document.getElementById("guard").style.display = 'none';
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
	var contenido=document.getElementById('txtDefaultHtmlArea').value;
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
function AñadirRegistro(titulo,estado,descripcion,contenido,archivo,fecha_ini,fecha_fin){
	var action="agregar";
	var cadena = ['a='+action,'titulo='+titulo,'estado='+estado,'descripcion='+descripcion
	              ,'contenido='+contenido,'archivo='+archivo,'fecha_ini='+fecha_ini,'fecha_fin='+fecha_fin].join('&');


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
        		document.getElementById('txtDefaultHtmlArea').value = "Nutricion USALUD";
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
	}
}
function DatosSeleccionados(id){
	idTRIFOLIAR=id;
	document.getElementById('codigo').value = id;
	//document.getElementById('nombre').value = nomb;
	//document.getElementById('calorias').value = caloria;
	//document.getElementById('Grupo').value = valorselect(grup);
	//document.getElementById('mensajes').innerHTML = '';
	document.getElementById("ini").style.display = 'none';
	document.getElementById("guard").style.display = 'none';
	document.getElementById("Mod").style.display = 'block';
	
}
function NuevoRegistro(){
	idTRIFOLIAR=0;
	document.getElementById('codigo').value = "";
	//document.getElementById('nombre').value = "";
	//document.getElementById('calorias').value = "";
	//document.getElementById('Grupo').value = 1;
	document.getElementById("guard").style.display = 'block';
	document.getElementById("Mod").style.display = 'none';
	document.getElementById("ini").style.display = 'none';
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