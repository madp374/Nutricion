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

	 	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	 
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
			.nav-tabs>li>a {
			     color: #555;
			    cursor: default;
			    background-color: #fff;
			    border: 1px solid #ddd;
			    border-bottom-color: transparent;
			}
			.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
			    color: #555;
			    cursor: default;
			    background-color: #ddd;
			    border: 1px solid #ddd;
			    border-bottom-color: transparent;
			}
			.container{
				width: 100%;
			}
			.btn-default {
			    color: #333;
			    background-color: #D8D6D6;
			    border-color: #ccc;
			}
		</style>
		<style type="text/css">
		label { display:block; margin:5px 0 5px; font-size:9pt; }
       	.ui-autocomplete {
		    position: absolute;
		    z-index: 1000;
		    cursor: default;
		    padding: 0;
		    margin-top: 2px;
		    list-style: none;
		    background-color: #ffffff;
		    border: 1px solid #ccc;
		    -webkit-border-radius: 5px;
		       -moz-border-radius: 5px;
		            border-radius: 5px;
		    -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
		       -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
		            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
		}
		.ui-autocomplete > li {
		  padding: 3px 20px;
		}
		.ui-autocomplete > li.ui-state-focus {
		  background-color: #DDD;
		}
		.ui-helper-hidden-accessible {
		  display: none;
		}
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
			});
    	</script>
    	
    	<link href="../jquery/menuacordeon/css/skins/blue.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/graphite.css" rel="stylesheet" type="text/css" />
		<link href="../jquery/menuacordeon/css/skins/grey.css" rel="stylesheet" type="text/css" />

        </head>

        <body onload="CargaInicio()">
        
       
        
        <script>
        var busqueda=false;
        var ERRORSQL=false;
        var carnetaccion="";
        
        
        var listadoAlimentos="";
        var ArrTiempoCom=["","","","",""];
        var ArrComida=[];
        var ArrCant=[];
        var ArrUnidad=[];
        var ArrpComida=[];
        var ArrKcal=[];
        var contp=0;
        var idCE=0;
        var habilitado=false;
        
        function MostrarMensajeServidor(texto){
        	alert(texto);        
        } 
        	function CargaInicio() {
        		
        		var MID = getUrlVars()["prodId"];
        		idCE = getUrlVars()["idCE"];
        		if(idCE!=undefined){
        			CargaEdicion(idCE)
        			document.getElementById("Guard").style.display = 'none';
        		}else{
        			if(MID!=undefined){
            			document.getElementById("Guard").style.display = 'none';
            			//CargaEdicion(MID);
            		}else{
            			document.getElementById("Mod").style.display = 'none';
            		}
        		}
        		
        	}
        	function CargaEdicion(MID){
        		var action="CargaEdicion";
        		var cadena = ['a='+action,'ID='+MID].join('&');

        		$.ajax({
        	        url: "../ConsultaExterna",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
        	        		document.getElementById('carnet').value  = data.PACIENTE_idPACIENTE;
        	        		document.getElementById('carnet').readOnly = true;
        	        		
        	        		CargaDPaciente(data.pnombre,data.pedad,data.psexo,data.pfacultad,data.PACIENTE_idPACIENTE)
        	        		
        	        		document.getElementById("dbaja").value  = data.DietaBaja;
        	        		document.getElementById("dalta").value  = data.DietaAlta;
        	        		document.getElementById("talla").value  = data.talla;
        	        		document.getElementById("pesousual").value  = data.peso;
        	        		document.getElementById("circunferencia").value  = data.CircunferenciaMuneca;
        	        		document.getElementById("constitucion").value  = data.ConstitucionOsea;

        	        		document.getElementById("fuma").checked  = AsignarCheck(data.fuma);
        	        		document.getElementById("ncigarro").value  = data.numero_cigarros;
        	        		document.getElementById("fumafrec").value  = data.frec_fuma;
        	        		document.getElementById("ejercicio").checked  = AsignarCheck(data.ejercicio);
        	        		document.getElementById("ejerciciotiempo").value  = data.tiempo_min;
        	        		document.getElementById("ejerciciofrec").value  = data.frec_ejercicio;
        	        		document.getElementById("bebidaalc").checked  = AsignarCheck(data.bebida);
        	        		document.getElementById("bebidaalcfrec").value  = data.frec_bebida;
        	        		
        	        		document.getElementById("tcdesayuno").value  = data.TDesayuno;
        	        		document.getElementById("tcrefaccion").value  = data.TRefaccion;
        	        		document.getElementById("tcalmuerzo").value  = data.TAlmuerzo;
        	        		document.getElementById("tccena").value  = data.TCena;
        	        		document.getElementById("agua").value  = data.NoVasoAgua;
        	        		document.getElementById("ald").value  = data.AlimentoDano;
        	        		document.getElementById("aln").value  = data.AlimentoNoGusta;
        	        		document.getElementById("alp").value  = data.AlimentoPreferido;
        	        		
        	        		
        	        		document.getElementById("grasa").value  = data.PorGrasa;
        	        		document.getElementById("musculo").value  = data.PorMasaMuscular;
        	        		document.getElementById("pagua").value  = data.PorAgua;
        	        		document.getElementById("masa").value  = data.MasaOsea;
        	        		document.getElementById("viscera").value  = data.GrasaVisceral;
        	        		document.getElementById("abdomen").value  = data.CinturaAbdominal;
        	        		document.getElementById("plan").value  = data.plan;
        	        		
        	        		document.getElementById("enfermedad").value  = data.enfermedad_actual;
        	        		document.getElementById("medicamento").value  = data.medicamento;
        	        		document.getElementById("suplemento").value  = data.suplemento;
        	        		document.getElementById("diarrea").checked = AsignarCheck(data.diarrea);
        	        		document.getElementById("flatulencia").checked  = AsignarCheck(data.flatulencia);
        	        		document.getElementById("acidez").checked  = AsignarCheck(data.acidez);
        	        		document.getElementById("estreñimiento").checked = AsignarCheck(data.estrenimiento);
        	        		
        	        		document.getElementById("Lcasa").checked = AsignarCheck(data.marcaE0);
        	        		document.getElementById("Ltrabajo").checked = AsignarCheck(data.marcaE1);
        	        		document.getElementById("Lotro").checked = AsignarCheck(data.marcaE2);
        	        		document.getElementById("Ocasa").checked = AsignarCheck(data.marcaE3);
        	        		document.getElementById("Ocafeteria").checked = AsignarCheck(data.marcaE4);
        	        		document.getElementById("Ocaseta").checked = AsignarCheck(data.marcaE5);
        	        		document.getElementById("Ochiclero").checked = AsignarCheck(data.marcaE6);
        	        		
        	        		document.getElementById("horadesayuno").value = data.horarioE0;
        	        		document.getElementById("refamhr").value = data.horarioE1;
        	        		document.getElementById("almh").value = data.horarioE2;
        	        		document.getElementById("refpmhr").value = data.horarioE3;
        	        		document.getElementById("cenhr").value = data.horarioE4;
        	        		
        	        		document.getElementById("tdesayuno").checked = AsignarCheckHora(data.horarioE0);
        	        		document.getElementById("refam").checked = AsignarCheckHora(data.horarioE1);
        	        		document.getElementById("talmu").checked = AsignarCheckHora(data.horarioE2);
        	        		document.getElementById("refpm").checked = AsignarCheckHora(data.horarioE3);
        	        		document.getElementById("cenaa").checked = AsignarCheckHora(data.horarioE4);
        	        		
        	        		
        	        		
        	        		CalcIMC();
        	        		
        	        		document.getElementById("verdura").value  = data.FrecF0;
        	        		document.getElementById("fruta").value  = data.FrecF1;
        	        		document.getElementById("pollo").value  = data.FrecF2;
        	        		document.getElementById("lacteo").value  = data.FrecF3;
        	        		document.getElementById("hamburguesa").value  = data.FrecF4;
        	        		document.getElementById("snack").value  = data.FrecF5;
        	        		document.getElementById("refresco").value  = data.FrecF6;
        	        		document.getElementById("galleta").value  = data.FrecF7;
        	        		document.getElementById("dulce").value  = data.FrecF8;
        	        		document.getElementById("embutido").value  = data.FrecF9;
        	        		document.getElementById("sopa").value  = data.FrecF10;
        	        		document.getElementById("fritura").value  = data.FrecF11;
        	        		document.getElementById("tortilla").value  = data.FrecF12;
        	        		document.getElementById("papa").value  = data.FrecF13;
        	        		document.getElementById("pasta").value  = data.FrecF14;
        	        		document.getElementById("arroz").value  = data.FrecF15;
        	        		document.getElementById("frijol").value  = data.FrecF16;
        	        		document.getElementById("pan").value  = data.FrecF17;
        	        		document.getElementById("huevo").value  = data.FrecF18;
        	        		//BuscarPaciente(data.PACIENTE_idPACIENTE);
        	        		
        	        		var aux= parseInt(data.totalA);
        	        		if(aux!=0){
        	        			for (i = 0; i < aux; i++) { 
        	        				CargaRecordatorio(i,data.Record[i].aliment,data.Record[i].calo,data.Record[i].TiempoCo,data.Record[i].Cantid,data.Record[i].Porci);
        	        			}
        	        			ActualizarTabla();
        	             	    
        	             	    if(habilitado==false){
        	             			document.getElementById("alimento").readOnly = false;	
        	             			document.getElementById("cantidada").readOnly = false;	
        	             			document.getElementById("porcion").readOnly = false;	
        	             			document.getElementById("BAlAgregar").disabled = false;
        	             			document.getElementById("BNAlimento").disabled = false;
        	             			habilitado=true;
        	             		}
        	        			
        	        		}
        	        		//CargaIMC(data.talla,data.peso);
        	        		//CargaPliegues(data.tricipital,data.subescapular);
        	        		//IDMulti=MID;
        	        	}else{
        	        		ERRORSQL=true;
        	        		MostrarMensajeServidor(data.descripcion);
        	        		
        	        	}
        	        	
        	        }
        		});
        	}
        	function CargaRecordatorio(ct,Ealim,Ecal,ETiempoCom,ECant,EMetrica){
        		
        		//alert(Ealim+","+Ecal+","+ETiempoCom+","+ECant+","+EMetrica);
				
        		var x=parseInt(ETiempoCom)-1;
        		var y = document.getElementById("TiempoComida").options;
        	    ArrTiempoCom[x]=y[x].text;
        	    
        	    
        	    var calorias=parseInt(Ecal);
    			var cant=parseInt(ECant);
    			
    			var z=parseInt(EMetrica)-1;
        		var metrica = document.getElementById("porcion").options;
        		
        		
        		
        		ArrComida[ct]=Ealim;	
				ArrCant[ct]=cant;
				ArrUnidad[ct]=metrica[z].text;						
				ArrKcal[ct]=cant*calorias;			
				ArrpComida[ct]=x;
				contp++;
        	}
        	function AsignarCheck(entrada){
        		var resultado=false;
        		if(entrada=='1'){
        			resultado=true;
        		}
        		return resultado;
        	}
        	function AsignarCheckHora(entrada){
        		var resultado=true;
        		if(entrada=='00:00:00'){
        			resultado=false;
        		}
        		return resultado;
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
		function CargaDPaciente(pnombre,pedad,psexo,pfacultad,entrada){
        		
        		var carnet="";
        		if(entrada=='A'){
        			carnet=validar_numerovacio('carnet');
            		
        		}else{
        			carnet=entrada;
        		}
        		carnetaccion=carnet;
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
	   	        		document.getElementById('nombre').value  = pnombre;
		        		document.getElementById('sexo').value  = psexo;
		        		document.getElementById('edad').value  = pedad;
		        		document.getElementById('facultad').value  = pfacultad;
	        			busqueda=true;
	        			document.getElementById("enfermedad").focus();
        		
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
    		        			document.getElementById("enfermedad").focus();
    		        	}else{	  
    		        		busqueda=false;
    		        		CargaFacultad();
    		        	}
    		        	
    		        }
    		    });
        		
        	}	
        	function AñadirAlimentoBD(){
        		var alim=validad_vacio('NuevoAl');
        		var cal=validar_numerovacio("NuevaCal");
        		var grupo=validad_vacio("NuevoGrupo");
        		if(alim=="null"||cal==0){
        			alert("Error, faltan valores a ingresar");
        		}else{
        			var action="agregar";
            		var cadena = ['a='+action,'alimento='+alim,'caloria='+cal,'grupo='+grupo].join('&');


            		$.ajax({
            	        url: "../Alimento",
            	        data: cadena,
            	  	    type: 'post',
            	        dataType: 'json',
            	        success: function(data){
            	        	if(data.resultado=='OK'){
            	        		document.getElementById('alimento').value  = alim.toLowerCase();
                		        document.getElementById('calorias').value  = data.caloria;
                		        
                		        document.getElementById('NuevoAl').value  = "";
                		        document.getElementById('NuevaCal').value  = "";
                		        
                		        document.getElementById("cantidada").focus();	
            	        	}else{
            	        		alert(data.descripcion);
            	        	}
            	        	
            	        	
            	        	
            	        }
            		});
        		}
        		
        		
        		
        	}
        	function validad_vacio(entrada){
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
        	function validar_check(entrada){
        		var texto="";
        		var cond;
        		cond=document.getElementById(entrada).checked;
        		if(cond==true){
        			texto="1";
        		}else{
        			texto="0";
        		}
        		return texto;
        	}

        	function enviar_datos(datos){
        		var resultado="";

        		$.ajax({
        	        url: "../ConsultaExterna",
        	        data: datos,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	if(data.resultado=='OK'){
                    		ERRORSQL=false;
                    		alert("Informacion almacenada");
            	        	idCE=data.ID;
            	        	document.getElementById("Guard").style.display = 'none';
            	        	document.getElementById("Mod").style.display = 'block';
                    		//MostrarMensajeServidor("Informacion almacenada con exito");
                    	}else{
                    		ERRORSQL=true;
                    		MostrarMensajeServidor("Error al almacenar");
                    	}
        	        	
        	        	
        	        }
        		});
        	}
        	function validar_hora(entrada){
        		var texto="";
        		texto=document.getElementById(entrada).value;
        		if(texto==""){
        			texto="0:00";
        		}
        		return texto;
        	}
        	function obtenerRegistro(){
        		var encabCom1="";
        		var contador=5;
        		for (i = 0; i < contador; i++) { 
        			encabCom1 += "%"+ArrTiempoCom[i];
        			
        			for (j = 0; j < ArrpComida.length; j++) { 
        				
        				
        			if((i==ArrpComida[j])&&(ArrpComida[j]!=-100)){
        				encabCom1+=","+ArrComida[j]+","+ArrCant[j]+","+ArrUnidad[j]+"!";
        			}
        			}
        			
        			
        		}
        		
        		
        		return encodeURIComponent(encabCom1);
        		
        	}
        	function Guardar(){
        		ERRORSQL=false;
        		if(carnetaccion!=""){
        			var action="guardar";
            		var carnet=document.getElementById('carnet').value;
            		
            		var variable1=validad_vacio('enfermedad');
            		var variable2=validad_vacio("medicamento");
            		var variable3=validad_vacio("suplemento");
            		var variable4=validar_check("diarrea");
            		var variable5=validar_check("flatulencia");
            		var variable6=validar_check("acidez");
            		var variable7=validar_check("estreñimiento");
            		var variable8=validar_check("fuma"); 
            		var variable9=validar_numerovacio("ncigarro");
            		var variable10=TextoSeleccion("fumafrec");
            		
            		var variable11=validar_check("ejercicio"); 
            		var variable12=validar_numerovacio("ejerciciotiempo");
            		var variable13=TextoSeleccion("ejerciciofrec");
            		var variable14=validar_check("bebidaalc"); 
            		var variable15=TextoSeleccion("bebidaalcfrec");
            		var variable16=validar_check("tdesayuno"); 
            		var variable17=validar_hora("horadesayuno");
            		var variable18=validar_check("refam"); 
            		var variable19=validar_hora("refamhr");
            		var variable20=validar_check("talmu"); 
            		
            		
            		         	
            		var variable21=validar_hora("almh");
            		var variable22=validar_check("refpm"); 
            		var variable23=validar_hora("refpmhr");
            		var variable24=validar_check("cenaa"); 
            		var variable25=validar_hora("cenhr");
            		var variable26=validar_check("Lcasa"); 
            		var variable27=validar_check("Ltrabajo");
            		var variable28=validar_check("Lotro"); 
            		var variable29=validar_check("Ocasa"); 
            		var variable30=validar_check("Ocafeteria"); 
            		
            		
            		var variable31=validar_check("Ocaseta"); 
            		var variable32=validar_check("Ochiclero"); 
            		var variable33=validar_numerovacio("tcdesayuno");
            		var variable34=validar_numerovacio("tcrefaccion");
            		var variable35=validar_numerovacio("tcalmuerzo");
            		var variable36=validar_numerovacio("tccena");
            		var variable37=validar_numerovacio("agua");
            		var variable38=validad_vacio("ald");
            		var variable39=validad_vacio("aln");
            		var variable40=validad_vacio("alp");

            		
            		var variable41=validad_vacio("dbaja");
            		var variable42=validad_vacio("dalta");
            		var variable43=validar_numerovacio("talla");
            		var variable44=validar_numerovacio("pesousual");
            		var variable45=validar_numerovacio("circunferencia");
            		var variable46=TextoSeleccion("constitucion");
            		
            		var variable47=validar_numerovacio("grasa");
            		var variable48=validar_numerovacio("pagua");
            		var variable49=validar_numerovacio("musculo");
            		var variable50=validar_numerovacio("masa");
            		var variable51=validar_numerovacio("viscera");
            		var variable52=validar_numerovacio("abdomen");
            		var variable53=validad_vacio("plan");
            		
            		var variable54=TextoSeleccion("verdura");
            		var variable55=TextoSeleccion("fruta");
            		var variable56=TextoSeleccion("pollo");
            		var variable57=TextoSeleccion("lacteo");
            		var variable58=TextoSeleccion("hamburguesa");
            		var variable59=TextoSeleccion("snack");
            		var variable60=TextoSeleccion("refresco");
            		
            		
            		var variable61=TextoSeleccion("galleta");
            		var variable62=TextoSeleccion("dulce");
            		var variable63=TextoSeleccion("embutido");
            		var variable64=TextoSeleccion("sopa");
            		var variable65=TextoSeleccion("fritura");
            		var variable66=TextoSeleccion("tortilla");
            		var variable67=TextoSeleccion("papa");
            		var variable68=TextoSeleccion("pasta");
            		var variable69=TextoSeleccion("arroz");
            		var variable70=TextoSeleccion("frijol");
            		
            		
            		var variable71=TextoSeleccion("pan");
            		var variable72=TextoSeleccion("huevo");
            		var variable73=obtenerRegistro();
            		
            		var variable74="";
            		var variable75="";
            		var variable76="";
            		var variable77="";
            		
            		if(busqueda==false){
                		variable74=validad_vacio('nombre');
                		variable75=validad_vacio('Sexo');
                		variable76=validad_vacio('fechaNac');
                		variable77=validad_vacio('Facultad');
                	}
            		
            		var cadena = [ 	'carnet='+ carnet,'a='+action
            			         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
            			         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'p10='+variable10
            			         	  ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p15='+variable15
            			         	  ,'p16='+variable16,'p17='+variable17,'p18='+variable18,'p19='+variable19,'p20='+variable20
            			         	  ,'p21='+variable21,'p22='+variable22,'p23='+variable23,'p24='+variable24,'p25='+variable25
            			         	  ,'p26='+variable26,'p27='+variable27,'p28='+variable28,'p29='+variable29,'p30='+variable30
            			         	  ,'p31='+variable31,'p32='+variable32,'p33='+variable33,'p34='+variable34,'p35='+variable35
            			         	  ,'p36='+variable36,'p37='+variable37,'p38='+variable38,'p39='+variable39,'p40='+variable40
            			         	  ,'p41='+variable41,'p42='+variable42,'p43='+variable43,'p44='+variable44,'p45='+variable45
            			         	  ,'p46='+variable46,'p47='+variable47,'p48='+variable48,'p49='+variable49,'p50='+variable50
            			         	  ,'p51='+variable51,'p52='+variable52,'p53='+variable53,'p54='+variable54,'p55='+variable55
            			         	  ,'p56='+variable56,'p57='+variable57,'p58='+variable58,'p59='+variable59,'p60='+variable60
            			         	  ,'p61='+variable61,'p62='+variable62,'p63='+variable63,'p64='+variable64,'p65='+variable65
            			         	  ,'p66='+variable66,'p67='+variable67,'p68='+variable68,'p69='+variable69,'p70='+variable70
            			         	  ,'p71='+variable71,'p72='+variable72,'p73='+variable73,'busqueda='+busqueda
                		         	   ,'p74='+variable74,'p75='+variable75,'p76='+variable76,'p77='+variable77].join('&');
            		
            	    enviar_datos(cadena);
            			         	
            		
        		}else{
        			ERRORSQL=true;
        			MostrarMensajeServidor("Error, realice la busqueda del paciente e intentelo nuevamente");
        			//alert("falta carnet");
        		}
        		
        	}
        	function TextoSeleccion(entrada){
        		var resultado="";
        		var e = document.getElementById(entrada);
    			resultado = e.options[e.selectedIndex].text;
    			return resultado;
        	}
        	function Modificar(){
        		ERRORSQL=false;
        		if(carnetaccion!=""){
        			var action="modificar";
            		var carnet=document.getElementById('carnet').value;
            		
            		var variable1=validad_vacio('enfermedad');
            		var variable2=validad_vacio("medicamento");
            		var variable3=validad_vacio("suplemento");
            		var variable4=validar_check("diarrea");
            		var variable5=validar_check("flatulencia");
            		var variable6=validar_check("acidez");
            		var variable7=validar_check("estreñimiento");
            		var variable8=validar_check("fuma"); 
            		var variable9=validar_numerovacio("ncigarro");
            		var variable10=TextoSeleccion("fumafrec");
            		
            		var variable11=validar_check("ejercicio"); 
            		var variable12=validar_numerovacio("ejerciciotiempo");
            		var variable13=TextoSeleccion("ejerciciofrec");
            		var variable14=validar_check("bebidaalc"); 
            		var variable15=TextoSeleccion("bebidaalcfrec");
            		var variable16=validar_check("tdesayuno"); 
            		var variable17=validar_hora("horadesayuno");
            		var variable18=validar_check("refam"); 
            		var variable19=validar_hora("refamhr");
            		var variable20=validar_check("talmu"); 
            		
            		
            		         	
            		var variable21=validar_hora("almh");
            		var variable22=validar_check("refpm"); 
            		var variable23=validar_hora("refpmhr");
            		var variable24=validar_check("cenaa"); 
            		var variable25=validar_hora("cenhr");
            		var variable26=validar_check("Lcasa"); 
            		var variable27=validar_check("Ltrabajo");
            		var variable28=validar_check("Lotro"); 
            		var variable29=validar_check("Ocasa"); 
            		var variable30=validar_check("Ocafeteria"); 
            		
            		
            		var variable31=validar_check("Ocaseta"); 
            		var variable32=validar_check("Ochiclero"); 
            		var variable33=validar_numerovacio("tcdesayuno");
            		var variable34=validar_numerovacio("tcrefaccion");
            		var variable35=validar_numerovacio("tcalmuerzo");
            		var variable36=validar_numerovacio("tccena");
            		var variable37=validar_numerovacio("agua");
            		var variable38=validad_vacio("ald");
            		var variable39=validad_vacio("aln");
            		var variable40=validad_vacio("alp");

            		
            		var variable41=validad_vacio("dbaja");
            		var variable42=validad_vacio("dalta");
            		var variable43=validar_numerovacio("talla");
            		var variable44=validar_numerovacio("pesousual");
            		var variable45=validar_numerovacio("circunferencia");
            		var variable46=TextoSeleccion("constitucion");
            		
            		var variable47=validar_numerovacio("grasa");
            		var variable48=validar_numerovacio("pagua");
            		var variable49=validar_numerovacio("musculo");
            		var variable50=validar_numerovacio("masa");
            		var variable51=validar_numerovacio("viscera");
            		var variable52=validar_numerovacio("abdomen");
            		var variable53=validad_vacio("plan");
            		
            		var variable54=TextoSeleccion("verdura");
            		var variable55=TextoSeleccion("fruta");
            		var variable56=TextoSeleccion("pollo");
            		var variable57=TextoSeleccion("lacteo");
            		var variable58=TextoSeleccion("hamburguesa");
            		var variable59=TextoSeleccion("snack");
            		var variable60=TextoSeleccion("refresco");
            		
            		
            		var variable61=TextoSeleccion("galleta");
            		var variable62=TextoSeleccion("dulce");
            		var variable63=TextoSeleccion("embutido");
            		var variable64=TextoSeleccion("sopa");
            		var variable65=TextoSeleccion("fritura");
            		var variable66=TextoSeleccion("tortilla");
            		var variable67=TextoSeleccion("papa");
            		var variable68=TextoSeleccion("pasta");
            		var variable69=TextoSeleccion("arroz");
            		var variable70=TextoSeleccion("frijol");
            		
            		
            		var variable71=TextoSeleccion("pan");
            		var variable72=TextoSeleccion("huevo");
            		var variable73=obtenerRegistro();
            		
            		var variable74="";
            		var variable75="";
            		var variable76="";
            		var variable77="";
            		
            		if(busqueda==false){
                		variable74=validad_vacio('nombre');
                		variable75=validad_vacio('Sexo');
                		variable76=validad_vacio('fechaNac');
                		variable77=validad_vacio('Facultad');
                	}
            		
            		var cadena = [ 	'ID='+idCE,'carnet='+ carnet,'a='+action
            			         	   ,'p1='+variable1,'p2='+variable2,'p3='+variable3,'p4='+variable4,'p5='+variable5
            			         	   ,'p6='+variable6,'p7='+variable7,'p8='+variable8,'p9='+variable9,'p10='+variable10
            			         	  ,'p11='+variable11,'p12='+variable12,'p13='+variable13,'p14='+variable14,'p15='+variable15
            			         	  ,'p16='+variable16,'p17='+variable17,'p18='+variable18,'p19='+variable19,'p20='+variable20
            			         	  ,'p21='+variable21,'p22='+variable22,'p23='+variable23,'p24='+variable24,'p25='+variable25
            			         	  ,'p26='+variable26,'p27='+variable27,'p28='+variable28,'p29='+variable29,'p30='+variable30
            			         	  ,'p31='+variable31,'p32='+variable32,'p33='+variable33,'p34='+variable34,'p35='+variable35
            			         	  ,'p36='+variable36,'p37='+variable37,'p38='+variable38,'p39='+variable39,'p40='+variable40
            			         	  ,'p41='+variable41,'p42='+variable42,'p43='+variable43,'p44='+variable44,'p45='+variable45
            			         	  ,'p46='+variable46,'p47='+variable47,'p48='+variable48,'p49='+variable49,'p50='+variable50
            			         	  ,'p51='+variable51,'p52='+variable52,'p53='+variable53,'p54='+variable54,'p55='+variable55
            			         	  ,'p56='+variable56,'p57='+variable57,'p58='+variable58,'p59='+variable59,'p60='+variable60
            			         	  ,'p61='+variable61,'p62='+variable62,'p63='+variable63,'p64='+variable64,'p65='+variable65
            			         	  ,'p66='+variable66,'p67='+variable67,'p68='+variable68,'p69='+variable69,'p70='+variable70
            			         	  ,'p71='+variable71,'p72='+variable72,'p73='+variable73,'busqueda='+busqueda
                		         	   ,'p74='+variable74,'p75='+variable75,'p76='+variable76,'p77='+variable77].join('&');
            		
            	    enviar_datos(cadena);
            			         	
            		
        		}else{
        			ERRORSQL=true;
        			MostrarMensajeServidor("Error, realice la busqueda del paciente e intentelo nuevamente");
        			//alert("falta carnet");
        		}
        		
        	}
        	function LimpiarElementos(){
        		document.getElementById('alimento').value="";
        		document.getElementById('cantidada').value="";
        		document.getElementById('calorias').value="";
        		document.getElementById("alimento").focus();
        	}
        	function AgregarAlimento(){
        		
        		var encontrado=false;
        		
        		var auxCaloria=document.getElementById("calorias").value;
        		var auxCantidad=document.getElementById("cantidada").value;
        		
        		if(auxCaloria!=""&&auxCantidad!=""){
        			
        			var x = document.getElementById("TiempoComida").selectedIndex;
        			var Al = (document.getElementById("alimento").value).toLowerCase();
        			
        			var calorias=parseInt(auxCaloria);
        			var cant=parseInt(auxCantidad);
        			
        			var e = document.getElementById("porcion");
        			var porcion = e.options[e.selectedIndex].text;
        			
        			for (i = 0; i <= contp; i++) { 
        				if((ArrComida[i]==Al)&&(ArrpComida[i]==x)){
        					ArrCant[i]=ArrCant[i]+cant;
        					ArrKcal[i]=calorias*ArrCant[i];
        					encontrado=true;
        					break;
        				}
        			}
        			if(encontrado==false){
        				ArrComida[contp]=Al;	
        				ArrCant[contp]=cant;
        				ArrUnidad[contp]=porcion;						
        				ArrKcal[contp]=cant*calorias;			
        				ArrpComida[contp]=x;
        				contp++;
        			}

        			ActualizarTabla();
        			LimpiarElementos();
        		}else{
        			alert("Error: Faltan datos a ingresar");
        		}
        		
        		
        	}
        	function EditarAlimento(entrada){
        		var auxcant="auxcant"+entrada;
        		document.getElementById(auxcant).readOnly = false;	
        	}

        	function ConfirmarEdicion(event,valor) {
        	    var char = event.which || event.keyCode;
        	    if(char == 13){ 
        	    	var auxcant="auxcant"+valor;
        	    	var auxCantidad=document.getElementById(auxcant).value;
        	    	if(auxCantidad!=""){
        	    		var cantidadOriginal=ArrCant[valor];
        	        	var caloriaOriginal= ArrKcal[valor]/cantidadOriginal;
        	        	
        	        	var cant=parseInt(auxCantidad);
        	        	
        	        	ArrCant[valor]=cant;
        	        	ArrKcal[valor]=cant*caloriaOriginal;
        	    	}
        	    		
        	    	ActualizarTabla();
        	    	
        	    }}
        	function EliminarAlimento(entrada){
        		ArrpComida[entrada]=-100;
        		ActualizarTabla();
        	}

        	function ActualizarTabla(){
        		var marco="<div class=\"table-responsive\"><table class=\"table\" border=\"1px\" >";
        	    var fintabla="</table></div>";
        	    var encabCom="";
        		document.getElementById("TablaAlimento").innerHTML= "";
        		var info="";
        		var Cantidad=0;
        		var Metrica=0;
        		var info="";
        		for (i = 0; i < 5; i++) { 
        			if(ArrTiempoCom[i]!=""){
        				encabCom += "<tr><th colspan=\"6\" bgcolor=\"#2D7C06\"><font color=\"white\">"+ArrTiempoCom[i]+"</font></th></tr>";
        				encabCom+="<tr><th>Alimento</th><th>Cantidad</th><th>Porcion</th><th>Kcal</th><th></th><th></th></tr>";
        				
        				for (j = 0; j < ArrpComida.length; j++) { 
        					
        					
        				if((i==ArrpComida[j])&&(ArrpComida[j]!=-100)){
        					encabCom+="<tr><td>"+ArrComida[j]+"</td><td>"
        					+"<input class=\"form-control\" id=\"auxcant"+j+"\" type=\"number\" value=\""+ArrCant[j]+"\" style=\"width: 65px;\" readonly onkeypress=\"ConfirmarEdicion(event,"+j+")\" />"
        					+"</td><td>"+ArrUnidad[j]+"</td><td>"+ArrKcal[j]+"</td><td>"
        					+"<button class=\"btn btn-default btn-lg\" onclick=\"EditarAlimento("+j+")\" >"
        				    + "<img src=\"../imagenes/edit2.png\" width=\"10\" height=\"8\" title=\"Editar\" /></button>"
        				    +"</td><td>"
        					+"<button class=\"btn btn-default btn-lg\" onclick=\"EliminarAlimento("+j+")\" >"
        				    + "<img src=\"../imagenes/eliminar2.png\" width=\"10\" height=\"8\" title=\"Eliminar\" /></button>"
        				     +"</td></tr>";
        				}
        				}
        			}
        			
        			
        			
        		}
        		var sumatoria=0;
        		for (z = 0; z < ArrKcal.length; z++) {
        			if(ArrpComida[z]!=-100){
        				sumatoria+=ArrKcal[z];
        			}
        			
        		}
        		var calculo = "<tr><td colspan=\"3\">Total</td><td>"+sumatoria+"</td><td></td><td></td></tr>"
        		
        		var NuevaTablaComida = marco + encabCom +calculo+ fintabla;
        		document.getElementById("TablaAlimento").innerHTML = NuevaTablaComida;
        		
        	}
        	function AgregarTiempoComida(){
        		var x = document.getElementById("TiempoComida").selectedIndex;
        	    var y = document.getElementById("TiempoComida").options;
        	    
        	    
        	    ArrTiempoCom[x]=y[x].text;
        	    
        	    ActualizarTabla();
        	    
        	    if(habilitado==false){
        			document.getElementById("alimento").readOnly = false;	
        			document.getElementById("cantidada").readOnly = false;	
        			document.getElementById("porcion").readOnly = false;	
        			document.getElementById("BAlAgregar").disabled = false;
        			document.getElementById("BNAlimento").disabled = false;
        			habilitado=true;
        		}
        		
        	}


        	jQuery(function(){
        		jQuery('#alimento').autocomplete({
        			source : function(request, response) {
        		           $.ajax({
        		                url : "../Alimento",
        		                type : "GET",
        		                data : {
        		                       term : request.term
        		                },
        		                dataType : "json",
        		                success : function(data) {
        		                      response(data);
        		                }
        		         });
        		      },
        		      select: function( event, ui ) {
        		          //alert( ui.item.value );
        		         // CargarAlimento(ui.item.value);
        		          var action="buscar";
        		      	cadena = [ 	'valor='   + ui.item.value,'a='+action].join('&');
        		      	$.ajax({
        		              url: "../Alimento",
        		              data: cadena,
        		        	    type: 'GET',
        		              dataType: 'json',
        		              success: function(data){
        		              	
        		             
        		              		
        		              		document.getElementById('alimento').value  = data.resultado[0].nombre;
        		        	        document.getElementById('calorias').value  = data.resultado[0].calorias;
        		        	        document.getElementById("cantidada").focus();	 
        		              		
        		              	
        		              	
        		              }
        		          });
        		         // document.getElementById('alimento').value  = ui.item.value;
        		          //document.getElementById('calorias').value  = "40";
        		          return false;
        		       }
        	    });
        	    

        	});

        	function CargarAlimento(texto){
        		var action="buscar";
        		cadena = [ 	'valor='   + texto,'a='+action].join('&');
        		$.ajax({
        	        url: "../Alimento",
        	        data: cadena,
        	  	    type: 'post',
        	        dataType: 'json',
        	        success: function(data){
        	        	
        	        	if(data.resultado=='OK'){
        	        		
        	        		document.getElementById('alimento').value  = data.resultado.nombre;
        	  	            document.getElementById('calorias').value  = data.resultado.calorias;
        	   	      		 
        	        		
        	        	}
        	        	
        	        }
        	    });
        	}
        	function CalcIMC(){
        		var talla=0;
    			var peso=0;
    			var imc=0;
    			var pesomax=0;
    			var pesomin=0;
    			var TempTalla="";
    			var TempPeso="";
    		
    			TempTalla=document.getElementById('talla').value;
    			TempPeso=document.getElementById('pesousual').value;
    			
    			if(TempTalla==""||TempPeso==""){
    				talla=0;
    				peso=0;
    				document.getElementById('imc').value  = "";
    			}else{
    				talla =	parseFloat(TempTalla);
    			    peso =	parseFloat(TempPeso)*0.453592;
    			    pesomax=(24.9 * (talla^2)) * 2.2;
    				pesomin=(18.5 * (talla^2)) * 2.2;
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
    			        	
    			        	document.getElementById('imc').value  = ""+imc.toFixed(2);
    			        	document.getElementById('diagnostico').value  = data.diagnostico;
    			        	document.getElementById('pesominimo').value  = ""+ pesomin.toFixed(2);
    			        	document.getElementById('pesomax').value  =""+ pesomax.toFixed(2);
    			        	document.getElementById('peso').value  =""+ peso.toFixed(2);
    			        }
    				});
    			}
        	}
        	function CalcularIMC(event) {
        	    var char = event.which || event.keyCode;
        	    if(char == 13){       	    
        	    	CalcIMC(); 
        		}
        	   
        	}
        	function Reconsulta(){
        		window.location.replace("http://localhost:8080/ModuloNutricion/ExamenesNutricion/Reconsulta.jsp?prodId="+idCE);
        	}

        	function CalculosVET(){
        		window.location.replace("http://localhost:8080/ModuloNutricion/ExamenesNutricion/CalculosVET.jsp?prodId="+idCE);
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
				<li><a href="http://localhost:8080/ModuloNutricion/TablasNutricion/MantenimientoConsultaExterna.jsp"><span class="glyphicon glyphicon-list-alt"></span>Catalogo</a></li>
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
        <h3 class="panel-title">Examen Consulta Externa</h3>
        </div>
        <div class="panel-body">
        
 <form action="../ConsultaExterna" method="post" class="form-inline" role="form" onsubmit="return false">
   <div class="container" >
  <ul class="nav nav-tabs" >
    <li class="active"><a data-toggle="tab" href="#home">Pagina1</a></li>
    <li><a data-toggle="tab" href="#menu1">Pagina2</a></li>
  </ul>
  
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <article>
      <div class="panel panel-primary">
      <div class="panel-heading">Datos Generales</div>
      <div class="panel-body">
      		
<div class="row">  
  <div class="form-group">
   
	<label for="NCarnet">Carnet/Codigo Personal</label>
	<input class="form-control" name="carnet" id="carnet" type="number" required/>
	
  </div>
  <div class="form-group">
    <label for="Ntipo">Paciente</label>
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
      		
      </div>
    </div>
     
      
      </article>
     
     <article>
     <div class="container">
	    <div class="row">
			<div class="col-sm-9" >
				<div class="panel panel-primary">
			      <div class="panel-heading">Antecedentes Medicos</div>
			      <div class="panel-body" align="center">
			      	
			      	<div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Enfermedades</label>
					  		<textarea class="form-control" name="enfermedad" id="enfermedad" cols="25" rows="5" ></textarea>
					                   
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsubescapular">Medicamentos</label>
					  		<textarea class="form-control" name="medicamento" id="medicamento" cols="25" rows="5" ></textarea>
					  		     
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Suplementos</label>
					  		<textarea class="form-control" name="suplemento" id="suplemento" cols="25" rows="5" ></textarea>
					  		
					  	</div>
					  </div>
			      	
			      	</div>
			    </div>
			</div>
			<div class="col-sm-3" >
				<div class="panel panel-primary">
			      <div class="panel-heading">Transtornos Digestivos</div>
			      <div class="panel-body" align="center">
			      
			      	<div class="row">
			      		<div class="form-group">
					  		<label for="Ltricipital">Diarrea</label>
					  		<input class="form-control" id="diarrea" type="checkbox" align="center" />
					                   
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsubescapular">Flatulencia</label>
					  		<input class="form-control" id="flatulencia" type="checkbox" align="center" />
					  		     
					  	</div>
			      	</div>
			      	<div class="row">
			      		<div class="form-group">
					  		<label for="Lsumapliegues">Acidez</label>
					  		<input class="form-control" id="acidez" type="checkbox" align="center" />
					  		
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Estreñimiento</label>
					  		<input class="form-control" id="estreñimiento" type="checkbox" align="center" />
					  		
					  	</div>
			      	</div>
			      	</div>
			    </div>
			</div>
		</div>
	</div>
  
  
  </article> 

 
<article>
	<div class="panel panel-primary">
      <div class="panel-heading">Estilo de vida</div>
      <div class="panel-body" align="center">
      
      	<div class="row">
  	<div class="form-group">
  		<label for="Ltricipital">Fuma</label>
  		<input class="form-control" id="fuma" type="checkbox" align="center" />
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsubescapular">No. Cigarrillos</label>
  		<input class="form-control" id="ncigarro"  min="0.1" type="number" step="any" style="width: 80px;" />
            
  	</div>
  	<div class="form-group">
  		<label for="Lsumapliegues">Frecuencia</label>
  		<select class="form-control" id="fumafrec">
							<option value="1">Ocasionalmente</option>
							<option value="2">Dos o tres veces por semana</option>
							<option value="3">Cuatro a cinco veces por semana</option>
							<option value="4">Diariamente</option>
						</select>
  
  	</div>

  	<div class="form-group">
  		<label for="Ltricipital">Ejercicio</label>
  		<input class="form-control" id="ejercicio" type="checkbox" align="center" />
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsubescapular">Tiempo en minutos</label>
  		<input class="form-control" id="ejerciciotiempo"  min="0.1" type="number" step="any" style="width: 80px;" />
            
  	</div>
  	<div class="form-group">
  		<label for="Lsumapliegues">Frecuencia</label>
  		<select class="form-control" id="ejerciciofrec">
							<option value="1">Ocasionalmente</option>
							<option value="2">Dos o tres veces por semana</option>
							<option value="3">Cuatro a cinco veces por semana</option>
							<option value="4">Diariamente</option>
						</select>
  
  	</div>

  	<div class="form-group">
  		<label for="Ltricipital">Bebidas alcoholicas</label>
  		<input class="form-control" id="bebidaalc" type="checkbox" align="center" />
                   
  	</div>
  	<div class="form-group">
  		<label for="Lsumapliegues">Frecuencia</label>
  		<select class="form-control" id="bebidaalcfrec">
							<option value="1">Ocasionalmente</option>
							<option value="2">Dos o tres veces por semana</option>
							<option value="3">Cuatro a cinco veces por semana</option>
							<option value="4">Diariamente</option>
						</select>
  
  	</div>

  </div>
      	
      	</div>
    </div>

  
  </article>
  
  <article>
  <div class="panel panel-primary">
      <div class="panel-heading">Habitos alimentarios</div>
      <div class="panel-body">
      	
      	<div class="container">
		    <div class="row">
				<div class="col-sm-6" >
				
					<div class="panel panel-primary">
				      <div class="panel-heading">Tiempos de comida</div>
				      <div class="panel-body" align="center">
				      		<div class="row">
				      			<div class="form-group" align="center">
							  		<label for="Ltricipital">Desayuno</label>
							  		<input class="form-control" id="tdesayuno" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="horadesayuno" id="horadesayuno" type="time" />
							  
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Ltricipital">Refaccion AM</label>
							  		<input class="form-control" id="refam" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="refamhr" id="refamhr" type="time" />
							  
							  	</div>
				      		</div>
				      		<div class="row">
				      			<div class="form-group" align="center">
							  		<label for="Ltricipital">Almuerzo</label>
							  		<input class="form-control" id="talmu" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="almh" id="almh" type="time" />
							  
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Ltricipital">Refaccion PM</label>
							  		<input class="form-control" id="refpm" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control"  id="refpmhr" type="time" />
							  
							  	</div>
				      		</div>
				      		<div class="row">
				      			<div class="form-group" align="center">
							  		<label for="Ltricipital">Cena</label>
							  		<input class="form-control" id="cenaa" type="checkbox" align="center" />
							                   
							  	</div>
							  	<div class="form-group" align="center">
							  		<label for="Lsumapliegues">Hr</label>
							  		<input class="form-control" name="cenhr" id="cenhr" type="time" />
							  
							  	</div>
				      		</div>
				      </div>
				    </div>
				
				</div>
				<div class="col-sm-6" >
					<div class="row">
						<div class="panel panel-primary">
			      <div class="panel-heading">Tiempo por comida(minutos)</div>
			      <div class="panel-body" align="center">
			      
			      <div class="row">
				  	<div class="form-group">
				  		<label for="Ltricipital">Desayuno</label>
				  		<input class="form-control" name="tcdesayuno" id="tcdesayuno" type="number" style="width: 70px;" />
				                   
				  	</div>
				  	<div class="form-group">
				  		<label for="Lsubescapular">Refaccion</label>
				  		<input class="form-control" name="tcrefaccion" id="tcrefaccion" type="number" style="width: 70px;" />
				  		     
				  	</div>
				  	<div class="form-group">
				  		<label for="Lsumapliegues">Almuerzo</label>
				  		<input class="form-control" name="tcalmuerzo" id="tcalmuerzo" type="number" style="width: 70px;" />
				  		
				  	</div>
				  	<div class="form-group">
				  		<label for="Lsumapliegues">Cena</label>
				  		<input class="form-control" name="tccena" id="tccena" type="number" style="width: 70px;" />
				  		
				  	</div>
				  </div>
			      
			      </div>
			    </div>
					</div>
					<div class="row">
						<div class="col-sm-6" >
							<div class="panel panel-primary">
							      <div class="panel-heading">Lugar de consumo</div>
							      <div class="panel-body" align="center">
							      		<div class="row">
										  	<div class="form-group">
										  		<label for="Lcasa">Casa</label>
										  		<input class="form-control" id="Lcasa" type="checkbox" align="center" />
										                   
										  	</div>
										  	<div class="form-group">
										  		<label for="Ltrabajo">Trabajo</label>
										  		<input class="form-control" id="Ltrabajo" type="checkbox" align="center" />
										  		     
										  	</div>
										  	<div class="form-group">
										  		<label for="Lotros">Otros</label>
										  		<input class="form-control" id="Lotro" type="checkbox" align="center" />
										  		
										  	</div>
										  </div>
							      </div>
							    </div>
						</div>
						<div class="col-sm-6" >
							<div class="panel panel-primary">
						      <div class="panel-heading">Origen de alimentos</div>
						      <div class="panel-body" align="center">
						      		 <div class="row">
									  	<div class="form-group">
									  		<label for="Ltricipital">Casa</label>
									  		<input class="form-control" id="Ocasa" type="checkbox" align="center" />
									                   
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsubescapular">Cafeteria</label>
									  		<input class="form-control" id="Ocafeteria" type="checkbox" align="center" />
									  		     
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsumapliegues">Caseta</label>
									  		<input class="form-control" id="Ocaseta" type="checkbox" align="center" />
									  		
									  	</div>
									  	<div class="form-group">
									  		<label for="Lsumapliegues">Chiclero</label>
									  		<input class="form-control" id="Ochiclero" type="checkbox" align="center" />
									  		
									  	</div>
									  </div>
						      </div>
						    </div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
   
		    <div class="row">
			
			
				<div class="panel panel-primary">
			      <div class="panel-heading">Otros</div>
			      <div class="panel-body" align="center">
			      
			        <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Consumo de Agua(Vasos)</label>
					  		<input class="form-control" name="agua" id="agua" type="number"  />
					                  
					  	</div>
					  	
					  	<div class="form-group">
					  		<label for="Lsubescapular">Alimentos que le hacen daño</label>
					  		<textarea class="form-control" name="ald" id="ald" cols="20" rows="5" ></textarea>
					            
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Alimentos que no le gustan</label>
					  		<textarea class="form-control" name="aln" id="aln" cols="20" rows="5" ></textarea>
					        
					  		
					  	</div>
					  	<div class="form-group">
					  		<label for="Lsumapliegues">Alimentos preferidos</label>
					  		<textarea class="form-control" name="alp" id="alp" cols="20" rows="5" ></textarea>
					        
					  		
					  	</div>
					  </div>
			      
			      </div>
			    </div>
			
			
			
		</div>
		
      	</div>
    </div>
  
  	
  
  


  </article>  
  

   
    </div>
    <div id="menu1" class="tab-pane fade">
    	<article>
    		<div class="container">
    			 <div class="row">
				    <div class="col-sm-9" >
				    
			<div class="panel panel-primary">
		      <div class="panel-heading">Recordatorio de 24 horas</div>
		      <div class="panel-body">
		      	
					  <div class="row">
					  		<div class="form-group">
						    <label>Tiempo de comida</label>
						    <select class="form-control" id="TiempoComida" name="TiempoComida">
													<option >Desayuno</option>
													<option >Refaccion AM</option>
													<option >Almuerzo</option>
													<option >Refaccion PM</option>
													<option >Cena</option>
												</select>
						</div>
						<div class="form-group">
						     <label for="BNuevo">Agregar</label>			
							<button class="btn btn-default btn-lg" onclick="AgregarTiempoComida()" >
						     <img src="../imagenes/th.jpg" width="20" height="15" title="Tiempo" /></button>
							
						</div>
					  </div>
					  <br>
					  <div id="TablaAlimento" class="row">
					  
					 </div>
					  <br>
					  <div class="row">
					  	<div class="form-group">
						    <label>Alimento</label>
						    <input class="form-control autocomplete" id="alimento" name="alimento" placeholder="Ingresa alimento" readonly/>
						</div>
						<div class="form-group">
						    <label>Calorias</label>
						    <input class="form-control" id="calorias" name="calorias" style="width: 70px;" readonly />
						</div>
						<div class="form-group">
						    <label>Cantidad</label>
						    <input class="form-control" id="cantidada" name="cantidada" type="number" style="width: 70px;" readonly required />
						</div>
						<div class="form-group">
						    <label for="Ntipo">Porcion</label>
						    <select class="form-control" name="porcion" id="porcion" readonly>
													<option value="1" >U</option>
													<option value="2" >ml</option>
												</select>
						  </div>
						  <div class="form-group">
						    <label for="BAgregar">Agregar</label>			
							<button class="btn btn-default btn-lg" id="BAlAgregar" onclick="AgregarAlimento()" disabled>
						     <img src="../imagenes/agregar.png" width="20" height="15" title="Agregar" /></button>
							
						  </div>
						<div class="form-group">
						    <label for="BNuevo">Nuevo</label>				
							<button class="btn btn-default btn-lg" id="BNAlimento" data-toggle="modal" data-target="#VentanaNuevoAlimento" disabled>
						     <img src="../imagenes/AgregarAlimento.jpg" width="20" height="15" title="Nuevo alimento" /></button>
							
							<div class="modal fade" id="VentanaNuevoAlimento" role="dialog">
							    <div class="modal-dialog modal-sm">
							      <div class="modal-content">
							        <div class="modal-header">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Nuevo Alimento</h4>
							        </div>
							        <div class="modal-body" align="center">
							      
							          	<div class="row">
								      		<div class="form-group">
												    <label>Alimento</label>
												    <input class="form-control" id="NuevoAl"  type="text" style="width: 100px;" />
												</div>
												<div class="form-group">
												    <label>Calorias</label>
												    <input class="form-control" id="NuevaCal"  type="number"  style="width: 70px;"/>
												</div>
												<div class="form-group">
												    <label>Grupo</label>
												     <select class="form-control" id="NuevoGrupo">
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
								    
							        </div>
							        <div class="modal-footer">
							          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="AñadirAlimentoBD()">Guardar</button>
							          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
							        </div>
							      </div>
							    </div>
							  </div>
							
						</div>
					</div>
		      	<div class="row">
		      		<div class="form-group">
						    <label>Dieta Baja en</label>
						    <input class="form-control" id="dbaja" name="dbaja" type="text" />
						</div>
						<div class="form-group">
						    <label>Dieta Alta en</label>
						    <input class="form-control" id="dalta" name="dalta" type="text"  />
						</div>
		      	</div>
		      </div>
		    </div>	    
						



<div class="panel panel-primary">
      <div class="panel-heading">Evaluacion Antropometrica</div>
      <div class="panel-body">
      
      	<div class="row">
				<div class="form-group">
						<label>Talla(m)</label>
						<input class="form-control" id="talla" name="talla" type="number" style="width: 70px;" step="any"  />
				</div>
				<div class="form-group">
						<label>Peso(Lbs)</label>
						<input class="form-control" id="pesousual" name="pesousual" type="number" style="width: 70px;" onkeypress="CalcularIMC(event)"/>
				</div>
				<div class="form-group">
						<label>Peso minimo(Lbs)</label>
						<input class="form-control" id="pesominimo" name="pesominimo" type="number" style="width: 120px;" readonly />
				</div>
			
				<div class="form-group">
						<label>Peso maximo(Lbs)</label>
						<input class="form-control" id="pesomax" name="pesomax" type="number"  style="width: 120px;" readonly />
				</div>
				<div class="form-group">
						<label>Circunferencia de muñeca</label>
						<input class="form-control" id="circunferencia" name="circunferencia" type="number"  style="width: 170px;"/>
				</div>
				<div class="form-group">
						<label>Constitucion osea</label>
						<select class="form-control" id="constitucion">
								<option value="1">Pequeña</option>
								<option value="2">Mediana</option>
								<option value="3">Grande</option>
						</select>
				</div>
			</div>	
      
      </div>
    </div>


<div class="panel panel-primary">
      <div class="panel-heading">Registro</div>
      <div class="panel-body">
      		<div class="row">
					<div class="form-group">
							<label>Peso (kg)</label>
							<input class="form-control" id="peso" name="peso" type="number" style="width: 70px;" readonly/>
					</div>
					<div class="form-group">
							<label>IMC</label>
							<input class="form-control" id="imc" name="imc" type="number" readonly  style="width: 70px;"/>
					</div>
				
					<div class="form-group">
							<label>Diagnostico</label>
							<input class="form-control" id="diagnostico" name="diagnostico" readonly />
					</div>
					</div>
					<div class="row">
					<div class="form-group">
							<label>% de Grasa</label>
							<input class="form-control" id="grasa" name="grasa" type="number" style="width: 70px;" />
					</div>
					<div class="form-group">
							<label>% de masa muscular</label>
							<input class="form-control" id="musculo" name="musculo" type="number" style="width: 125px;" />
					</div>
				
					
					<div class="form-group">
							<label>% de Agua</label>
							<input class="form-control" id="pagua" name="pagua" type="number"  style="width: 70px;"/>
					</div>
					<div class="form-group">
							<label>Masa Osea</label>
							<input class="form-control" id="masa" name="masa" type="number" style="width: 70px;" />
					</div>
			
					<div class="form-group">
							<label>Grasa Visceral</label>
							<input class="form-control" id="viscera" name="viscera" type="number"  style="width: 70px;"/>
					</div>
					<div class="form-group">
							<label>Cintura Abdominal</label>
							<input class="form-control" id="abdomen" name="abdomen" type="number" style="width: 70px;" />
					</div>
					
				
				</div>
      
      </div>
    </div>



<div class="panel panel-primary">
      <div class="panel-heading">Planificacion</div>
      <div class="panel-body" align="center">
      		<div class="row">
			<div class="form-group">
					<label>Planificacion del tratamiento -Metas-</label>
					<textarea class="form-control" id="plan" name="plan" cols="60" rows="15" ></textarea>
			</div>
		
		</div>	
      </div>
    </div>
	
				    </div>
				    
				    <div class="col-sm-1" >
				    </div>
				    <div class="col-sm-3" >
				    <div class="panel panel-primary">
      <div class="panel-heading">Frecuencia de consumo</div>
      <div class="panel-body">
				    	
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Verduras</label>
					  		<select id="verdura" class="form-control" >
					  			<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Frutas</label>
					  		<select id="fruta" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Carne(res,cerdo), pollo, pescado</label>
					  		<select id="pollo" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Lacteos</label>
					  		<select id="lacteo" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Hamburguesas, pizza, pollo frito</label>
					  		<select id="hamburguesa" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Snacks (papalinas, tortrix, ricitos, etc)</label>
					  		<select id="snack" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Refrescos embasados</label>
					  		<select id="refresco" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Galletas, pasteles, pan dulce</label>
					  		<select id="galleta" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Dulces, chocolates, chicles</label>
					  		<select id="dulce" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Embutidos</label>
					  		<select id="embutido" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Sopas instantaneas</label>
					  		<select id="sopa" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Frituras, chicharrones, carnitas</label>
					  		<select id="fritura" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Tortillas</label>
					  		<select id="tortilla" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Papas</label>
					  		<select id="papa" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Pasta</label>
					  		<select id="pasta" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Arroz</label>
					  		<select id="arroz" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Frijol</label>
					  		<select id="frijol" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Pan</label>
					  		<select id="pan" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  
					  <div class="row">
					  	<div class="form-group">
					  		<label for="Ltricipital">Huevo</label>
					  		<select id="huevo" class="form-control" >
				            	<option value="1">No consume</option>
				            	<option value="2">Ocasional</option>
				                <option value="3">Semanal</option>
				                <option value="4">Mensual</option>
				                <option value="5">Diario</option>
				            </select>        
					  	</div>
					  </div>
					  </div>
    </div>
					  
				    </div>
				  </div>
    		</div>
    	</article>
    </div>
  </div>
  
  </div>
  </br>
            <div class="row" align="center"  id="Mod">
            <div class="form-group">
						     <label for="BNuevo">Modificar</label>			
							<button class="btn btn-default btn-lg" onclick="Modificar()" >
						     <img src="../imagenes/guardado.png" width="80" height="60" title="Modificar" /></button>
							
			</div>
			<div class="form-group" >
						     <label for="BNuevo">Reconsulta</label>			
							<button class="btn btn-default btn-lg" onclick="Reconsulta()" >
						     <img src="../imagenes/reco.jpg" width="80" height="60" title="Reconsulta" /></button>
							
			</div>
			<div class="form-group" >
						     <label for="BNuevo">Calculos VET</label>			
							<button class="btn btn-default btn-lg" onclick="CalculosVET()" >
						     <img src="../imagenes/vet.jpg" width="80" height="60" title="CalculosVET" /></button>
							
			</div>
			</div>
			<div class="row" align="center" id="Guard">
            <div class="form-group" >
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