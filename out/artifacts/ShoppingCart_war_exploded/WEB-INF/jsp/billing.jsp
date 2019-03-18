<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 3/15/2019
  Time: 12:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
    <link href="<c:url value='/resources/css/billing.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/js/addressAndBilling.js'/>"></script>
</head>
<body>
<form action="/billing" method="post" id="billingForm">

    <h3 id="top">Billing Address</h3>

    <div id="billing">

        <div class="firstname inputs">
            <label for="">First Name</label><br>
            <input type="text" name="firstName" />
        </div>

        <div class="lastname inputs">
            <label for="">Last Name</label><br>
            <input type="text" name="lastName" />
        </div><br>

        <div class="address inputs">
            <label for="">Address</label><br>
            <input type="text" name="address" />
        </div>

        <div class="city inputs">
            <label for="">City</label><br>
            <input type="text" name="city" />
        </div>

        <div class="country inputs">
            <label for="">Country</label><br>
            <input type="text" name="country" />
        </div><br><br>
        <div class="phone inputs">
            <label for="">PhoneNumber</label><br>
            <input type="text" name="phoneNumber" />
        </div><br><br>

    </div>

    <div id="checkbox">
        <input type="checkbox" name="checkbox" id="checkboxID"  />
        <label for="">Shipping and billing address the same?</label>
    </div>

    <h3 id="bottom">Shipping Address</h3>

    <div id="shipping">

        <div class="firstname inputs">
            <label for="">First Name</label><br>
            <input type="text" name="firstNameShipping" />
        </div>

        <div class="lastname inputs">
            <label for="">Last Name</label><br>
            <input type="text" name="lastNameShipping" />
        </div><br>

        <div class="address inputs">
            <label for="">Address</label><br>
            <input type="text" name="addressShipping" />
        </div>

        <div class="city inputs">
            <label for="">City</label><br>
            <input type="text" name="cityShipping" />
        </div>

        <div class="country inputs">
            <label for="">Country</label><br>
            <input type="text" name="countryShipping" />
        </div>
        <div class="phone inputs">
            <label for="">PhoneNumber</label><br>
            <input type="text" name="phoneNumberHome" />
        </div><br><br>
          <div>
              <button type="submit" class="btn btn-lg btn-primary" >Submit</button>
              <button type="reset" class="btn btn-secondary btn-lg" >Canel</button>
          </div>

    </div>

</form>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>
