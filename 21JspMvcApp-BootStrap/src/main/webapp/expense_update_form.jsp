<%@page import="com.nikhil.model.Expense"%>
<%@page import="com.nikhil.service.ExpenseServiceImplementation"%>
<%@page import="com.nikhil.service.ExpenseService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
 	String p1 = request.getParameter("itemId");
 	int id = Integer.parseInt(p1);
 	ExpenseService expenseService = new ExpenseServiceImplementation();
 	Expense expense = expenseService.getById(id);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Updater</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<div class="container mt-4">
<h1>Expense Updater</h1>
<div class="card">
<div class="card-body">
	<form action="expense_update.jsp" method="post">
	<input type="hidden" name="itemId" value="<%=expense.getItemId()%>">
	<div class="form-group row">
		<label class="col-sm-2 col-form-label" id="label-1">Item Name</label>
		<div class="col-sm-7">
		<input type="text" name="itemName" value="<%=expense.getItemName() %>" >
	</div> </div>
		<div class="form-group row">
		<label class="col-sm-2 col-form-label">Price</label>
		<div class="col-sm-7">
		<input type="text" name="price" value="<%=expense.getPrice() %>" class="form-control">
		</div></div>
		<div class="form-group row">
		<label class="col-sm-2 col-form-label">Quantity</label>
		<div class="col-sm-7">
		<input type="number" name="quantity" value="<%=expense.getQuantity() %>" class="form-control">
		</div></div>
		<div class="form-group row">
		<label class="col-sm-2 col-form-label">Date</label>
		<div class="col-sm-7">
		<input type="date" name="dop" value="<%=expense.getDop() %>" class="form-control">
		</div ></div>
		<button type="submit">Update</button>
	</form>
	</div>
	</div>
	</div>
</body>
</html>