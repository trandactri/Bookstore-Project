<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>

    <div class="nav-icon"><i class="fas fa-bars"></i></div>

    <div class="mobile-navbar">

        <div class="topic">
            <a>My Books Project</a>
        </div>

        <ul class="menu closed">
            <li><a href="#" class="close"><i class="fas fa-times"></i></a></li>
            <li><a href="#">About</a></li>
            <li><a href="#projects">Books</a></li>
            <li><a href="#contact-me">Contact Us</a></li>

        </ul>

    </div>

    <nav id="navbar" class="nav">

        <a href="${pageContext.request.contextPath}/">Bookstore Project</a>
        <a href="${pageContext.request.contextPath}#">About</a>
        <a href="${pageContext.request.contextPath}#projects">Books</a>
        <a href="#contact-me">Contact Us</a>
        <a><form action="search" method="post" class="form-inline my-2 my-lg-0">
            <div class="input-group input-group-sm">
                <input value="${txtS}" type="text" name="txtSearch" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                <div class="input-group-append">
                    <button type="submit" class="btn btn-secondary btn-number">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form></a>

        <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item">
                <a href="https://github.com/mdbootstrap/bootstrap-material-design" class="nav-link border border-light rounded waves-effect"
                   target="_blank">
                    <i class="fas fa-rocket mr-2"></i>LOGIN
                </a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link waves-effect">
                    <span class="badge red z-depth-1 mr-1"> 1 </span>
                    <i class="fas fa-shopping-cart"></i>
                    <span class="clearfix d-none d-sm-inline-block"> Cart </span>
                </a>
            </li>
        </ul>
    </nav>
</header>
