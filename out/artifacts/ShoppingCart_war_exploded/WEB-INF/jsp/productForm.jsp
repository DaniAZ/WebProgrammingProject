<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 3/15/2019
  Time: 12:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<html>
<head>
    <title>Title</title>
    <link href="<c:url value='/resources/css/billing.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/js/index.js'/>"></script>
</head>
<body>
<form action="/billing" method="post">

    <h3 id="top">Add Product</h3>

    <div id="billing">

        <div class="firstname inputs">
            <label for="">Product Name</label><br>
            <input type="text" name="firstName" />
        </div>

        <div class="lastname inputs">
            <label for="">Product Price</label><br>
            <input type="text" name="lastName" />
        </div><br>

        <div class="address inputs">
            <label for="">Quantity</label><br>
            <input type="text" name="address" />
        </div>

        <div class="city inputs">
            <label for="">Description</label><br>
            <textarea name="Desc" />
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="image_upload">PRODUCT IMAGE</label>
            <div class="col-md-4">
                <input id="image_upload" name="image_upload" class="input-file" type="file" required="">
            </div>
        </div>

    </div>


              <button type="submit" class="btn btn-lg btn-primary" >Submit</button>
              <button type="reset" class="btn btn-secondary btn-lg" >Canel</button>
          </div>

    </div>

</form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>
