<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Koad</title>
    <link rel="stylesheet" href="<c:url value="/assets/font/themify-icons/themify-icons.css"/> ">
    <link rel="stylesheet" href="<c:url value="/assets/css/admin.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/base.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/userInfomation.css"/>">

</head>
<body>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalide");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
%>
<div class="header__menu">
    <!--Navigation-->
    <%@include file="/WEB-INF/views/user/navigation.jsp"%>
</div>

<div class="grid-admin">
    <div class="sidebar">
        <h1 class="slidebar__title">Admin</h1>
        <div class="sidebar__nav">
            <a style="text-decoration: none" href="<c:url value="/admin/ManageAccounts"/>" class="sidebar__link">Manage Account</a>
            <a style="text-decoration: none" href="<c:url value="/admin/ManageBills"/>" class="sidebar__link">Manage Bills</a>
            <a style="text-decoration: none" href="<c:url value="/admin/ManageBooks"/>" class="sidebar__link">Manage Books</a>
            <a style="text-decoration: none" href="<c:url value="/admin/ManageProducts"/>" class="sidebar__link">Manage Products</a>

        </div>

    </div>
    <div class="content">

        <table id="customers">
            <tr>
                <th>ID_User</th>
                <th>Product's Name</th>
                <th>Quantity</th>
                <th>User's Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Total</th>
            </tr>
            <c:forEach var="item" items="${UserBills}">
                <tr>
                    <td>${item.id_user}</td>
                    <td>${item.name_product}</td>
                    <td>${item.quantity}</td>
                    <td>${item.name_user}</td>
                    <td>${item.email}</td>
                    <td>${item.phone}</td>
                    <td>${item.address}</td>
                    <td>${item.total}</td>

                    <td><button class="btn--admin">
                        <a  href="<c:url value="/admin/DeleteBill/${item.id}"/>">Remove</a>
                    </button></td>
                </tr>
            </c:forEach>


        </table>

    </div>
</div>
</body>
</html>