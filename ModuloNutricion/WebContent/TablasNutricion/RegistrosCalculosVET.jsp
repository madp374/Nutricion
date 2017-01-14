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

        <body>
       
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
        <h3 class="panel-title">Examen Calculos VET</h3>
        </div>
        <div class="panel-body">
	<form action="../CalculosVET" method="post" class="form-inline" role="form" onsubmit="return false">
	<label id="mensajes">.</label>
	
	<div class="table-responsive">
	<table class="table" align="center">
	<tr>
	<td>
	<table id="flex1" style="display:none" ></table>
	</td>
	</tr>
	</table>
	</div>
<div class="row" align="center" id="Mod" >
      		<div class="form-group" >			
							<button class="btn btn-default btn-lg" onclick="NuevoRegistro()" >
						     <img src="../imagenes/nuevo.png" width="50" height="40" title="Nuevo" />Nuevo</button>
							
			</div>
            <div class="form-group" >			
							<button class="btn btn-default btn-lg" onclick="EditarRegistro()" >
						     <img src="../imagenes/guardado.png" width="50" height="40" title="Modificar" />Modificar</button>
							
			</div>
			<div class="form-group" >		
							<button class="btn btn-default btn-lg" onclick="EliminarRegistro()" >
						     <img src="../imagenes/eliminar.png" width="50" height="40" title="Eliminar" />Eliminar</button>
							
			</div>
		</div>
</form>
<script type="text/javascript">
var idCALCULOS_VET="";
$("#flex1").flexigrid
(
{
url: '../TablaCalculosVET',
method: 'POST',
dataType: 'xml',
colModel : [
	{display: 'Seleccionar', name : 'chktradio', width : 90, sortable : false, align: 'left'},
	{display: 'ID', name : 'idCALCULOS_VET', width : 50, sortable : true, align: 'center'},
	{display: 'Paciente', name : 'Paciente_idPaciente', width : 80, sortable : true, align: 'left'},
	{display: 'fecha', name : 'fecha', width : 120, sortable : true, align: 'left'}
	],
searchitems : [
	{display: 'ID', name : 'idCALCULOS_VET', isdefault: true},
	{display: 'Carnet', name : 'Paciente_idPaciente'},
	{display: 'fecha', name : 'fecha'}
	],
sortname: "idCALCULOS_VET",
sortorder: "asc",
usepager: true,
title: 'Calculos VET',
useRp: true,
rp: 10,
showTableToggleBtn: true,
width: 800,
onSubmit: addFormData,
height: 300,

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

function EditarRegistro(){
	if(idCALCULOS_VET=="0"){
		document.getElementById('mensajes').innerHTML = 'Error, seleccione un registro valido';
	}else{
		window.location.replace("/ModuloNutricion/ExamenesNutricion/CalculosVET.jsp?idVET="+idCALCULOS_VET);
	}
}
function EliminarRegistro(){
	if(idCALCULOS_VET=="0"){
		document.getElementById('mensajes').innerHTML = 'Error, seleccione un registro valido';
		
	}
	else{
		
		var action="eliminardato";
		cadena = [ 	'idCALCULOS_VET='   + idCALCULOS_VET,
	             	'a='+action
	            ].join('&');
		$.ajax({
	        url: "../TablaCalculosVET",
	        data: cadena,
	  	    type: 'post',
	        dataType: 'json',
	        success: function(data){
	        	
	        	if(data.resultado=='OK'){
	        		 document.getElementById('mensajes').innerHTML = data.mensaje;
	        		limpiartabla();
	        	}else{
	        		document.getElementById('mensajes').innerHTML = 'Error al eliminar';
	        		
	        	}
	        }
	    });
	}
	
}
function limpiartabla(){
	  
	idCALCULOS_VET="0";
	  $('#flex1').flexReload();
}
function DatosSeleccionados(id){
	idCALCULOS_VET=id;
	document.getElementById('mensajes').innerHTML = '';
}
function NuevoRegistro(){
	var valor = ${idCE2};
	window.location.replace("/ModuloNutricion/ExamenesNutricion/CalculosVET.jsp?prodId="+valor);
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