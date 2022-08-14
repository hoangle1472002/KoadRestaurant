<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
    <title>Reservation</title>
    <style>
        .btn--main {
            display: block;
            text-decoration: none;
            font-size: 18px;
            padding: 12px 35px;
            font-weight: 600;
            color: white;
            background-color: var(--main--color);
            transition: all 0.2s;
            border: 1px solid var(--main--color);

        }
        .btn--main:hover {
            cursor: pointer;
            background-color:white ;
            color: var(--main--color);
            border:1px solid var(--main--color);
        }

    </style>
</head>
<body>
<div class="header__menu">
    <%@include file="/WEB-INF/views/user/navigation.jsp"%>
    <div class="slider__menu">
        <div class="slider__menu--text">
            <h2 class="slider__menu--title">
                Book A Table
            </h2>
            <p class="slider__menu--content">Reservation.</p>
        </div>
    </div>
</div>
<div class="content__menu">
    <div class="content__menu--path border--bottom">
        <a class="content__menu--link" href="./index.html" class="">Home</a> <i class="ti-angle-right"></i>
        <a class="content__menu--link" href="" class="">Our Menu</a>
    </div>

    <div class="content__section">
        <div class="content--intro ">
            <h4 class="intro--title">Book a Table</h4>
            <span class="res__intro--slogan">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedolorm reminusto
                        doeiusmod tempor condorico consectetur adipiscing elitut aliquip.</span>



    <div class="reservation__menu--res">
                <!-- fix -->
        <form:form action="reservation" method="POST"  modelAttribute="book">
                <div class="reservation__banner--text">

                    <div class="reservation__input--res">
                        <div class="input__content--res">
                            <label >Your Name :</label>
                            <form:input  type="text" placeholder="Email" path="name_user" />

                        </div>
                        <div class="input__content--res">
                            <label for="">Date :</label>
                            <form:input  type="date" placeholder="" path="date" />
                        </div>
                        <div class="input__content--res">
                            <label for="">Time :</label>
                            <form:input  type="time" placeholder="" path="time" />
                        </div>
                        <div class="input__content--res">
                            <label for="">Guest :</label>
                            <form:input  type="text" placeholder="" path="guest" />
                        </div>

                    </div>
                    <div class="input__content--res input--message">
                        <label for="">Message :</label>
                        <form:input  type="text" placeholder="" path="message" />
                    </div>
                    <button class="btn--main" type="submit">Reservation</button>

                </div>
        </form:form>
            </div>

        </div>
    </div>
</div>
</body>

