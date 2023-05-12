<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>MVC</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
	<main class="container mt-5">
	   	<h1>Update Book</h1>
			<form:form action="/books/${book.id}" method="post" modelAttribute="book">
   	 			<input type="hidden" name="_method" value="put">
			    <div class="mb-3">
			        <form:label class="form-label" path="title">Title</form:label>
			        <form:input class="form-control" path="title"/>
			        <form:errors class="text-danger" path="title"/>
			    </div>
			    <div class="mb-3">
			        <form:label class="form-label" path="description">Description</form:label>
			        <form:textarea class="form-control" path="description"/>
			        <form:errors class="text-danger" path="description"/>
			    </div>
			    <div class="mb-3">
			        <form:label class="form-label" path="language">Language</form:label>
			        <form:input class="form-control" path="language"/>
			        <form:errors class="text-danger" path="language"/>
			    </div>
			    <div class="mb-3">
			        <form:label class="form-label" path="numberOfPages">Pages</form:label>
			        <form:input class="form-control" type="number" path="numberOfPages"/>
			        <form:errors class="text-danger" path="numberOfPages"/>     
			    </div>    
			    <input class="btn btn-primary" type="submit" value="Submit"/>
			</form:form>   
	</main>
</body>
</html>