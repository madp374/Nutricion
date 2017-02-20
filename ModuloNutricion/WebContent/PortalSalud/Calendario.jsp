<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        <head>
       
       <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">
		<link rel="shortcut icon" href="http://usalud.usac.edu.gt/favi.ico" type="image/x-icon">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   

  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
        
		
		<link href="../CSS/estilo.css" rel="stylesheet" type="text/css" media="screen">

	  	
	    
	   
    	
    	<style type="text/css">
			
		
			.page-header {
			    padding-bottom: 9px;
			    margin: 0px 0 0px;
			}
			.container {
			    width: 95%;
			    padding-top:15px;
			}
			
			.panel-heading {
			    padding: 6px 15px;
			    }
			
			
		</style>
		
		
	
		
    	
    
		 
		 
  <script type='text/javascript' src='../jquery/Calendario/libs/jquery-1.4.4.min.js'></script>
  <script type='text/javascript' src='../jquery/Calendario/libs/jquery-ui-1.8.11.custom.min.js'></script>
	<link rel='stylesheet' type='text/css' href='../jquery/Calendario/libs/css/smoothness/jquery-ui-1.8.11.custom.css' />
  <link rel='stylesheet' type='text/css' href='../jquery/Calendario/jquery.weekcalendar.css' />
  <style type='text/css'>
  body {
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    margin: 0;
  }

  h1 {
    margin: 0;
    padding: 0.5em;
    color: #000000;
    font-size:11pt;
  }

  p.description {
    font-size: 0.8em;
    padding: 0 1em 1em;
    margin: 0;
  }

  #message {
    font-size: 0.7em;
    position: absolute;
    top: 1em;
    right: 1em;
    width: 350px;
    display: none;
    padding: 1em;
    background: #ffc;
    border: 1px solid #dda;
  }
  div.ui-datepicker{
	 font-size:10px;
	}
  </style>
  <script type='text/javascript' src='../jquery/Calendario/libs/date.js'></script>
  <script type='text/javascript' src='../jquery/Calendario/jquery.weekcalendar.js'></script>
  <script type="text/javascript" src="../jquery/es.js"></script>
  <script type='text/javascript'>


  $( function() {
	    $( "#datepicker" ).datepicker({ 
	    	dateFormat: 'mm/dd/yy',
	    	changeYear: true,
	    	changeMonth: true,
	    	yearRange: "-100:+0",
	    	monthNames: [ "enero","febrero","marzo","abril","mayo","junio",
	    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
	    	monthNamesShort: [ "enero","febrero","marzo","abril","mayo","junio",
	    	    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
	    	          	dayNames: [ "domingo","lunes","martes","miércoles","jueves","viernes","sábado" ],
	    	          	dayNamesShort: [ "dom","lun","mar","mié","jue","vie","sáb" ],
	    	          	dayNamesMin: [ "dom","lun","mar","mie","jue","vie","sab" ],
	    	          	
	    	          	onSelect: function() {
	    	          		$('#calendar').weekCalendar("gotoWeek", new Date($('#datepicker').val()));
	    	          	  }
	    	});
	  } );
  
  $(document).ready(function() {

    $('#calendar').weekCalendar({
      data:function(start, end, callback) {
    	  
      	
     	 $.ajax({
     	        url: "../Calendario",
     	        type: 'POST',
     	        dataType: 'json',
			  	  	success:    function(json) {
     	        	
     	            if ($.isArray(json)) { 
     	                $.each(json, function(key, value) { 
     	                	
     	                	value.start = new Date(value.start_year,value.start_month,value.start_day,value.start_hour,value.start_minute); 
     	                    value.end =new Date(value.end_year,value.end_month,value.end_day,value.end_hour,value.end_minute); 
     	                });
     	            }
     	            callback(json);
     	        }
     	    });


     		},
      firstDayOfWeek: $.datepicker.firstDay,
      shortDays: [ "dom","lun","mar","mié","jue","vie","sáb" ],
      longDays: [ "domingo","lunes","martes","miércoles","jueves","viernes","sábado" ],
      shortMonths: [ "enero","febrero","marzo","abril","mayo","junio",
	    	          	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
      longMonths: [ "enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre" ],
      switchDisplay: {'1 day': 1, '3 next days': 3, 'full week': 7},
      timeslotsPerHour: 4,
      businessHours: { start: 7.00,end: 19.00,limitDisplay:true},
      readonly: true,
      height: function($calendar){
        return $(window).height() - $('h1').outerHeight() - $('.description').outerHeight();
      }
    });
  });
  
</script>
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
	
	</form>
	
       		 
  </div>
</header>

<div class="row col-sm-3">
<div class="row" align="center">
	<div id="datepicker"></div>
</div>
<br>
<div class="row" align="center">
	<button type="button" class="btn btn-primary" Style="width:70%;" onclick="CambioMes()">Mensual</button>
</div>
<br>
<div class="row" align="center">
	<button type="button" class="btn btn-success" Style="width:70%;" onclick="Regresar()">Regresar</button>
</div>
	
</div>
&nbsp;
<div class="row col-sm-9">
	<div id="calendar" ></div>
</div>
           


        	
 
        <footer class="row col-sm-12">
        <div class="panel panel-body">
        <p>Edificio Bienestar Estudiantil 3er Nivel, Ciudad Universitaria Zona 12, Guatemala C.A TELEFONO: 24188000 FAX:24189633</p>
        </div>
        </footer>
        </div>
        </div>
<script type="text/javascript">

function Regresar(){
	window.location.replace("/ModuloNutricion/PortalSalud/InicioNutricion.jsp");
}
function CambioMes(){
	window.location.replace("/ModuloNutricion/PortalSalud/cal2.jsp");
}
</script>
        </body>

        </html>