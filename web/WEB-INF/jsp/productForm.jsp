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
    <script src="<c:url value='/resources/js/implementation.js'/>"></script>
</head>
<body>
<table id="tbl_products">
    <thead>
    <tr>
        <th>Product Name</th>
        <th>Product Price</th>
        <th>Product Quantity</th>
        <th>Product Category</th>
        <th>Product Description</th>
    </tr>
    </thead>
    <tbody>

    </tbody>
</table>
<form enctype="multipart/form-data" action="/itemForm" method="post" id="form_id">

    <h3 id="top">Add Product</h3>

    <div id="billing">

        <div class="firstname inputs">
            <label for="">Product Name</label><br>
            <input type="text" name="productName" id="productName" />
        </div>

        <div class="lastname inputs">
            <label for="">Product Price</label><br>
            <input type="text" name="productPrice" id="productPrice" />
        </div><br>

        <div class="address inputs">
            <label for="">Quantity</label><br>
            <input type="text" name="quantity" id="quantity" />
        </div>
        <div class="category inputs">
            <label for="">Category</label><br>
            <select name="category" id="category">
                <option>Food Ingrident</option>
                <option>clothes</option>
                <option>Traditional Goods</option>
            </select>
        </div>

        <div class="city inputs">
            <label for="">Description</label><br>
            <textarea name="Desc" rows="4" cols="50" id="Desc"></textarea>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="image_upload">PRODUCT IMAGE</label>
            <div class="col-md-4">
                <input id="image_upload" name="image_upload" class="input-file" type="file" required="">
            </div>
        </div>


         <div>
              <button type="submit" id="items_button" class="btn btn-lg btn-primary" >Submit</button>
              <button type="reset" class="btn btn-secondary btn-lg" >Canel</button>
          </div>

    </div>

</form>
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>
