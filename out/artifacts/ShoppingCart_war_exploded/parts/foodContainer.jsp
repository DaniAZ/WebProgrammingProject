<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">

    <div class="row">

        <div class="col-lg-3">

            <h1 class="my-4">Habasha Grocery Store</h1>
            <div class="list-group">
                <a href="/food.jsp" class="list-group-item">Food Category</a>
                <a href="/ingridents.jsp" class="list-group-item">Ingridents</a>
                <a href="/index.jsp" class="list-group-item">Clothes</a>
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
                        <img class="d-block img-fluid" src="<c:url value='resources/img/backGround.jpg' />" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="<c:url value='resources/img/foodBackground.jpg' />" alt="Second slide">
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
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/food/ingredients1.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>21.00</h5>
                            <p class="card-text">(Pronounced bari baray), somewhat of an all-purpose spice mix, widely used in Ethiopian dishes. A must have for Ethiopian</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/food/ingredients2.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>22.00</h5>
                            <p class="card-text">The most fabulous Ethiopian Shiro from scratch! So easy and SO flavorful. Vegan dish</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/food/ingredients3.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>17.00</h5>
                            <p class="card-text">Kitfo ingredients at Habesha Ethiopian Cuisine Maboneng on My Lime Boots</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/food/ingredients4.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>55.00</h5>
                            <p class="card-text">For Ethiopian- and Eritrean-American people (many of whom use the ubiquitous but historically complicated term “habesha” to refer to ourselves), .</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/food/ingredients5.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>25.00</h5>
                            <p class="card-text">Authentic Niter Kibbeh (Ethiopian Spiced Clarified Butter) - The ...
                                The Daring Gourmet
                                niter kibbeh ethiopian authentic recipe spiced clarified butter</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/food/ingredients6.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>20.00</h5>
                            <p class="card-text">A collection of spices used in Ethiopian cooking</p>
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
           <!-- /.container -->
    </div>
    <!-- /.row -->

</div>

