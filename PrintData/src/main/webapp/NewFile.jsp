<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var counterVal = 0;

function incrementClick() {
    updateDisplay(++counterVal);
}

function resetCounter() {
    counterVal = 0;
    updateDisplay(counterVal);
}

function updateDisplay(val) {
    document.getElementById("counter-label").innerHTML = val;
}</script>
</head>
<body>
	<h3>JavaScript Click Counter</h3>
	<div>
		<label id="counter-label">0</label>
	</div>
	<div>
		<button onclick="incrementClick()">Click Me</button>
		<button onclick="resetCounter()">Reset</button>
	</div>
</body>
</html>