<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Checkout</title>
  <style>
    .row {
      display: -ms-flexbox; /* IE10 */
      display: flex;
      -ms-flex-wrap: wrap; /* IE10 */
      flex-wrap: wrap;
      margin: 0 -16px;
    }

    .col-25 {
      -ms-flex: 25%; /* IE10 */
      flex: 25%;
    }

    .col-50 {
      -ms-flex: 50%; /* IE10 */
      flex: 50%;
    }

    .col-75 {
      -ms-flex: 75%; /* IE10 */
      flex: 75%;
    }

    .col-25,
    .col-50,
    .col-75 {
      padding: 0 16px;
    }

    .container {
      background-color: #f2f2f2;
      padding: 5px 20px 15px 20px;
      border: 1px solid lightgrey;
      border-radius: 3px;
    }

    input[type=text] {
      width: 100%;
      margin-bottom: 20px;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    label {
      margin-bottom: 10px;
      display: block;
    }

    .icon-container {
      margin-bottom: 20px;
      padding: 7px 0;
      font-size: 24px;
    }

    .btn {
      background-color: #04AA6D;
      color: white;
      padding: 12px;
      margin: 10px 0;
      border: none;
      width: 100%;
      border-radius: 3px;
      cursor: pointer;
      font-size: 17px;
    }

    .btn:hover {
      background-color: #45a049;
    }

    span.price {
      float: right;
      color: grey;
    }

    /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
    @media (max-width: 800px) {
      .row {
        flex-direction: column-reverse;
      }
      .col-25 {
        margin-bottom: 20px;
      }
    }
  </style>
</head>

<body>


<div class="header__menu">
  <%@include file="navigation.jsp"%>
</div>
<div class="content__menu" style="margin:100px auto">

    <div class="row">
    <div class="col-75">
    <div class="container">
<form:form action="checkout" method="POST"  modelAttribute="bill">

        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <form:input  type="text" id="fname" name="firstname" placeholder="Enter your name" path="name_user" />

            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <form:input  type="text" id="email" name="email" placeholder="Email" path="email" />

            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <form:input  type="text" id="adr" name="address" placeholder="Enter your address" path="address" />

            <label for="phone"><i class="fa fa-institution"></i> Phone Number</label>
            <form:input  type="text" id="phone" name="phone" placeholder="0123456789" path="phone" />
          </div>

        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <button type="submit"  class="btn">Checkout</button>
</form:form>
    </div>
  </div>

  <div class="col-25">
    <div class="container">
      <h4>Cart
        <span class="price" style="color:black">
          <i class="fa fa-shopping-cart"></i>
          <b>4</b>
        </span>
      </h4>
        <c:forEach var="item" items="${Cart}">
            <p><a href="#">${item.value.product.name}</a> <span class="price">$${item.value.product.price}</span></p>
        </c:forEach>
      <hr>
      <p>Total <span class="price" style="color:black"><b>${TotalPriceCart}</b></span></p>
    </div>
  </div>
</div>
</div>
</body>
</html>
