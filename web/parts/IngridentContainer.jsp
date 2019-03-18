<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">

    <div class="row">

        <div class="col-lg-3">

            <h1 class="my-4">Habasha Culture</h1>
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
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/ingrident/DoroKeyWat.png'/> " alt=""></a>
                        <div class="card-body Cart" >
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>11.95</h5>
                            <p class="card-text">Doro Wat -Ethiopian Chicken Stew -slowly simmered in a blend of robust spices. Easy thick, comforting, delicious, and so easy to make!</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/ingrident/food4.jpg'/> " alt=""></a>
                        <div class="card-body Cart" >
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>21.00</h5>
                            <p class="card-text">This traditional flatbread, scored in a decorative wheel pattern, has a unique sweet-savoury flavour, the sweetness being balanced by heady cardamom.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/ingrident/food5.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>13.95</h5>
                            <p class="card-text">Fresh and tender beef or lamb cubes braised with onion, garlic, ginger, berbere and kibbeh spiced butter</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/ingrident/Home.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>18.22</h5>
                            <p class="card-text">Finely minced veggies sauteed with onions, pepper and Habesha special spices. Vegetarian.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/ingrident/home1.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>22.45</h5>
                            <p class="card-text">It is one of the various Eritrean traditional handicrafts made of the palm raffia, adorned in a diversity of colors and accomplished through efforts of creativity. </p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/ghatea.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>14.45</h5>
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