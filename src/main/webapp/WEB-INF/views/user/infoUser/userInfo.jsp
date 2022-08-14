<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>User Infomation</title>
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

</head>
<div class="header__menu">
    <%@include file="/WEB-INF/views/user/navigation.jsp"%>
</div>
<div class=""content__menu>
    <div class="container">
        <div class="row profile">
            <div class="col-md-3">
                <div class="profile-sidebar">
                    <div class="profile-userpic">                 <img src="https://hocwebgiare.com/thiet_ke_web_chuan_demo/bootstrap_user_profile/images/profile_user.jpg" class="img-responsive" alt="Thông tin cá nhân">
                    </div>
                    <div class="profile-usertitle">
                        <div class="profile-usertitle-name">${LoginInfo.name}</div>
                        <div class="profile-usertitle-job">Email : ${LoginInfo.email}</div>
                        <div class="profile-usertitle-job">Phone : ${LoginInfo.phone}</div>
                        <div class="profile-usertitle-job">Address : ${LoginInfo.address}</div>
                    </div>
                    <ul class="nav__user">

                        <li>
                            <a href="<c:url value="/userInfo"/>">Edit your infomation</a>
                        </li>
                        <li><a href="<c:url value="/userBill"/>">Manage bill </a>
                        </li>
                        <li><a href="<c:url value="/userBook"/>">Manage book</a>
                        </li>
                    </ul>

                </div>
            </div>
            <div class="col-md-9">

                <form:form action="userInfo" method="POST" style="border:1px solid #ccc" modelAttribute="user">
                    <div class="container">
                        <h1>Update your infomation</h1>

                        <hr>

                        <label ><b>Full Name</b></label>
                        <form:input  type="text" placeholder="Full Name" path="name" />

                        <label ><b>Password</b></label>
                        <form:input  type="password" placeholder="Password" path="password" />


                        <label ><b>Address</b></label>
                        <form:input type="text" path="address"  placeholder="Address" />

                        <label><b>Phone</b></label>
                        <form:input type="text" path="phone"  placeholder="Phone Number" />


                        <div class="clearfix">
                            <button type="submit" class="signupbtn">Update</button>
                            <button type="button" class="cancelbtn">Cancel</button>
                        </div>
                    </div>
                </form:form>
                <h3 style="color: var(--main--color)">${statusRegister}</h3>

            </div>
        </div>
    </div>
</div>


