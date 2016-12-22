<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Flexigrid</title>

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
		
<link rel="stylesheet" type="text/css" href="../CSS/flexigrid/flexigrid/flexigrid.css">
<script type="text/javascript" src="../jquery/flexigrid/jquery.js"></script>
<script type="text/javascript" src="../jquery/flexigrid/flexigrid.js"></script>

<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />

<style>

	#titulos { color: black; word-spacing: -5 px; letter-spacing: 3px;}
	#header_carousel { float:right; }
	.foto-inicio{	width:100%; height:100px; 	}
	label { display:block; margin:5px 0 5px; font-size:10pt; }
	
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
			});
    	</script>
</head>
<body>
<div class="container">
         <div class="panel2 panel-body">
        <header class="row col-sm-12">
        <div class="page-header">
        
        <div id="header_carousel">
	<div class="menu_header" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 50%;">

									<ul style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; width: 1280px; left: -429.225px;"><li style="overflow: hidden; float: left; width: 160px; height: 100px;">
										<div class="foto-inicio">
												
													<img src="../jquery/carrusel/image/1.jpg" width="160px" height="120px">												
											
										</div>
										</li><li style="overflow: hidden; float: left; width: 160px; height: 100px;">
										<div class="foto-inicio">
												
													<img src="../jquery/carrusel/image/2.jpg" width="160px" height="120px">												
											
										</div>
										</li><li style="overflow: hidden; float: left; width: 160px; height: 100px;">
										<div class="foto-inicio">
												
													<img src="../jquery/carrusel/image/3.jpg" width="160px" height="120px">												
											
										</div>
										</li>
					
										<li style="overflow: hidden; float: left; width: 160px; height: 100px;">
										<div class="foto-inicio">
												
													<img src="../jquery/carrusel/image/4.jpg" width="160px" height="120px">												
											
										</div>
										</li>
				
									</ul>

								</div>
	
	<div id="titulos">
<h5 align="center">&Aacute;rea de Medicina Preventiva e Investigaci&oacute;n</br>
			Clinica de Nutricion</br>
			Unidad de Salud. USAC</h5>
	</div>

    </div>
	<div style="float:left;">
	<a href="http://usalud.usac.edu.gt/index.jsp">
	
	<img src="../imagenes/logousalud2.gif" width="300px" alt="bt_1" onmouseout="this.src=&#39;../imagenes/logousalud2.gif&#39;;" onmouseover="this.src=&#39;../imagenes/logousac.png&#39;;">
	</a>
</div> 
       		 
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
		<li><a href="#">Page 3</a></li>
		<li><a href="#">Page 4</a></li>
	  </ul>
         </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Consulta externa </a> </li>
        <li> <a href="#"> <span class="glyphicon glyphicon-book"></span> Multifasico </a></li>
        </ul>
      
        </nav>
        
        <section class="col-sm-10">
        <div class="panel panel-default">
        
        <div class="panel-heading">
        <h3 class="panel-title">Examen Multifasico</h3>
        </div>
        <div class="panel-body">
        
<table align="center">
<tr>
<td>
<table id="flex1" style="display:none" ></table>
</td>
</tr>
</table>

<script type="text/javascript">

			$("#flex1").flexigrid
			(
			{
			url: '../TablaMulti',
			method: 'POST',
			dataType: 'xml',
			colModel : [
				{display: 'Seleccionar', name : 'chktitulo_secundaria', width : 30, sortable : false, align: 'left'},
				{display: 'ID', name : 'idMultifasico', width : 40, sortable : true, align: 'center'},
				{display: 'Paciente', name : 'Paciente_idPaciente', width : 180, sortable : true, align: 'left'},
				{display: 'fecha', name : 'fecha', width : 120, sortable : true, align: 'left'}
				],
			searchitems : [
				{display: 'ID', name : 'idMultifasico'},
				{display: 'fecha', name : 'fecha', isdefault: true}
				],
			sortname: "idMultifasico",
			sortorder: "asc",
			usepager: true,
			title: 'Multifasico',
			useRp: true,
			rp: 10,
			showTableToggleBtn: true,
			width: 700,
			onSubmit: addFormData,
			height: 200,
			}
			);

function addFormData()
	{

	var dt = $('#sform').serializeArray();
	$("#flex1").flexOptions({params: dt});
	return true;
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