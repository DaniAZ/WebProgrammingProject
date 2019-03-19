<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">

    <div class="row">

        <div class="col-lg-3">

            <h1 class="my-4">Habasha Grocery Store</h1>
            <div class="list-group">
                <a href="/food.jsp" class="list-group-item">Food Category</a>
                <a href="/ingridents.jsp" class="list-group-item">Ingridents</a>
                <a href="index.jsp" class="list-group-item">Clothes</a>
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
                        <img class="d-block img-fluid" src="<c:url value='resources/img/himbasha-2.jpg' />" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="<c:url value='resources/img/making_injera.jpg' />" alt="Third slide">
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
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/clothes01.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#" id="x">Add to Cart</a>
                            </h4>
                            <h5>81.45</h5>
                            <p class="card-text">Eritrean Traditional Hand Embroidered Cotton Dress rastafari reggae dub( tra w-a123) Roots Dub Africa Cotton Jamaica Sound System</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/clothe02.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>229.00</h5>
                            <p class="card-text">Eritrean dress Habesha dress Ethiopian modern dress Kemisd</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/clothes03.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>139.00</h5>
                            <p class="card-text">Kaftan dress/ Kaftan fashion/ Abaya dress/ Bohemian dress/ Bohemian clothing/ Galabia dress/ Habesha dress/ Kemisd</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/clothes04.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>169.00</h5>
                            <p class="card-text">Traditional habesha dress with tilf</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/clothes05.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>130.00</h5>
                            <p class="card-text">Simple traditional habesha dress with blue tilet</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="<c:url value='resources/img/clothes06.jpg'/> " alt=""></a>
                        <div class="card-body Cart">
                            <h4 class="card-title">
                                <a href="#">Add to Cart</a>
                            </h4>
                            <h5>169.00</h5>
                            <p class="card-text">Habesha dress Ethiopian clothing modern Ethiopian dress Kemisd</p>
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