<%@page import="java.util.ArrayList"%>
<%@page import="com.hsbc.model.BorrowedAssetBean"%>
<%@ taglib  prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.hsbc.dao.AssetDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	List<BorrowedAssetBean> assets = new ArrayList<>();
	pageContext.setAttribute("assets" , assets);
	//System.out.println("size of array list after creating: " + size);
	AssetDao dao = new AssetDao();
	assets = dao.showBorrowedAssets(3);
	int size = assets.size();
%>
<!DOCTYPE html>
<html>
<head>
	<title>Return</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="ISO-8859-1">
<style>
	/* Split the screen in half */
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
footer {
  background-color: #e9e9e9;
  text-align: center;
  color: black;
  z-index: 22;
  left: 0;
  width: 100%;
  height: 7%;
  bottom: 0;
  position: fixed;
}
.split {
  height: 100%;
  width: 50%;
  position: absolute;
  z-index: 1;
  top: 5;
  overflow-x: hidden;
  padding-top: 20px;

}

/* Control the left side */
.left {
  left: 0;
  background-color: black;/*#e9eeed*/ 
  background-image: url("spacedot.gif");
  background-repeat: no-repeat;
  background-size: 100% 100%;
  color: white;
  position: fixed;
}

/* Control the right side */
.right {
  right: 0;
  background-color: #f4f3f3;
}

/* If you want the content centered horizontally and vertically */
.centered {
  position: relative;
  top: 25%;
  left: 35%;
  transform: translate(5%, -50%);
  text-align: left;
}

/* Style the image inside the centered container, if needed */
.centered img {
  width: 150px;
  border-radius: 65%;
}
td {
padding-left: 80px; 
padding-top: 5px;
padding-bottom: 5px;
padding-right: 60px;
}
ol {
	padding-left: 120px;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
    z-index: 100;
  width:100%;
  position: fixed;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #000000;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 200px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }

</style>
<script type = "text/javascript">
         <!--
            function getConfirmation() {
               var retVal = confirm("Do you want to return ?");
               if( retVal == true ) {
                  window.location.href="returnTrans.html";
                  return true;
               } else {
                  return false;
               }
            }
         //-->
      </script>  
</head>
<body>
<div class="topnav">
  <a href="userHomepage.jsp">Home</a>
  <a href="borrowAssets.jsp">Assets</a>
  <a class="active" href="">Return</a>
  <a href="userMessage.jsp">Messages</a>
  <div class="search-container">
    <form action=""><!--
      <input type="text" placeholder="Search.." name="search">
      <input type="submit" name="Search" value="Submit">-->
      <a href="">Logout</a>
    </form>
  </div>
</div>

<div class="split left">
  <div class="centered">
    <img src="face.png" alt="USER" style="left: 40%;">
  </div>
  <br><br><br><br><br>
  <table class="left" align="left">
  	<tr>
  		<td><ul><li>User Name</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>
  	<tr>
  		<td><ul><li>Employee ID</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>
  	<tr>
  		<td><ul><li>Name</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>
  	<tr>
  		<td><ul><li>Telephone</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>
 	<tr>
  		<td><ul><li>Email</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>
    	   
    </table>
</div>
<div class="split right">
	<br><br><br><br><br>
    <h2 style="text-shadow: 4px 4px 2px #A0A0A0" align="center">Return items</h2><br><br><br>
   	<p align="center">
    <!--<a href="" onclick="window.open('userLogin.html', 'Return', 'width=2000,height=2000')">return</a>-->
    <!-- <form method = "get" action = "userReturn.jsp">
         <input type = "button" value = "Return" onclick = "getConfirmation();" align="center">
     </form>  -->
     
     <table border="1">
		<tr>
			<th>Transaction ID</th>
			<th>User ID</th>
			<th>Asset ID</th>
			<th>Issue Date</th>
			<th>Due Date</th>
			<th>Borrow Status</th>
			
		</tr>
		
		<%
		for(int i=0 ;i <size; i++)
		{%>
		<tr>
			<td><%= assets.get(i).getTransactionId() %></td>
			<td><%= assets.get(i).getUserId() %></td>
			<td><%= assets.get(i).getAssetId() %></td>
			<td><%= assets.get(i).getIssueDate().toString() %></td>
			<td><%= assets.get(i).getDueDate().toString() %></td>
			<td><%= assets.get(i).getBorrowStatus() %></td>
			<td><a href = "ReturnAssetServlet?userid=${con.userId}">Delete</a></td>
		</tr>		
	<% 	}
		%>
		<%-- <c:forEach items="${assets}" var="con">
			<tr>
				<td>${con.transactionId}</td>
				<td>${con.userId}</td>
				<td>${con.assetId}</td>
				<td>${con.issueDate}</td>
				<td>${con.dueDate}</td>
				<td>${con.borrowStatus}</td>
				<td><a href = "ReturnAssetServlet?userid=${con.userId}">Delete</a></td>
			</tr> 
		</c:forEach>--%>
	</table>
  </p>
</div>
<footer>
        <p><b>Copyright</b></p>
</footer>
</body>
</html>