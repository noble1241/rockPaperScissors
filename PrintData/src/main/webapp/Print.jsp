<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<%@page import="java.sql.*"%>

<%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<html>
<head>
<style>
p.p1 {
	text-shadow: 2px 2px 5px red;
	font-family: "Lucida Console", "Courier New", monospace;
	font-size: 50px
}

body {
	background-color: linen;
}

table {
	border-collapse: collapse;
	width: 100%;
}

td, b {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: coral;
}

input[type=text], input[type=date], input[type=number] {
	width: 130px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 12px;
	padding: 10px 15px 10px 5px;
	transition: width 0.4s ease-in-out;
}

input[type=submit] {
	display: inline-block;
	padding: 10px 25px;
	font-size: 12px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: #4CAF50;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px #999
}

.button:hover {
	background-color: #3e8e41
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px); p .p1 { font-family : "Times New Roman",
	Times, serif;
	font-size: 40px;
	border: 2px solid red;
	border-radius: 3px;
	border-style: groove;
}

</style>
<title >enter database</title>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>

</head>

<body>
	<p class="p1" ; align="center" ; style="color: black"><u>Retrieve data
		from Nicktable</u></p>
	<table align="center" cellpadding="5" cellspacing="5" border="1">
		<tr>

		</tr>
		<tr>
			<td><b>FirstName</b></td>
			<td><b>Date</b></td>
			<td><b>FavNum</b></td>
		</tr>
		<%
		try {
			connection = noDeal.Deal.getCon();
			statement = connection.createStatement();
			String sql = "SELECT * FROM NickTable";

			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>

			<td><%=resultSet.getString("FirstName")%></td>
			<td><%=resultSet.getString("Date")%></td>
			<td><%=resultSet.getString("FavNum")%></td>

		</tr>

		<%
		}

		} catch (Exception e) {
		e.printStackTrace();
		}
		%>

	</table>
	
	<br>
	<br>
	
	<img id = "img" src="smile.png" style="width:400;height:auto;float:right;">
	
	<form action="getInfo" method="post" class="formData"
		style="text-align: left;">
		
		<div class="formData">
			<label for="name">Enter your name: </label> <input type="text"
				name="name" id="name" placeholder="Moby Dick" required>
		</div>
		
		<div class="formData">
			<label for="date">The Date </label> <input type='Date' name='date'
				id="date" required>
		</div>

		<div class="formData">
			<label for="FavNum">Your Favorite Number </label> <input
				type='number' name='num' placeholder="1241" id="FavNum" required>
		</div>
		
		<div class="formData">
			<input class="button" type="submit" value="submit" id="submitBtn" />
		</div>
		
	</form>
<head>
</html>