<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body onload="CargaInicio()">
<script type="text/javascript">
function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,    
    function(m,key,value) {
      vars[key] = value;
    });
    return vars;
  }
  
	function CargaInicio(){
		var MID = getUrlVars()["p"];
		
		
		if(MID!=undefined){
			if(MID=="1"){
				<jsp:include page="RegistroAlimento.jsp" />
			}
			//alert("p vale:"+MID);
		}else{
			alert("naeda");
		}
	}
</script>
</body>
</html>