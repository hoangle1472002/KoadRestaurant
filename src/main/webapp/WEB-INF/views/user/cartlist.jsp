
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>

</head>
<body>
<div class="header__menu">
    <!--Navigation-->
    <%@include file="navigation.jsp"%>
    <div class="slider__menu">
        <div class="slider__menu--text">
            <h2 class="slider__menu--title">
                Cart
            </h2>
            <p class="slider__menu--content">Good food fresh ingredients.</p>
        </div>
    </div>
</div>
<div class="content__menu" style="margin:100px auto">

    <div class="shopping-cart">

        <div class="column-labels">
            <label style="text-align:center" class="product-image">Image</label>
            <label class="product-details">Product</label>
            <label class="product-price">Price</label>
            <label class="product-quantity">Quantity</label>
            <label class="product-removal">Remove</label>
            <label class="product-line-price">Total</label>
        </div>

        <c:if test="${not empty Cart}">
            <c:forEach var ="item"  items="${Cart}" >
                <div class="product">
                    <div class="product-image">
                        <img src="<c:url value="/assets/img/main/${item.value.product.img}"/>">
                    </div>
                    <div class="product-details">
                        <div class="product-title">${item.value.product.name}</div>
                        <p class="product-description">${item.value.product.description}</p>
                    </div>
                    <div class="product-price">${item.value.product.price}</div>
                    <div class="product-quantity">
                            <input type="number" min="0" max="1000" class="span1" style="max-width:34px" placeholder="1" id="quantity-cart-${item.key }" size="16" type="text" value="${ item.value.quantity }">

                            <button data-id="${item.key }" class="btn btn-mini btn-danger edit-cart" type="button">
                                <i class="ti-check"></i>
                            </button>
                    </div>
                    <div class="product-removal">
                        <a href="<c:url value="/DeleteCart/${item.key}"/>" class="remove-product">
                            Remove
                        </a>
                    </div>
                    <div class="product-line-price">${item.value.totalPrice}</div>
                </div>


            </c:forEach>

        </c:if>


        <div class="totals">
            <div class="totals-item">
                <label>Total</label>
                <div class="totals-value" id="cart-subtotal">${TotalPriceCart}</div>
            </div>

        </div>


            <a class="checkout" href="<c:url value="/checkout"/>">Checkout</a>


    </div>
</div>

</body>
</html>
