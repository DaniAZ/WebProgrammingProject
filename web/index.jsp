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

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-light fixed-top">
  <div class="container">
    <h1 class="navbar-brand text-primary">HI ${name}${Welcome}</h1>

    <div class="collapse navbar-collapse" id="navbarResponsive">
      <!--login form-->
      <nav class="navbar navbar-light bg-light align-content-lg-center">
        <c:if test="${name == null}">
          <h4 class="text-danger">${Message}</h4>
        </c:if>

        <form action="/login" method="post" id="loginForm">
          <div class="form-row align-items-center">
            <div class="col-auto">
              <div class="input-group mb-2">
                 <div class="input-group-prepend" id="userNameMargin">
                  <div class="input-group-text">UserName</div>
                </div>
              <input type="text" class="form-control mb-2 inputForm" name="username" value="${userName}" id="inlineFormInput">
              </div>
            </div>
            <div class="col-auto">
                  <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <div class="input-group-text">Password</div>
                </div>
                <input type="password" class="form-control inputForm" id="inlineFormInputGroup" name="password">
              </div>
            </div>
            <div class="col-auto">
              <div class="form-check mb-2">
            <c:choose>
             <c:when test="${not empty userName}">
                <input class="form-check-input" type="checkbox" id="autoSizingCheck" name="remember">
             </c:when>
              <c:otherwise>
                <input class="form-check-input" type="checkbox" id="autoSizingCheck" name="remember">
              </c:otherwise>
            </c:choose>
                <label class="form-check-label" for="autoSizingCheck">
                  Remember me
                </label>
              </div>
            </div>
            <div class="col-auto">
              <c:if test="${name == null}">
              <button type="submit" id="login" class="btn btn-primary mb-2">LogIn</button>
                <a href="/signup.jsp"><button type="button" iclass="btn btn-primary mb-2">signup</button></a>
              </c:if>
             <c:if test="${not empty name}">
               <a href="/logout"><button type="button" iclass="btn btn-primary mb-2">LogOut</button></a>
             </c:if>
            </div>
          </div>
        </form>
      </nav>
      <!--end of login form-->
      <!---------------------------------------------------------->
      <!---------------------------------------------------------->
      <!--checkout-->
      <div id="checkout">
        <form action="/checkout">
          <button id="checkoutBtn"><i class="fas fa-shopping-cart"></i></button>
        </form>
      </div>
    </div>
  </div>
</nav>

          <!-- Page Content -->
<div class="container">

  <div class="row">

    <div class="col-lg-3">

      <h1 class="my-4">Shop Name</h1>
      <div class="list-group">
        <a href="#" class="list-group-item">Category 1</a>
        <a href="#" class="list-group-item">Category 2</a>
        <a href="#" class="list-group-item">Category 3</a>
      </div>

    </div>
    <!-- /.col-lg-3 -->

    <div class="col-lg-9">

      <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active">
            <img class="d-block img-fluid" src="<c:url value='resources/img/images5.jpg' />" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block img-fluid" src="<c:url value='resources/img/image3.jpg' />" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block img-fluid" src="<c:url value='resources/img/images.jpg' />" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

      <div class="row">

        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="<c:url value='resources/img/group1.jpg'/> " alt=""></a>
            <div class="card-body Product0">
              <h4 class="card-title">
                <a href="#"> Add to Cart</a>
              </h4>
              <h5 >00.11</h5>
              <p class="card-text" >Clothes</p>
            </div>
            <div class="card-footer">
              <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4" >
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="<c:url value='resources/img/group2.jpg'/> " alt=""></a>
            <div class="card-body Product1">
              <h4 class="card-title">
                <a href="#">Add to Cart</a>
              </h4>
              <h5>00.22</h5>
              <p class="card-text">Books</p>
            </div>
            <div class="card-footer">
              <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="<c:url value='resources/img/group3.jpg'/> " alt=""></a>
            <div class="card-body Product2">
              <h4 class="card-title">
                <a href="#">Add to Cart</a>
              </h4>
              <h5>00.33</h5>
              <p class="card-text">Chair</p>
            </div>
            <div class="card-footer">
              <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="<c:url value='resources/img/group4.jpg'/> " alt=""></a>
            <div class="card-body Product3">
              <h4 class="card-title">
                <a href="#">Add to Cart</a>
              </h4>
              <h5>00.44</h5>
              <p class="card-text">Sofa</p>
            </div>
            <div class="card-footer">
              <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="<c:url value='resources/img/group5.jpg'/> " alt=""></a>
            <div class="card-body Product4">
              <h4 class="card-title">
                <a href="#">Add to Cart</a>
              </h4>
              <h5>00.66</h5>
              <p class="card-text">car</p>
            </div>
            <div class="card-footer">
              <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="<c:url value='resources/img/group6.jpg'/> " alt=""></a>
            <div class="card-body Product5">
              <h4 class="card-title">
                <a href="#">Add to Cart</a>
              </h4>
              <h5>00.77</h5>
              <p class="card-text">T-shirt</p>
            </div>
            <div class="card-footer">
              <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
            </div>
          </div>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.col-lg-9 -->

  </div>
  <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
  </div>
  <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<%--<script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>--%>
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>
<script src="<c:url value='/resources/js/index.js'/>"></script>
</body>

</html>
