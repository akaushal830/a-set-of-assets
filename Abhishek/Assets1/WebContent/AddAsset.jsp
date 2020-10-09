<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Asset</title>
</head>
<body>

	<form method = "post" action="AddAssetServlet">
		Category: <input type="text" name="category"><br>
		<a href = "AddCategory.jsp">Click to add category...</a><br>
		Subcategory: <input type="text" name="subcategory"><br>
		Description: <input type="text" name="description"><br>
		
		<input type="submit" name="Add Asset">
	</form>

</body>
</html>