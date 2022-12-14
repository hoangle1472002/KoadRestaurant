<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <form action="search" method="GET"  >
            <input type="text" style="border: 1px solid rgba(0,0,0,0.1);padding: 10px 0 10px 5px" placeholder="Enter name" name="name" />
            <button style="padding: 10px;background-color: var(--main--color);border: none;color: white;" type="submit">Search</button>
        </form>

        <table id="customers">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone</th>
            </tr>
            <c:forEach var="item" items="${UserAccounts}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.email}</td>
                    <td>${item.address}</td>
                    <td>${item.phone}</td>

                    <td><button class="btn--admin">
                        <a  href="<c:url value="/admin/DeleteAccount/${item.id}"/>">Remove</a>
                    </button></td>
                </tr>
            </c:forEach>


        </table>

    </div>
</div>
</body>
</html>