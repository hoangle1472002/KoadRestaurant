<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <style>
        .pagination {
            display:flex;
       justify-content: center;
        }

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
        }

        .pagination a.active {
            background-color: var(--main--color);
            color: white;
        }

        .pagination a:hover:not(.active) {background-color: #ddd;}
    </style>
</head>
<div class="header__menu">
    <!--Navigation-->
   <%@include file="navigation.jsp"%>
    <div class="slider__menu">
        <div class="slider__menu--text">
            <h2 class="slider__menu--title">
                Our Menu
            </h2>
            <p class="slider__menu--content">Good food fresh ingredients.</p>
        </div>
    </div>
</div>


<div class="content__menu">
    <div class="content__menu--path">
        <a class="content__menu--link" href="./index.html" class="">Home</a> <i class="ti-angle-right"></i>
        <a class="content__menu--link" href="" class="">Our Menu</a>
    </div>

    <div class="content__section">
        <div class="content--intro">
            <h4 class="intro--title">${category}</h4>
            <span class="intro--slogan">Try the delicious new dishes from our chef.</span>
            <c:if test="${ productsPaginate.size() > 0 }">
            <div class="intro__wrapper">
                <div class="intro__menu menu__list--food">

                    <c:forEach var="item" items="${ productsPaginate }"
                               varStatus="loop">
                        <form method = "get" action="<c:url value="/AddCart/${item.id}" />">
                            <div class="intro__menu--item menu__list--item">
                                <img src="<c:url value="/assets/img/main/${item.img}" />" alt="image" class="intro__menu--img menu__list--food--img">
                                <span class="intro__menu--name">${item.name}</span>
                                <p class="intro__menu--dcr">${item.description}</p>
                                <span class="intro__menu--cost">$ ${item.price}</span>
                                <div class="btn--white"><a href="<c:url value="/AddCart/${item.id}" />">Add To Cart</a></div>
                            </div>
                        </form>
                    <c:if
                            test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == productsPaginate.size() }">
                </ul>
            </div>
            <c:if test="${ (loop.index + 1) < productsPaginate.size() }">
                <div class="intro__wrapper">
                    <div class="intro__menu menu__list--food">

                    </c:if>
                    </c:if>

                    </c:forEach>

                    </c:if>
        </div>

                    <div class="pagination">
                        <c:forEach var="item" begin="1"
                                   end="${paginateInfo.totalPage }" varStatus="loop">
                            <c:if test="${(loop.index) == paginateInfo.currentPage }">
                                <a href="<c:url value="/menu/${category }/${loop.index }" />" class="active">${loop.index }</a>
                            </c:if>
                            <c:if test="${ (loop.index) != paginateInfo.currentPage }">
                                <a href="<c:url value="/menu/${category }/${loop.index }" />" class="">${loop.index }</a>
                            </c:if>

                        </c:forEach>
                    </div>
    </div>


</div>


