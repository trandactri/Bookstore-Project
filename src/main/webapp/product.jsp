<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 7/7/21
  Time: 7:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <title>Book Detail</title>
    <style>
        <%@include file="assets/css/detailSS.css" %>
    </style>
    <style>
        <%@include file="assets/css/styleSheet.css" %>
    </style>
    <link href='https://fonts.googleapis.com/css?family=Gugi' rel='stylesheet'>
    <!-- fonticons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- fonticons -->
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<main class="mt-5 pt-4">
    <div class="container dark-grey-text mt-5">

        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-md-6 mb-4">

                <img src="${product.image}" class="img-fluid" alt="">

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-6 mb-4">
                <h3 class="bName">${product.name}</h3>
                <!--Content-->
                <div class="p-4">
                    <p class="lead">
                        Price: <span>${product.price}đ</span>
                    </p>

                    <p class="lead font-weight-bold">Description</p>

                    <p>${product.description}</p>

                    <form class="d-flex justify-content-left">
                        <!-- Default input -->
                        <input type="number" value="1" aria-label="Search" class="form-control" style="width: 100px">
                        <button class="btn btn-primary btn-md my-0 p" type="submit">Add to cart
                            <i class="fas fa-shopping-cart ml-1"></i>
                        </button>

                    </form>

                </div>
                <!--Content-->

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

        <hr>

        <!--Grid row-->
        <div class="row d-flex justify-content-center wow fadeIn">

            <!--Grid column-->
            <div class="col-md-6 text-center">

                <h4 class="my-4 h4">Inspiring Quotes About Books</h4>

                <p>“Books are a uniquely portable magic.” - Stephen King</p>
                <p>“In the case of good books, the point is not to see how many of them you can get through, but rather
                    how many can get through to you.”
                    <br>- Mortimer J. Adler</p>
                <p>“There is more treasure in books than in all the pirate’s loot on Treasure Island.” – Walt Disney</p>

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-lg-4 col-md-12 mb-4">

                <img src="https://ielts-thanhloan.com/wp-content/uploads/2021/01/reading.jpg" class="img-fluid" alt="">

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">

                <img src="https://www.oberlo.com/media/1612639204-image3.jpg" class="img-fluid" alt="">

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">

                <img src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/woman-reading-royalty-free-image-1005735718-1545225028.jpg"
                     class="img-fluid" alt="">

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

    </div>
</main>
<!--Main layout-->

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
