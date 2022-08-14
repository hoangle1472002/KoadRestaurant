<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style>
    * {box-sizing: border-box}

    /* Full-width input fields */
    input[type=text], input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    input[type=text]:focus, input[type=password]:focus {
        background-color: #ddd;
        outline: none;
    }

    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }

    /* Set a style for all buttons */
    button {
        background-color: #04AA6D;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    button:hover {
        opacity:1;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: #f44336;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn, .signupbtn {
        float: left;
        width: 50%;
    }

    /* Add padding to container elements */
    .container {
        padding: 16px;
    }

    /* Clear floats */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
            width: 100%;
        }
    }
</style>
<div class="header__menu">
    <%@include file="navigation.jsp"%>
</div>

<div class="content__menu">


<form:form action="register" method="POST" style="border:1px solid #ccc" modelAttribute="user">
        <div class="container">
            <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>

            <label for="email"><b>Email</b></label>
            <form:input  type="text" placeholder="Email" path="email" />

            <label for="psw"><b>Password</b></label>
            <form:input type="password" path="password" name="psw" placeholder="Enter Password" />

            <label ><b>Name</b></label>
            <form:input type="text" path="name"  placeholder="Enter Your Name" />

            <label ><b>Address</b></label>
            <form:input type="text" path="address"  placeholder="Enter Your Address" />

            <label><b>Phone</b></label>
            <form:input type="text" path="phone"  placeholder="Phone Number" />



            <h4>${statusRegister}</h4>

            <div class="clearfix">
                <button type="button" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Sign Up</button>
            </div>
        </div>

    </form:form>
</div>
