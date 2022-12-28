<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Tracker</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container mt-4">
<h1>Expense Tracker Form</h1>
<div class="card">
<div class="card-body">
	<form id="form-1" action="expense_add.jsp" method="post">
		<div class="form-group row">
		<label class="col-sm-2 col-form-label">Item Name</label>
		<div class="col-sm-7">
		<input type="text" name="itemName" placeholder="Enter item name" class="form-control">
		</div>
		</div>
		<div class="form-group row">
		<label class="col-sm-2 col-form-label">Price</label>
		<div class="col-sm-7">
		<input type="text" name="price" placeholder="Enter price" class="form-control">
		</div>
		</div>
		<div class="form-group row">
		<label class="col-sm-2 col-form-label">Quantity</label>
		<div class="col-sm-7">
		<input type="number" name="quantity" placeholder="Enter quantity" class="form-control">
		</div>
		</div>
		<div class="form-group row">
		<label class="col-sm-2 col-form-label">Date</label>
		<div class="col-sm-7">
		<input type="date" name="dop" placeholder="select date yyyy-mm-dd" class="form-control">
		</div>
		</div>
		<button type="submit"> Add</button>
		<br></br>
		<a href="expense_list.jsp"><button type=button>View List</button></a>
	</form>
	</div>
	</div>
	</div>
</body>
</html>