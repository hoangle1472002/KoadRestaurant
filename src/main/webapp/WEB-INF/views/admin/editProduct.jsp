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
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalide");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
%>
<div class="header__menu">
    <%@include file="/WEB-INF/views/user/navigation.jsp"%>
</div>

<div class="content__menu">

    <c:url var="post_url"  value="${id}" />
    <form:form action="${post_url}" method="POST" style="border:1px solid #ccc" modelAttribute="product">
        <div class="container">
            <h1>Update product</h1>
            <p>Please fill in this form to update a product.</p>
            <hr>

            <label  ><b>ID_Category</b></label>
            <form:input  type="text"  path="id_category" />

            <label  ><b>Product's Name</b></label>
            <form:input type="text" path="name"  />

            <label ><b>Description</b></label>
            <form:input type="text" path="description" />

            <label ><b>Price</b></label>
            <form:input type="text" path="price"  />

            <label><b>Image</b></label>
            <form:input type="text" path="img"   />


            <div class="clearfix">
                <button type="button" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Update</button>
            </div>
        </div>

    </form:form>
</div>
