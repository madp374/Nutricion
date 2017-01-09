<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
        <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  		<script src="../jquery/autocompletar/jquery.autocomplete.js"></script>
        
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
		
		<link rel="stylesheet" media="all" type="text/css" href="../jquery/carrusel/style/style-demo.css">

	  	
	  	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	    
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
				 $("#MensajeServidor").on('hide.bs.modal', function () {
					 AccionPagina();
			    });
			});
    	</script>
    	
    	<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />

        </head>

        <body onload="CargaInicio()">
        
        <div class="modal fade" id="MensajeServidor" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Mensaje</h4>
							        </div>
							        <div class="modal-body">
							      		<textarea class="form-control" id="MensajeAux" name="plan" cols="30" rows="5" readonly></textarea>
								    
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal">Aceptar</button>
							        </div>
							      </div>
							    </div>
							  </div>
        
        <script type="text/javascript">
        var busqueda=false;
        var ERRORSQL=false;
        var carnetaccion="";
        var IDMulti="";
        function  AccionPagina(){
        	if(ERRORSQL==false){
        		//location.reload();
        		window.location.href = 'http://localhost:8080/ModuloNutricion/ExamenesNutricion/ExamenMultifasico.jsp';
        	}
        	
        }
        
        	function CargaInicio() {
        		cargar_hora();
        		
        		var MID = getUrlVars()["MID"];
        		if(MID!=undefined){
        			document.getElementById("Guard").style.display = 'none';
        			CargaEdicion(MID);
        		}else{
        			document.getElementById("Mod").style.display = 'none';
        		}
        	}
        	
        	function CargaEdicion(MID){
        		var action="CargaEdicion";
        		var cadena = ['a='+action,'MID='+MID].join('&');

        		$.ajax({
        	        url: "../Multifasico",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		document.getElementById('carnet').value  = data.codigo;
        	        		document.getElementById('carnet').readOnly = true;
        	        		document.getElementById('talla').value  = data.talla;
        	        		document.getElementById('peso').value  = data.peso;
        	        		document.getElementById('tricipital').value  = data.tricipital;
        	        		document.getElementById('subescapular').value  = data.subescapular;
        	        		BuscarPaciente(data.codigo);
        	        		CargaIMC(data.talla,data.peso);
        	        		CargaPliegues(data.tricipital,data.subescapular);
        	        		IDMulti=MID;
        	        	}else{
        	        		ERRORSQL=true;
        	        		MostrarMensajeServidor(data.descripcion);
        	        		IDMulti="";
        	        	}
        	        	
        	        }
        		});
        	}
        	function getUrlVars() {
        	    var vars = {};
        	    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,    
        	    function(m,key,value) {
        	      vars[key] = value;
        	    });
        	    return vars;
        	  }
        	
        	function cargar_hora(){
        		var  today = new Date();
        		var m = today.getMonth() + 1;
        		var mes = (m < 10) ? '0' + m : m;
        		 
        		var fecha=today.getDate()+'/' +mes+'/'+today.getFullYear();

        		document.getElementById('fecha').value=fecha;
        	}
        	
        	
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
        			  +"<label for=\"LSexo\">Sexo</label><select  class=\"form-control\" id=\"Sexo\">"
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
        	function BuscarPaciente(entrada){
        		var carnet="";
        		if(entrada=='A'){
        			carnet=validar_numerovacio('carnet');
            		
        		}else{
        			carnet=entrada;
        		}
        		carnetaccion=carnet;
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
    		        			busqueda=true;
    		        	}else{	  
    		        		busqueda=false;
    		        		CargaFacultad();
    		        	}
    		        	
    		        }
    		    });
        		
        	}
        	
        	function CargaPliegues(trici,subes){
        		
    	    	var sumapliegues=0;
    	    	var tricipital=0;
    	    	var subescapular=0;
    	    	
    	    	tricipital=parseFloat(trici);
    	    	subescapular=parseFloat(subes);
    	    	
    	    	sumapliegues=tricipital+subescapular;
    	    	document.getElementById('sumapliegues').value  = ""+sumapliegues.toFixed(2);
        	}

        	function CalcularPliegues(event){
        		var char = event.which || event.keyCode;
        	   // if(char == 13){ 
        	    	var auxtricipital="";
        	    	var auxsubescapular="";
        	    	
        	    	auxtricipital=validar_numerovacio('tricipital');
        	    	auxsubescapular=validar_numerovacio('subescapular');
        	    
        	    	CargaPliegues(auxtricipital,auxsubescapular);
        	   // }
        	   
        	}
        	function CargaIMC(TempTalla,TempPeso) {
    			var imc=0;
    			
    			talla =	parseFloat(TempTalla);
			    peso =	parseFloat(TempPeso);
			    talla=talla*talla;
			    imc=peso/talla;
			    imc=imc.toFixed(2);
			    
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
			        	
			        	var pesomax=parseFloat(data.pesomax).toFixed(2);
			        	var pesoideal=parseFloat(data.pesoideal).toFixed(2);
			        	
			        	document.getElementById('pesoM').value  = pesomax;
			        	document.getElementById('pesoI').value  = pesoideal;
			        }
				});
        		
        	}
        	function CalcularIMC(event) {
        	    var char = event.which || event.keyCode;
        	    if(char == 13){ 
        	    
        			var TempTalla="";
        			var TempPeso="";
        			
        			TempTalla=validar_numerovacio('talla');
        			TempPeso=validar_numerovacio('peso');
        			
        			CargaIMC(TempTalla,TempPeso);

        		}
        	   
        	}
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
    function validar_envio(carnet,imc,sumpl){
    	var resultado=true;
    	if(carnet=="0"||imc=="0"||sumpl=="0"){
    		ERRORSQL=true;
    		resultado=false;
    	}
    	return resultado
    }
    function Modificar(){
    	var action="modificar";
    	var ID=IDMulti;
    	var variable1=validar_vacio('TipoExamen');
    	var variable2=validar_numerovacio('talla');
    	var variable3=validar_numerovacio('peso');
    	var variable4=validar_numerovacio('imc');
    	var variable5=validar_numerovacio('pesoI');
    	var variable6=validar_numerovacio('pesoM');
    	var variable7=validar_numerovacio('tricipital');
    	var variable8=validar_numerovacio('subescapular');
    	var variable9=validar_vacio('Diag');
    	var sumapl=validar_numerovacio('sumapliegues');
    	
    	var cadena = [ 	'ID='+ ID,'a='+action
  		         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
  		         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'busqueda='+busqueda].join('&');
  	
     	if(validar_envio(ID,variable4,sumapl)){
     		enviar_datos(cadena);
     	}else{
     		ERRORSQL=true;
     		MostrarMensajeServidor("Error, complete los campos faltantes");
     	}
    }
    function Guardar(){
    	ERRORSQL=false;
    	if(carnetaccion!=""){
    		var action="guardar";
        	var carnet=validar_numerovacio('carnet');
        	
        	var variable1=validar_vacio('TipoExamen');
        	var variable2=validar_numerovacio('talla');
        	var variable3=validar_numerovacio('peso');
        	var variable4=validar_numerovacio('imc');
        	var variable5=validar_numerovacio('pesoI');
        	var variable6=validar_numerovacio('pesoM');
        	var variable7=validar_numerovacio('tricipital');
        	var variable8=validar_numerovacio('subescapular');
        	var variable9=validar_vacio('Diag');
        	var variable11="";
        	var variable12="";
        	var variable13="";
        	var variable14="";
        	var sumapl=validar_numerovacio('sumapliegues');
        	
        	if(busqueda==false){
        		variable11=validar_vacio('nombre');
        		variable12=validar_vacio('Sexo');
        		variable13=validar_vacio('fechaNac');
        		variable14=validar_vacio('Facultad');
        	}
        	
        	var cadena = [ 	'carnet='+ carnet,'a='+action
     		         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
     		         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'busqueda='+busqueda
     		         	   ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14].join('&');
     	
        	if(validar_envio(carnet,variable4,sumapl)){
        		enviar_datos(cadena);
        	}else{
        		ERRORSQL=true;
        		MostrarMensajeServidor("Error, complete los campos faltantes");
        	}
    	}else{
    		ERRORSQL=true;
    		MostrarMensajeServidor("Error, realice la busqueda del paciente e intentelo nuevamente");
    	}
    	
 		
 		         	
    }
    function ValidarDecimal() {
    	var texto=document.getElementById('talla').value;
    	var longitud=texto.length;
    	if(longitud>=2){
    		var ini = texto.substr(0,1);
    		
    	//	var aux= texto.substr(1,1);
    	//	var fin="";
    		
    	//	if(aux!="."){
    		//	fin= texto.substr(1,longitud);
    		//	var resultado=ini+"."+fin;
        	//	alert(resultado);
    		//}
    		
    		
    	}
    	
    }
    function MostrarMensajeServidor(texto){
    	document.getElementById('MensajeAux').value  = texto;
    	jQuery('#MensajeServidor').modal("show");
    	
       
    } 
    function enviar_datos(datos){
    	var resultado="";

    	$.ajax({
            url: "../Multifasico",
            data: datos,
      	    type: 'post',
            dataType: 'json',
            success: function(data){
            	if(data.resultado=='OK'){
            		ERRORSQL=false;
            		MostrarMensajeServidor("Informacion almacenada con exito");
            	}else{
            		ERRORSQL=true;
            		MostrarMensajeServidor("Error al almacenar");
            	}
            	
            }
    	});
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
        
 <form action="../Multifasico" method="post" id="multifasico" class="form-inline" role="form" onsubmit="return false">
 <article>
 <div class="panel panel-primary">
      <div class="panel-heading">Datos Generales</div>
      <div class="panel-body">
      	
      	<div class="row">  
  <div class="form-group">
   
	<label  for="NCarnet">Carnet/Codigo Personal</label>
	<input class="form-control" name="carnet" id="carnet" type="number" required/>
	
  </div>
  <div class="form-group">
    <label  for="Ntipo">Paciente</label>
    <select class="form-control" name="TipoCodigo">
							<option>Estudiante</option>
							<option>Trabajador</option>
						</select>
  </div>
  <div class="form-group">
    <p>
    
	<label  for="Ntipo">Buscar</label>
	<button class="btn btn-default btn-lg" onclick="BuscarPaciente('A');">
     <img src="../imagenes/ver.png" width="25" height="15" title="Buscar" /></button>
	</p>
							

  </div>
  <div id="mensaje1" >
</div>
  </div>
<div id="capa" class="row">
</div>
<div class="row">
	<div class="form-group">
	  
		  <label for="LFecha">Fecha</label>
		  <input class="form-control" id="fecha" type="text" readonly/>
	  </div>
	  <div class="form-group">
	  
		  <label for="TipoExame">Tipo de Examen</label><select class="form-control" id="TipoExamen">
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
		<input class="form-control" id="talla" name="talla" type="number"  min="0.1" max="5" step="any" onkeyup="ValidarDecimal()" style="width: 80px;"  required/>
	</div>
	<div class="form-group">
		<label for="Lpeso">Peso (Kg)</label>
		<input  class="form-control"id="peso" name="peso" type="number"  min="0.1" max="800" step="any" onkeypress="CalcularIMC(event)"  style="width: 80px;" required/>
                   
	</div>
	
	<div class="form-group">
		 <label for="Lims">IMC</label>
		 <input class="form-control" id="imc" name="imc" type="number" step="any" readonly style="width: 80px;" required/>
                    
	</div>
	<div class="form-group">
		<label for="LpesoI">Peso ideal (Lbs)</label>
		<input class="form-control" id="pesoI" name="pesoI" type="number" step="any" readonly style="width: 105px;" required/>
                	
	</div>
	<div class="form-group">
		<label for="LpesoM">Peso maximo (Lbs)</label>
		<input class="form-control" id="pesoM" name="pesoM" type="number" step="any" readonly style="width: 120px;" required/>
                    
                   
	</div>
	<div class="form-group">
		 <label for="LDiag">Diagnostico</label>
		 <input class="form-control" id="Diag" name="Diag" type="text" readonly style="width: 120px;" required/>
                    
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
  		<input class="form-control" id="tricipital" name="tricipital" min="0.1" type="number" step="any" onkeyup="CalcularPliegues(event)" style="width: 120px;" required />
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsubescapular">Subescapular (mm)</label>
  		<input class="form-control" id="subescapular" name="subescapular" min="0.1" type="number" step="any" onkeyup="CalcularPliegues(event)" style="width: 120px;" required "/></td>
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsumapliegues">Sumatoria de ambos pliegues</label>
  		<input class="form-control" id="sumapliegues" name="sumapliegues" type="number" step="any" readonly style="width: 120px;" required />
         
  	</div>
  </div>
      	
      	</div>
    </div>
    
 

  </article>
  </br>
            <div class="row" align="center">
            <div class="form-group" id="Guard">
						     <label for="BNuevo">Guardar</label>			
							<button class="btn btn-default btn-lg" id="guardarg" onclick="Guardar()" >
						     <img src="../imagenes/guardado.png" width="80" height="60" title="Guardar" /></button>
							
			</div>
			<div class="form-group" id="Mod">
						     <label for="BNuevo">Modificar</label>			
							<button class="btn btn-default btn-lg" id="guardarg" onclick="Modificar()" >
						     <img src="../imagenes/guardado.png" width="80" height="60" title="Modificar" /></button>
							
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