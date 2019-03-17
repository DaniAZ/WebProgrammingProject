<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 3/15/2019
  Time: 1:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>
    <link rel="stylesheet" href=https://use.fontawesome.com/releases/v5.7.2/css/all.css integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"  crossorigin="anonymous">
</head>
<body>
<h1>Confirmation Page</h1>
  <c:forEach items="${AddressUtil}" var="Address">
    <p>Thank you!  for Shopping with us us ${Address.firstName} ${Address.lastName}. you should receive you package in two days from Now in this address
            ${Address.address},${Address.city},${Address.country} . Let us know in our support email ${Mail}
        if you don’t receive your package. Please be sure to attach your reference ${Support_ticket_id} in your email.</p>
  </c:forEach>
  <a href="/logout" class="btn btn-warning"><i class="fas fa-sign-out"></i> Logout</a>
  <a href="/login" class="btn btn-warning" id="back"><i class="fa fa-angle-left"></i> Continue Shopping</a>
</body>
</html>
