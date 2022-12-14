<head>
    <title>User Infomation</title>
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
                    <div class="profile-usertitle-name">Le Hoang</div>
                    <div class="profile-usertitle-job">Email : .......</div>
                    <div class="profile-usertitle-job">Phone : .......</div>
                    <div class="profile-usertitle-job">Address : .....</div>
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


            <table id="customers">
                <tr>
                    <th>Name</th>
                    <th>Date</th>
                    <th>TimeName</th>
                    <th>Guest</th>
                    <th>Message</th>
                </tr>
                <c:forEach var="item" items="${books}">
                    <tr>
                        <td>${item.name_user}</td>
                        <td>${item.date}</td>
                        <td>${item.time}</td>
                        <td>${item.guest}</td>
                        <td>${item.message}</td>

                    </tr>
                </c:forEach>


            </table>


        </div>
    </div>
</div>
</div>