<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Asset</title>
</head>
<body>

	<form method = "post" action="AddCategoryServlet">
		Category Name: <input type="text" name="categoryname"><br>
		Lending Period: <input type="number" name="lendingperiod"><br>
		Fine: <input type="number" name="fine"><br>
		Ban Period: <input type="number" name="banperiod"><br>
		
		<input type="submit" name="Add Category">
	</form>

</body>
</html>