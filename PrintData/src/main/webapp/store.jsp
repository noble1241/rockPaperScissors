	
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page
	import="
org.bson.Document,
com.mongodb.MongoClient,
com.mongodb.MongoClientURI,
com.mongodb.client.FindIterable,
com.mongodb.client.MongoCollection,
com.mongodb.client.MongoDatabase,
java.util.Iterator,
java.util.ArrayList"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Online Store</title>

<script>
	var counterVal = 5, counterVal2 = 6, counterVal3 = 2, counterVal4 = 9, counterVal5 = 4;
	var items = [];
	var eggs = {
		name : "Eggs",
		price : "7"
	};
	var apples = {
		name : "Apples",
		price : "7"
	};
	var sweetP = {
		name : "Sweet Potatoes",
		price : "6"
	};
	var brownR = {
		name : "Brown Rice",
		price : "9"
	};
	var carrots = {
		name : "carrots",
		price : "12"
	};
	function cart() {
		
	}
	function incrementClick() {
		if (counterVal - 1 < 0) {
			alert("NONE IN STOCK");
		} else {
			items.push(eggs);
			updateDisplay(--counterVal);

		}
	}

	function updateDisplay(val) {
		document.getElementById("countLabel").innerHTML = val;
	}
	function incrementClick2() {
		if (counterVal2 - 1 < 0) {
			alert("NONE IN STOCK");
		} else {
			updateDisplay2(--counterVal2);
		}
	}

	function updateDisplay2(val) {
		document.getElementById("countLabel2").innerHTML = val;
	}
	function incrementClick3() {
		if (counterVal3 - 1 < 0) {
			alert("NONE IN STOCK");
		} else {
			updateDisplay3(--counterVal3);
		}
	}

	function updateDisplay3(val) {
		document.getElementById("countLabel3").innerHTML = val;
	}
	function incrementClick4() {
		if (counterVal4 - 1 < 0) {
			alert("NONE IN STOCK");
		} else {
			updateDisplay4(--counterVal4);
		}
	}

	function updateDisplay4(val) {
		document.getElementById("countLabel4").innerHTML = val;
	}
	function incrementClick5() {
		if (counterVal5 - 1 < 0) {
			alert("NONE IN STOCK");
		} else {
			updateDisplay5(--counterVal5);
		}
	}

	function updateDisplay5(val) {
		document.getElementById("countLabel5").innerHTML = val;
	}
</script>

<style>
h1 {
	text-shadow: 2px 2px 5px red;
	font-family: "Lucida Console", "Courier New", monospace;
	font-size: 50px
}

p {
	border-style: groove;
	border-radius: 10px;
	font-size: 1.875em;
	padding: 18px;
	background-color: white;
}

body {
	background-color: lightblue;
}

.button {
	display: inline-block;
	padding: 5px 5px;
	font-size: 24px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: #4CAF50;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px #999;
}

.button:hover {
	background-color: #3e8e41
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #e9e9e9;
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
	background-color: #2196F3;
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
	padding: 6px;
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

@media screen and (max-width: 600px) {
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
	.topnav .lol {
		float: right;
	}
}
</style>
<body>

	<div class="topnav">
		<a class="active" href="#home">Home</a> <a class="lol" href="test.jsp"><i
			class="fa fa-shopping-cart"></i> shopping cart</a>
		<div class="search-container">
			<form action="getSearch">
				<input type="text" placeholder="Search..." name="search">
			</form>
		</div>
	</div>
</head>
<body id="b1">
	<h1>WELCOME TO THE ONLINE STORE</h1>
	<p id="p1">
		<label id="l5">Eggs</label> <br> <img
			src="https://images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-eggs-1296x728-feature.jpg"
			width="150" height=100%><br> <label>Price: $<%=noDeal.conne.getPrice(0)%></label>
		<br> <i class="fa fa-star"></i><i class="fa fa-star"></i><i
			class="fa fa-star"></i><i class="fa fa-star"></i><i
			class="fa fa-star-o"></i> <br> <label>Stock: </label> <label
			id="countLabel"><%=noDeal.conne.getStock(0)%></label> <br>
		<button id="clickMe" type="button" class="button"
			onclick="incrementClick();cart()">Buy</button>
	</p>
</body>

<body id="b2">
	<p id="p1">
		<label id="l4">Apple</label><br> <img
			src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/The_SugarBee_Apple_now_grown_in_Washington_State.jpg/270px-The_SugarBee_Apple_now_grown_in_Washington_State.jpg"
			width="150" height=100%><br> <label>Price: $<%=noDeal.conne.getPrice(1)%></label>
		<br> <i class="fa fa-star"></i><i class="fa fa-star"></i><i
			class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i
			class="fa fa-star-o"></i> <br> <label>Stock: </label> <label
			id="countLabel2"><%=noDeal.conne.getStock(1)%></label><br>
		<button type="button" class="button" onclick="incrementClick2()">Buy</button>

	</p>
</body>
<body id="b3">
	<p id="p1">

		<label id="l3">Sweet Potatoes</label> <br> <img
			src="https://media-cdn.greatbritishchefs.com/media/tyhnbpfa/img26612.jpg"
			width="150" height=100%> <br> <label>Price: $<%=noDeal.conne.getPrice(2)%></label>
		<br> <i class="fa fa-star"></i><i class="fa fa-star"></i><i
			class="fa fa-star"></i><i class="fa fa-star"></i><i
			class="fa fa-star"></i> <br> <label>Stock: </label> <label
			id="countLabel3"><%=noDeal.conne.getStock(2)%></label><br>
		<button id="clickMe" type="button" class="button"
			onclick="incrementClick3()">Buy</button>

	</p>
</body>
<body id="b4">
	<p id="p1">
		<label id="l2">Brown rice</label> <br> <img
			src="https://www.simplyrecipes.com/thmb/YGByCKphsgQGV3l3ih0B2zxraPk=/2000x1333/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2019__08__HT-Stovetop-Brown-Rice-LEAD-2-805ee4ce64084a4c8414ce740569eeb5.jpg"
			width="150" height=100%><br> <label>Price: $<%=noDeal.conne.getPrice(3)%></label>
		<br> <i class="fa fa-star"></i><i class="fa fa-star"></i><i
			class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i
			class="fa fa-star-o"></i> <br> <label>Stock: </label> <label
			id="countLabel4"><%=noDeal.conne.getStock(3)%></label><br>
		<button id="clickMe" type="button" class="button"
			onclick="incrementClick4()">Buy</button>

	</p>

</body>
<body id="b5">
	<p id="p1">
		<label id="l1"> Carrots</label><br> <img
			src="https://www.jessicagavin.com/wp-content/uploads/2019/02/carrots-7-1200.jpg"
			width="150" height=100%> <br> <label>Price: $<%=noDeal.conne.getPrice(4)%></label>
		<br> <i class="fa fa-star"></i><i class="fa fa-star"></i><i
			class="fa fa-star"></i><i class="fa fa-star-o"></i><i
			class="fa fa-star-o"></i> <br> <label>Stock: </label> <label
			id="countLabel5"><%=noDeal.conne.getStock(4)%></label><br>
		<button id="clickMe" type="button" class="button"
			onclick="incrementClick5()">Buy</button>

	</p>

</body>

</html>