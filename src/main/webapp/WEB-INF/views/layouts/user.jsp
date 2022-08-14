<%@include file="user/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Koad</title>
    <!-- <link rel="icon"  type="image/x-icon" href="/assets/img/main/favicon-removebg"> -->
    <link rel="icon"  type="image/x-icon" href="https://thumbs.dreamstime.com/b/simple-restaurant-icon-can-flat-design-restaurant-icon-vector-restaurant-symbol-130849249.jpg">

    <link rel="stylesheet" href="<c:url value="/assets/css/base.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/menu.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/main.css"/> ">
    <link href="<c:url value="/assets/css/cart.css" />" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value="/assets/css/responsive.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/userInfomation.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/about.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/reservation.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/blog.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/css/post.css" />">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zilla+Slab:ital,wght@0,300;0,400;0,600;0,700;1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/assets/font/themify-icons/themify-icons.css"/> ">
    <link rel="stylesheet" href="<c:url value="/assets/font/fontawesome-free-5.15.4-web/css/all.css"/> ">


    <decorator:head />
</head>
<body>
<!-- CONTAINER -->
    <div>
        <decorator:body/>
    </div>

    <%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>

    <decorator:getProperty property="page.script"></decorator:getProperty>

<script src="<c:url value="/assets/js/jquery.js" /> "></script>
<script src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
<script
        src="<c:url value="/assets/js/jquery.easing-1.3.min.js "/>"></script>
<script
        src="<c:url value="/assets/js/jquery.scrollTo-1.4.3.1-min.js " />"></script>
<script src="<c:url value="/assets/js/shop.js" />"></script>
<script src="<c:url value="/assets/js/main.js" />"></script>
</body>
</html>