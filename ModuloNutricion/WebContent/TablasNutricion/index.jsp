<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link rel="stylesheet" type="text/css" href="../CSS/flexigrid/flexigrid/flexigrid.css">
<script type="text/javascript" src="../jquery/flexigrid/jquery.js"></script>
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




//This function adds paramaters to the post of flexigrid. You can add a verification as well by return to false if you don't want flexigrid to submit			
function addFormData()
	{
	
	//passing a form object to serializeArray will get the valid data from all the objects, but, if the you pass a non-form object, you have to specify the input elements that the data will come from
	var dt = $('#sform').serializeArray();
	$("#flex1").flexOptions({params: dt});
	return true;
	}

</script>