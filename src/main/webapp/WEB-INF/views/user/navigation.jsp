<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="nav">
    <div class="nav--wide">
        <div class="nav--logo">
            <a href="/" class=""><img src="<c:url value="/assets/img/main/logo--nav.png" />" alt="LOGO"></a>
        </div>

        <div class="nav__option--small">
            <i class="nav__list--small--btn fas fa-bars"></i>
            <div class="nav__option--small--list">
                <i class="back--btn fas fa-backspace"></i>
                <a href="./index.html" class="nav__link">Home
                </a>

                <div class="nav__link--list">
                    <a href="./about.html" class="nav__link">Menu <i class="ti-angle-down"></i></a>
                    <ul class="link__list--small">
                        <c:forEach var="item" items ="${categoryList}">
                            <li class="link__list--item--small"><a href="Koad_war_exploded/menu/${item.name}" class="">${item.name}</a></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="nav__link--list">
                    <a href="./about.html" class="nav__link">Page<i class="ti-angle-down"></i></a>
                    <ul class="link__list--small">
                        <li class="link__list--item--small "><a href="./about.html" class="">About Us</a></li>
                        <li class="link__list--item--small "><a href="./reservation.html" class="">Reservation</a></li>
                    </ul>
                </div>

                <div class="nav__link--list">
                    <a href="./blog.html" class="nav__link">News<i class="ti-angle-down"></i></a>
                    <ul class="link__list--small">
                        <li class="link__list--item--small "><a href="./blog.html" class="">Blog Page</a></li>
                        <li class="link__list--item--small "><a href="./post.html" class="">Single Post</a></li>
                    </ul>
                </div>
                <a href="./contact.html" class="nav__link">Contacts</a>
            </div>
        </div>

        <div class="nav__option">
            <a href="./index.html" class="nav__link">Home</a>
            <div class="nav__link--list">
                <a href="<c:url value="/" />" class="nav__link">Menu<i class="ti-angle-down"></i></a>
                <ul class="link__list">
                    <c:forEach var="item" items ="${categoryList}">
                         <li class="link__list--item"><a href="<c:url value="/menu/${item.name}"/>" class="">${item.name}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="nav__link--list">
                <a href="./about.html" class="nav__link">Page<i class="ti-angle-down"></i></a>
                <ul class="link__list">
                    <li class="link__list--item"><a href="./about.html" class="">About Us</a></li>
                    <li class="link__list--item"><a href="./reservation.html" class="">Reservation</a></li>
                </ul>
            </div>

            <div class="nav__link--list">
                <a href="./blog.html" class="nav__link">News<i class="ti-angle-down"></i></a>
                <ul class="link__list">
                    <li class="link__list--item"><a href="./blog.html" class="">Blog Page</a></li>
                    <li class="link__list--item"><a href="./post.html" class="">Single Post</a></li>
                </ul>
            </div>
            <a href="./contact.html" class="nav__link">Contacts</a>
            <a href="<c:url value="/Cart"/>" class="nav__link">
                <i class="ti-shopping-cart" ></i>
                <c:if test="${empty Cart}">
                    Cart - 0 item(s)
                </c:if>
                <c:if test="${not empty Cart}">
                    Cart - ${Cart.size()} item(s)
                </c:if>
            </a>
        </div>
        <div class="nav--btn btn--white"><a href="./reservation.html" class="">Book a Table</a></div>
    </div>

</div>
