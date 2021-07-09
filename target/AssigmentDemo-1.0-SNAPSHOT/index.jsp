<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- displays site properly based on user's device -->

    <title>Tri Dac | 2nd year Student of FPTU</title>

    <!-- fonticons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- fonticons -->
    <!-- google fonts -->
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styleSheet.css">--%>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Gugi&display=swap" rel="stylesheet">

    <!-- google fonts -->

    <style><%@include file="/assets/css/styleSheet.css"%></style>

</head>

<body>
        <jsp:include page="Menu.jsp"></jsp:include>
    <div class="container">
    <section id="projects" class="projects-sec">

        <div class="sec-title">
            <h2>BOOKS</h2>
        </div>
        <div class="col-md-5">
            <div class="card bg-light mb-3">
                <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                <ul class="list-group category_block">
                    <c:forEach items="${listCC}" var="o">
                        <li class="list-group-item text-white ${tag == o.cid? "active" : null}"><a href="category?cid=${o.cid}#projects">${o.cname}</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
            <div class="project-container">
                <c:forEach items="${listP}" var="o">
                    <div class="proj-contain project-${o.id}">
                        <a href="product?pid=${o.id}"><img alt="huddle-desktop-preview" class="proj-screenshot"
                                        src="${o.image}" width="1000" height="500"/></a>
                        <div class="project-title">
                            <h6><a href="product?pid=${o.id}">${o.name}</a></h6>
                            <p>Price: ${o.price}đ</p>
                            <p>Description: ${o.description}</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
<%--            <a class="more show-link">show More<i class="fas fa-chevron-circle-down"></i></a>--%>
<%--            <a class="less show-link toggle">show less<i class="fas fa-chevron-circle-up"></i></a>--%>
    </section>
</div>
        <jsp:include page="Footer.jsp"></jsp:include>
<!--		Jquery-->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<!--		Jquery-->
<!--js script		-->
<script><%@include file="assets/JavaScript/script.js"%></script>
<!--js script		-->
</body>

</html>