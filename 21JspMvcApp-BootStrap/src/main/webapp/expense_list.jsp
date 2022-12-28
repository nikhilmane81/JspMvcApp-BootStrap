<%@page import="java.util.List"%>
<%@page import="com.nikhil.service.ExpenseServiceImplementation"%>
<%@page import="com.nikhil.service.ExpenseService"%>
<%@page import="com.nikhil.model.Expense"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	ExpenseService expenseService = new ExpenseServiceImplementation();
	List<Expense> expenses = expenseService.getAll(0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body class="m-4">
	<table class="table table-hover table-bordered m-4" >
		<thead class="thead-light">
			<tr>
				<th scope="col">ItemName</th>
				<th scope="col">Price</th>
				<th scope="col">Quantity</th>
				<th scope="col">Date of Purchase</th>
			</tr>
		</thead>
		<tbody>
			<% for(Expense expense : expenses){ %>
				<tr>
					<td><%=expense.getItemName()%></td>
					<td><%=expense.getPrice()%></td>
					<td><%=expense.getQuantity()%></td> 
					<td><%=expense.getDop()%></td>
					<td><a href="expense_delete.jsp?itemId=<%=expense.getItemId()%>" ><button type="button">Delete</button></a></td>
					<td><a href="expense_update_form.jsp?itemId=<%=expense.getItemId()%>" ><button type="button">Update</button></a></td>
				</tr>
			<% } %>
		</tbody>
	</table>
	<a href="expense_add_form.jsp"><button type="button">Back</button></a>
	
</body>
</html>