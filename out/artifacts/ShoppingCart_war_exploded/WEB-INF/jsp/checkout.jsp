<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 3/12/2019
  Time: 6:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Welcome</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="<c:url value='/resources/css/main.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/js/implementation.js'/>"></script>

</head>
<body>
   <h1>Hello ${name}</h1>
    <div class="container">
       <table id="cart" class="table table-hover table-condensed">
           <thead>
           <tr>
               <th style="width:50%">Product</th>
               <th style="width:10%">Price</th>
               <th style="width:10%"></th>
           </tr>
           </thead>
           <tbody>
           <c:forEach items="${ProductList}" var="Product">
           <tr id="<c:out value='tr${Product.productnumber}'/>">
                <td data-th="Product">
                   <div class="row">
                       <div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive"/></div>
                       <div class="col-sm-10">
                           <h4 class="nomargin">${Product.productnumber}</h4>
                           <p>${Product.productName}</p>
                       </div>
                   </div>
               </td>
               <td data-th="Price">${Product.productPrice}</td>

               <%--<td data-th="Subtotal" class="text-center">1.99</td>--%>
               <td class="actions" data-th="">
                   <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                   <button onclick="getid(event)"  class="btn btn-danger btn-sm delete" id="<c:out value='${Product.productnumber}'/>"   ><i class="fa fa-trash-o"></i>delete</button>

               </td>
           </tr>
           </tbody>
           </c:forEach>
           <tfoot>
              <tr>
                  <td><a href="/logout" class="btn btn-warning"><i class="fas fa-sign-out"></i> Logout</a></td>
               <td><a href="/login" class="btn btn-warning" id="back"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>

               <td colspan="2" class="hidden-xs"></td>
                <td class="hidden-xs text-center"><strong>Total ${total}</strong></td>
               <td><a href="billing" id="checkout_a" class="btn btn-success btn-block">Check-0ut <i class="fa fa-angle-right"></i></a></td>
           </tr>
           </tfoot>
       </table>
   </div>
   <script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
   <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
   <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

   </body>
</html>
