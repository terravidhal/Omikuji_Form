<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>HOME</title>
        <!-- for Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css"/> 
        <!-- YOUR own local CSS -->
        <link rel="stylesheet" href="/css/style.css"/>
    </head>
<body>

    <div class="container-fluid text-center p-5 border border-secondary d-flex" style="justify-content: center;">
        <div class="omikuji border border-secondary border-5 bg-primary" style="width: 30%;">
            <h1 class="text-center" style="padding-top: 100px;">
                Here's your Omikuji!</h1>
			<h2 class="p-2">In <c:out value = "${number}"/> years, you will live in
		<c:out value = "${city}"/> with <c:out value = "${name}"/> as your roommate,
		<c:out value = "${hobby}"/> for a living.
		The next time you see a <c:out value = "${thing}"/>, you will have
		good luck. Also <c:out value = "${say}"/>.</h2>
        <a class="text-dark" href="/omikuji">Go back</a>
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
