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
                <th>Image</th>
                <th>ID</th>
                <th>ID_Category</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
            </tr>
            <c:forEach var="item" items="${ProductsList}">
                <tr>
                    <td>
                        <img style="width: 50px;height: 50px" src="<c:url value="/assets/img/main/${item.img}"/> ">
                    </td>
                    <td>${item.id}</td>
                    <td>${item.id_category}</td>
                    <td>${item.name}</td>
                    <td>${item.description}</td>
                    <td>${item.price}</td>
                    <td><button class="btn--admin">
                        <a  href="http://">Edit</a>
                    </button></td>
                    <td><button class="btn--admin">
                        <a  href="<c:url value="/admin/DeleteProduct/${item.id}"/>">Remove</a>
                    </button></td>
                </tr>
            </c:forEach>


        </table>

    </div>
</div>
</body>
</html>