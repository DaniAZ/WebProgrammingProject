<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<c:url value='/resources/css/shop-homepage.css' />" rel="stylesheet">
  <link href="<c:url value='/resources/css/style.css' />" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <script src="<c:url value='/resources/js/implementation.js'/>"></script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
    <div class="container">
        <a class="navbar-brand" href="#">Brand</a>
        <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
            &#9776;
        </button>
        <div class="collapse navbar-collapse" id="exCollapsingNavbar">
            <ul class="nav navbar-nav">

                <li class="nav-item"><a href="#" class="nav-link">About</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Link</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Service</a></li>
                <li class="nav-item"><a href="#" class="nav-link">More</a></li>
                <li>
                    <!--Waring Message-->
                    <c:if test="${name == null}">
                    <h4 class="text-danger">${Message}</h4>
                    </c:if>
                    <!--Waring Message-->
                    <!--Welcome Message-->
                <li><h4 class="navbar-brand text-primary">${name}${Welcome}</h4></li>
                <!--Welcome Message-->
                </li>
            </ul>
            <%----%>
            <ul class="nav navbar-nav flex-row justify-content-between ml-auto">
                <%--<li class="nav-item order-2 order-md-1"><a href="#" class="nav-link" title="settings"><i  class="fas fa-shopping-cart fa-lg"></i><button id="cart"></button></a></li>--%>
                <form action="/checkout">
                    <button id="checkoutBtn" type="submit"><i class="fas fa-shopping-cart"></i></button>
                </form>

                <li class="nav-item order-2 order-md-1"><a href="/itemForm" class="nav-link" title="settings"><i class="fa fa-cog fa-fw fa-lg"></i></a></li>
                <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-outline-secondary dropdown-toggle">Login <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right mt-2">
                        <li class="px-3 py-2">
                            <form action="/login" method="post" id="loginform" class="form" role="form">
                                <div class="form-group">
                                    <input id="inlineFormInput" placeholder="Email" name="username" value="${userName}" class="form-control form-control-sm" type="text" required="">
                                </div>
                                <div class="form-group">
                                    <input id="passwordInput" placeholder="Password" name="password" class="form-control form-control-sm" type="password" required="">
                                </div>
                                <div class="form-group">
                                    <%--<label class="form-control form-control-sm" for="autoSizingCheck">--%>
                                    <label><input  type="checkbox" id="autoSizingCheck" name="remember">Remember me:</label>
                                    <%--</label>--%>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                </div>
                                <div class="form-group text-center">
                                    <small><a href="#" data-toggle="modal" data-target="#modalPassword">Forgot password?</a></small>
                                </div>
                            </form>
                        </li>
                    </ul>
                </li>
                <div class="form-group">
                    <c:if test="${name == null}">
                        <a href="/signup.jsp"><button type="submit" class="btn btn-primary btn-block"> SignUp</button></a>
                    </c:if>
                    <c:if test="${not empty name}">
                        <a href="/logout"><button type="submit" class="btn btn-primary btn-block"> LogOut</button></a>
                    </c:if>
                </div>
            </ul>

        </div>
    </div>
</nav>
<div id="modalPassword" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Forgot password</h3>
                <button type="button" class="close font-weight-light" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <p>Reset your password..</p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                <button class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>



          <!-- Page Content -->
<jsp:include page="parts/IngridentContainer.jsp" />

<!-- Footer -->
<footer class="py-5 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
  </div>
  <!-- /.container -->
</footer>


<script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>

</html>
