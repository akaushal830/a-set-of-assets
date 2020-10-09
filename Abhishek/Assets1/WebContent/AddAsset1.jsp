<!--a set of assets/WebContent/WEB-INF/UserHomepage.html-->
<!DOCTYPE html>
<html>
<head>
	<title> Add Assets</title>
<style>
#menu {
  background:black;
  color: #eee;
  height: 35px;
  border-bottom: 4px solid #eeeded;
  width:110px;
}

#menu ul,
#menu li {
  margin: 0 0;
  padding: 0 0;

  list-style: none
}

#menu ul {
  height: 35px

}

#menu li {
  float: left;
  display: inline;
  position: relative;
  font: bold 12px Arial;
  text-shadow: 0 -1px 0 #000;
  border-right: 1px solid #444;
  border-left: 1px solid #111;
  text-transform: uppercase
}

#menu li:first-child {
  border-left: none
}

#menu a {
  display: block;

  line-height: 35px;
  padding: 0 14px;
  text-decoration: none;
  color:white;
}

#menu li:hover > a,
#menu li a:hover {
  background: #111
}

#menu input {
  display: none;
  margin: 0 0;
  padding: 0 0;
  width: 80px;
  height: 35px;
  opacity: 0;
  cursor: pointer
}

#menu label {
  font: bold 30px Arial;
  display: none;
  width: 35px;
  height: 36px;
  line-height: 36px;
  text-align: center
}

#menu label span {
  font-size: 12px;
  position: absolute;
  left: 35px
}

#menu ul.menus {
  height: auto;
  width: 180px;
  background: #111;
  position: absolute;
  z-index: 99;
  display: none;
  border: 0;
}

#menu ul.menus li {
  display: block;
  width: 100%;
  font: 12px Arial;
  text-transform: none;
}

#menu li:hover ul.menus {
  display: block
}


#menu a.addassetsclass {
  padding: 0 27px 0 14px
}

#menu a.addassetsclass::after {
  content: "";
  width: 0;
  height: 0;
  border-width: 6px 5px;
  border-style: solid;
  border-color: #eee transparent transparent transparent;
  position: absolute;
  top: 15px;
  right: 9px
}

#menu ul.menus a:hover {
  background: #333;
}

#menu ul.menus .submenu {
  display: none;
  position: absolute;
  left: 180px;
  background: #111;
  top: 0;
  width: 180px;
}

#menu ul.menus .submenu li {
  background: #111;
}

#menu ul.menus .has-submenu:hover .submenu {
  display: block;
}


	/* Split the screen in half */
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 5;
  overflow-x: hidden;
  padding-top: 20px;
}

/* Control the left side */
.left {
  left: 0;
  background-color: black;/*#e9eeed*/
  color: white;

}

.lefttable{
	margin-top:35px;
	margin-left:10px;

}
td {
padding-left: 80px; 
padding-top: 5px;
padding-bottom: 5px;
padding-right: 60px;
}

/* Control the right side */
.right {
  right: 0;
  background-color: #f4f3f3;
}

/* If you want the content centered horizontally and vertically */
.centered {
  position: relative;
  top: 20%;
  left: 40%;
  transform: translate(5%, -50%);
  text-align: left;
}

/* Style the image inside the centered container, if needed */
.centered img {
  width: 150px;
  border-radius: 70%;
}
.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
  z-index: 1;
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

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }

.addassetbox{

width:250px;
}


.addassetbutn{
margin-left:105px;
font-weight: bold; 

}


</style>
</head>
<body>
<div class="topnav">
<a  href="adminHome.html">Home</a>
  <a class="active" href="AddAssets.html">Add Assets</a>
  <a href="#OverdueAssets">Over-due Assets</a>
  <a href="#">Import User</a>
  <a href="#">View Reports</a>


  </div>
</div>
<div class="split left">
  <div class="centered">
    <img src="adminimg.jpg" alt="USER" style="left: 60%; width:80px; height:80px;">
  </div>
  <br><br><br><br>
  <div class="left" align="left">
  <table class="lefttable">

  	<tr>
  		<td><ul><li>Name</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>

 	<tr>
  		<td><ul><li>Email</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>
	<tr>
  		<td><ul><li>Logged in at</ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>

    </table>
	</div>
</div>
<div class="split right">
	<br><br><br><br><br>
    <h2 style="text-shadow: 4px 4px 2px #A0A0A0" align="center">Add Asset</h2><br><br><br>
   	<div class="addassetbox">
<form>
<table class="righttable">
	<tr>
		<td style="width:20px;"><b>Name<b></td>
		<td><input type="text" required style="height:30px;width:200px;"></td>
	</tr>
	<tr>
		<td><b>Category<b></td>

	<td required>

	<ul id='menu'>

    <li><a class='addassetsclass' href='#' title='Category'>Category</a>
      <ul class='menus'>
        <li class='has-submenu'><a class='addassetsclass' href='Dropdown 1' title='Dropdown 1'>Laptop</a>
          <ul class='submenu'>
            <li><a href="#" title="Sub Menu">lap1</a></li>
            <li><a href="#" title="Sub Menu">lap2</a></li>
            <li><a href="#" title="Sub Menu">lap3</a></li>
			<li><a href="#" title="Sub Menu">Add+</a></li>
          </ul>
        </li>
        <li class='has-submenu'><a class='addassetsclass' href='Dropdown 1' title='Dropdown 1'>Mobile</a>
          <ul class='submenu'>
            <li><a href="#" title="Sub Menu">Mob1</a></li>
            <li><a href="#" title="Sub Menu">Mob2</a></li>
            <li><a href="#" title="Sub Menu">Mob3</a></li>
			<li><a href="#" title="Sub Menu">Add+</a></li>
          </ul>
        </li>



		<li class='has-submenu'><a class='addassetsclass' href='Dropdown 1' title='Dropdown 1'>Book</a>
          <ul class='submenu'>
            <li><a href="#" title="Sub Menu">Book1</a></li>
            <li><a href="#" title="Sub Menu">Book2</a></li>
            <li><a href="#" title="Sub Menu">Book3</a></li>
			<li><a href="#" title="Sub Menu">Add+</a></li>
          </ul>
        </li>
		<li class='has-submenu'><a class='addassetsclass' href='AddnewCategory.html' title='Dropdown 1'>Add+</a>
		</li>		
      </ul>
    </li>
  </ul>
		</td>
	</tr>
	<tr>
		<td><b>Description<b></td>
		<td>
			<textarea  rows="5" cols="35" required>
			</textarea>
		</td>
	</tr>
</table>
<br>
<div class="addassetbutn">
<b><input type= submit value="Add Asset"><b>
</div>
</form>
</div>

</div>

</body>
</html> 