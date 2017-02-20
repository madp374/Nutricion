<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
		<link rel="shortcut icon" href="http://usalud.usac.edu.gt/favi.ico" type="image/x-icon">
		<title>Unidad de Salud &#47; USAC</title>
		<link rel="stylesheet" media="all" type="text/css" href="../jquery/carrusel/style/style-demo.css">

	    <script src="../jquery/carrusel/script/jquery-1.11.1.js"></script>
	    <script src="../jquery/carrusel/script/jquery.easing-1.3.js"></script>
	    <script src="../jquery/carrusel/script/jquery.mousewheel-3.1.12.js"></script>
	    <script src="../jquery/carrusel/script/jquery.jcarousellite.js"></script>
	    
	   <link href="../jquery/menuacordeon/css/dcaccordion.css" rel="stylesheet" type="text/css" />
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.cookie.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.hoverIntent.minified.js'></script>
	   <script type='text/javascript' src='../jquery/menuacordeon/js/jquery.dcjqaccordion.2.7.min.js'></script>
	   
	   <script type="text/javascript" src="../SimpleScroll/jquery.simplyscroll.js"></script>
		<link rel="stylesheet" href="../SimpleScroll/jquery.simplyscroll.css" media="all" type="text/css">
    	
    	<style type="text/css">
			#titulos { color: black; word-spacing: -5 px; letter-spacing: 3px;}
			#header_carousel { float:right; }
			.foto-inicio{	width:100%; height:100px; 	}
			.container{ padding-top:15px;}
			.page-header {
			  margin: 0px 0 0px;
			}
			.col-md-3{
				padding-left: 25px;
			}
			.menu_header{
				width: 100%;
			}
			

		</style>
		
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:8pt; }
       	input[type=text],input[type=email], input[type=password], input[type=number], input[type=date] {  padding:5px; border:solid 1px #000;}
		input[type=time] { padding:5px; border:solid 1px #000;}
		select { padding:5px; border:solid 1px #000;}
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
    	
    	<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />

        </head>

        <body onload="CargaInicio()">
        <div class="container">
         <div class="panel2 panel-body">
    <header class="row col-sm-12">
    <div class="page-header">
        
    <div id="header_carousel">
	<div class="menu_header" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 640px;">

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
	
					

    </div>
			<div style="float:left;">
				<a href="http://usalud.usac.edu.gt/index.jsp">
				
					<img src="../imagenes/logousalud2.gif" height="100px" width="200px" alt="bt_1" onmouseout="this.src=&#39;../imagenes/logousalud2.gif&#39;;" onmouseover="this.src=&#39;../imagenes/logousac.png&#39;;">
				</a>
			</div> 
       		 
    </div>
    </header>
        <div class="row col-md-12">
        <div class="row">
        
        	<div class="col-sm-3">
        	<div class="row">
        		<nav class="col-sm-14">
			        <ul class="nav nav-pills nav-stacked" class="accordion"  id="accordion-3">
			        <li > <a href="#"> Quienes somos </a> </li>
			        <li> <a href="#">  Docencia </a>
			        <ul>
					<li><a href="#">Page 1</a></li>
					<li><a href="#">Page 2</a></li>
					<li><a href="#">Page 3</a></li>
					<li><a href="#">Page 4</a></li>
				  </ul>
			         </li>
			        <li> <a href="#">  Investigacion </a> </li>
			        <li> <a href="#">  Programas </a></li>
			        <li> <a href="/ModuloNutricion/PortalSalud/Calendario.jsp">  Calendario </a></li>
			        <li> <a href="/ModuloNutricion/PortalSalud/InicioNutricion.jsp">  Regresar a Menu </a></li>
			        </ul>
	   
	       		 </nav>
        	</div>
        	<div class="row">
        	<div class="panel panel-default">
        		<div class="panel-heading">
		       	 <h3 class="panel-title">Ingreso</h3>
		        </div>
		        <div class="panel-body">
		        	<form action="../login" method="post" class="form-inline" role="form" >
		        	<div class="row">  
						  <div class="form-group">
						  		<div id="mensajes"></div>
						  </div>
						 </div>
		        		<div class="row">
		        		&nbsp;  
						  <div class="form-group">
							Usuario(Carné)
							<input class="form-control input-sm" name="user" id="user" style="width: 120px; height:25px;" required />
						  </div>
						 </div>
						 <div class="row">
						 	<br>
						 </div>
						 <div class="row">  
						 &nbsp;
						  <div class="form-group">
							Contraseña&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="form-control input-sm" name="pass" id="pass" type="password" style="width: 120px; height:25px;" required />
						  </div>
						 </div>
						 <div class="row">
						 	<br>
						 </div>
						 <div class="row"> 
						 &nbsp; 
						  <div class="form-group">
							Perfil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<select class="form-control input-sm" id="perfil" name="perfil">
								<option value="1">Estudiante</option>
								<option value="2">Nutricionista</option>
								<option value="3">Administrador</option>
							</select>
						  </div>
						 </div>
						 <div class="row">
						 	<br>
						 </div>
						 <div class="row" align="center">  
						  <div class="form-group">
						    <input type="submit" class="btn btn-default" value="Entrar" > 
									
						  </div>
						 </div>
						 </form>
						 <hr style="width: 100%; color: black; height: 1px; background-color:black;">
						 <div style="text-align:center;"> 
						 <u><a href="http://rye.usac.edu.gt/index.php?ring=4" target="_blank" style="color: black; text-align:center;">¿Olvidó su contraseña?</a></u>
						 <br>
						 <br>
						 </div>
						 <div style="text-align:justify;"> 
							Ingresar a este sitio por medio de su carnet y pin generado en el Departamento de Registro y Estadística
						</div>
		        	
		        </div>
		     </div>   
        	</div>
	        	
        	</div>
        	
        	
		  	<div class="col-md-9">
		  	<div class="row">
		  		<section class="col-sm-12">
			        <div class="panel panel-default">
			        
			        <div class="panel-heading">
			        <h3 class="panel-title">Nutricion</h3>
			        </div>
			        <div class="panel-body">
					<p id="contenido"></p>
			        </div>
			        </div>
			        </section>
		  	</div>
		  	
		  	<div class="row">
		  		<section class="col-sm-12">
			        <div class="panel panel-default" >
			        
			        <div class="panel-heading">
			        <h3 class="panel-title">Noticias</h3>
			        </div>
			        <div class="panel-body" style="height: 400px;">
			        <div class="container" style="width: 100%;">
			       
			       <jsp:include page="Noticias.jsp" />
			       
			        </div>
			        </div>
			        </div>
			        </section>
		  	</div>
		  	
		  	
		  	
		  	</div>
		</div>
        
        </div>
       <script type="text/javascript">
       	   function CargaInicio() {
       		Mensajes();
       		var lg = getUrlVars()["e"];
       		if(lg!=undefined){
       			if(lg=="false"){
       				//alert("error");
       				document.getElementById("mensajes").innerHTML = '<p align="center" style="color: red;" >ERROR: USUARIO Y/O PASSWORD INCORRECTOS</p>';
       			}
       		}
       	   }
	       function getUrlVars() {
		   	    var vars = {};
		   	    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,    
		   	    function(m,key,value) {
		   	      vars[key] = value;
		   	    });
		   	    return vars;
	   	  }
	       function Mensajes(){
	    	   var action="cargaInicio";
	    		cadena = [ 	'idTRIFOLIAR='+1,'a='+action].join('&');
	    			$.ajax({
	    		        url: "../TablaTrifoliar",
	    		        data: cadena,
	    		  	    type: 'post',
	    		        dataType: 'json',
	    		        success: function(data){
	    		        	
	    		        	if(data.resultado=='OK'){
	    		        		document.getElementById('contenido').innerHTML ="";
	    		        		var textos= decodeURI(data.contenido);
	    		        		document.getElementById('contenido').innerHTML = textos;
	    		        		
	    		        	}
	    		        }
	    		    });
	       }
       </script>
		  	
        <footer class="row col-sm-12">
        <div class="panel panel-body">
        <p>Edificio Bienestar Estudiantil 3er Nivel, Ciudad Universitaria Zona 12, Guatemala C.A TELEFONO: 24188000 FAX:24189633</p>
        </div>
        </footer>
        </div>
        </div>
        </body>

        </html>