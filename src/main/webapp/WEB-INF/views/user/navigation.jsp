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
                <a href="<c:url value="/"/>" class="nav__link">Home
                </a>

                <div class="nav__link--list">
                    <a href="<c:url value="/menu/Pizza"/>" class="nav__link">Menu <i class="ti-angle-down"></i></a>
                    <ul class="link__list--small">
                        <c:forEach var="item" items ="${categoryList}">
                            <li class="link__list--item--small"><a href="<c:url value="/menu/${item.name}"/>" class="">${item.name}</a></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="nav__link--list">
                    <a href="<c:url value="/about"/>"  class="nav__link">Page<i class="ti-angle-down"></i></a>
                    <ul class="link__list--small">
                        <li class="link__list--item--small "><a href="<c:url value="/about"/>"  class="">About Us</a></li>
                        <li class="link__list--item--small "><a href="<c:url value="/reservation"/>"  class="">Reservation</a></li>
                    </ul>
                </div>

                <div class="nav__link--list">
                    <a href="<c:url value="/blog"/>"  class="nav__link">News<i class="ti-angle-down"></i></a>
                    <ul class="link__list--small">
                        <li class="link__list--item--small "><a href="<c:url value="/blog"/>" class="">Blog Page</a></li>
                        <li class="link__list--item--small "><a href="<c:url value="/post"/>" class="">Single Post</a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="nav__option">
            <a href="<c:url value="/"/>" class="nav__link">Home</a>
            <div class="nav__link--list">
                <a href="<c:url value="/menu/Pizza" />" class="nav__link">Menu<i class="ti-angle-down"></i></a>
                <ul class="link__list">
                    <c:forEach var="item" items ="${categoryList}">
                         <li class="link__list--item"><a href="<c:url value="/menu/${item.name}"/>" class="">${item.name}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="nav__link--list">
                <a href="<c:url value="/about"/>" class="nav__link">Page<i class="ti-angle-down"></i></a>
                <ul class="link__list">
                    <li class="link__list--item"><a href="<c:url value="/about"/>" class="">About Us</a></li>
                    <li class="link__list--item"><a href="<c:url value="/reservation"/>" class="">Reservation</a></li>
                </ul>
            </div>

            <div class="nav__link--list">
                <a href="<c:url value="/blog"/>" class="nav__link">News<i class="ti-angle-down"></i></a>
                <ul class="link__list">
                    <li class="link__list--item"><a href="<c:url value="/blog"/>" class="">Blog Page</a></li>
                    <li class="link__list--item"><a href="<c:url value="/post"/>" class="">Single Post</a></li>
                </ul>
            </div>
            <div  style="display: flex">
                <c:if test="${not empty LoginInfo}">
                    <c:if test="${LoginInfo.id > 1}">
                        <a class="nav__link" href="<c:url value="/userInfo"/>">
                            <i class="ti-user" style="font-size:15px " ></i>
                                ${LoginInfo.name}
                        </a>
                    </c:if>

                    <c:if test="${LoginInfo.id == 1}">
                        <a class="nav__link" href="<c:url value="/admin"/>">
                            <i class="ti-user" style="font-size:15px " ></i>
                                ${LoginInfo.name}
                        </a>
                    </c:if>

                </c:if>

                <a class="nav__link" href="<c:url value="/Cart"/>">
                    <i class="ti-shopping-cart" style="font-size:15px " ></i>
                    <c:if test="${empty Cart}">
                        0 item(s)
                    </c:if>
                    <c:if test="${not empty Cart}">
                        ${Cart.size()} item(s)
                    </c:if>
                </a>

            </div>
        </div>
        <div class="nav--btn btn--white"><a href="<c:url value="/reservation"/>" class="">Book a Table</a></div>
        <c:if test="${not empty LoginInfo}">
            <div class="nav--btn btn--white"><a href="<c:url value="/logout"/>" class="">Logout</a></div>
        </c:if>
        <c:if test="${empty LoginInfo}">
            <div class="nav--btn btn--white"><a href="<c:url value="/login"/>" class="">Login</a></div>
        </c:if>


    </div>

</div>
