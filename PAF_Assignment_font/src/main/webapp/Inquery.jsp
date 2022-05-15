<%@page import="com.Inquery"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" 
	crossorigin="anonymous">
	
<script src="jquery-3.6.0.js" type="text/javascript"></script>
<script src="Inquery.js" type="text/javascript"></script>

<style type="text/css">
#divInquiryGrid{   padding-top:20px; padding-left: 50px; background-color:#b2b9d1;}
.frm{ padding-top:20px; padding-right: 50px; background-color:#a1abc9; border-right: 1px solid grey; }
</style>

<title>Inquery Management</title>
</head>
<body style="background-image: url('inc.png');">


	<div class="container" style="box-shadow: 1px 15px 30px #404037; background-color: #dcdee3;" >
	<h1 style="margin:20px 0px 20px 400px; padding-top: 10px;">Inquery Management</h1>
	<hr>
	
	<div class="row">
			<div class="col-4 frm">				
				<form id="formInquiry" name="formInquiry" action="">
				
					Inquiry Title: <input id="title" name="title" type="text"
						class="form-control form-control-sm"> <br> 
						
					Inquiry Description: <input id="desc" name="desc" type="text"
						class="form-control form-control-sm"> <br> 
						
					Inquiry Payment No: <input id="payNo" name="payNo" type="text"
						class="form-control form-control-sm"> <br> 
						
					Address: <input id="addr" name="addr" type="text"
						class="form-control form-control-sm"> <br>
						
					Inquiry Contact No: <input id="conNo" name="conNo" type="text"
						class="form-control form-control-sm"> <br> 
						
						<input style="width: 50%;" id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> 
						
						<input type="hidden" id="hidInquiryIDSave" name="hidInquiryIDSave" value="">
						
				</form>
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				
				<br>
				
				</div>
				
				<div class="col-8"  id="divInquiryGrid">
				
					<%
					Inquery incObj = new Inquery();
					out.print(incObj.readInquiry());
					%>
					
				</div>
		</div>
		
		</div>
</body>
</html>
