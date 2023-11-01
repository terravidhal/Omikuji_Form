<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet"  href="/css/style.css" />
</head>
<body>

	<div class="container-fluid text-center p-5 border border-secondary d-flex" style="justify-content: center;">
		<div class="omikuji border border-secondary border-5" style="width: 30%;">
			<h1 class="text-center text-primary" style="padding-top: 100px;">
				Send an Omikuji!</h1>
			<form action='/process' method='POST'>
				<div class="infos">
					<label class="py-2" for="number">Pick any number from 5 to 25</label> 
					<input type="number" name='number' id="number" min="5" max="25">
				</div>
				<div class="infos">
					<label class="py-2" for="city">Enter the name of any city</label> 
					<input type="text" name='city' id="city">
				</div>
				<div class="infos">
					<label class="py-2" for="hobby">Enter professional endeavor or hobby</label> 
					<input	type="text" name='hobby' id="hobby">
				</div>
				<div class="infos">
					<label class="py-2" for="thing">Enter any type or living thing</label> 
					<input type="text" name='thing' id="thing">
				</div>
				<div class="infos">
					<label class="py-2" for="say">Say something nice to someone : </label>
					<textarea name="say" id="say" cols="30" rows="10"></textarea>
				</div>
				<div class="infos">
					<label class="py-2" for="send">Send and show a friend</label> 
					<br/>
					<input class="mb-2"	type='submit' value='Send' id="send">
				</div>
			</form>
		</div>
	</div>

	<!-- link Js -->
	<script type="text/javascript" src="/js/main.js"></script>
	<!-- For any Bootstrap that uses jquery -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<!--For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
