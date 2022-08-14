<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/9/2022
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blog</title>
</head>
<body>
<div class="header__menu">
    <%@include file="/WEB-INF/views/user/navigation.jsp"%>
    <div class="slider__menu">
        <div class="slider__menu--text">
            <h2 class="slider__menu--title">
                Our News
            </h2>
            <p class="slider__menu--content">Our news and events.</p>
        </div>
    </div>
</div>
<div class="content__menu">
    <div class="content__menu--path">
        <a class="content__menu--link" href="./index.html" class="">Home</a> <i class="ti-angle-right"></i>
        <a class="content__menu--link" href="" class="">Our News</a>
    </div>

    <div class="content__news--white">
        <div class="news__intro">
            <div class="new__item">
                <img src="./assets/img/main/new1.jpg" alt="" class = "new--img">
                <div class="new--dcr">
                    <span>Etiam sodales, erat non.</span>
                    <h3 class="text--main">cafe</h3>

                    <p>" Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "</p>
                </div>
                <h4>24.04.2020 / 2 comments</h4>
            </div>
            <div class="new__item">
                <img src="./assets/img/main/new2.jpg" alt="" class = "new--img">
                <div class="new--dcr">
                    <span>Quisque volutpat mattis.</span>
                    <h3 class="text--main">restaurant</h3>
                    <p>" Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "</p>
                </div>
                <h4>30.03.2020 / 2 comments</h4>
            </div>

            <div class="new__item">
                <img src="./assets/img/main/new3.jpg" alt="" class = "new--img">
                <div class="new--dcr">
                    <span>Cras iaculis ultricies nulla.</span>
                    <h3 class="text--main">bakery</h3>

                    <p>" Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "</p>
                </div>
                <h4>15.06.2020 / 2 comments</h4>
            </div>
            <div class="new__item">
                <img src="./assets/img/main/new4.jpg" alt="" class = "new--img">
                <div class="new--dcr">
                    <span>Cras iaculis ultricies nulla.</span>
                    <h3 class="text--main">cook</h3>
                    <p>" Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "</p>
                </div>
                <h4>15.06.2020 / 2 comments</h4>
            </div>

            <div class="new__item">
                <img src="./assets/img/main/new5.jpg" alt="" class = "new--img">
                <div class="new--dcr">
                    <span>Cras iaculis ultricies nulla.</span>
                    <h3 class="text--main">burger</h3>

                    <p>" Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "</p>
                </div>
                <h4>15.06.2020 / 2 comments</h4>
            </div>

            <div class="new__item">
                <img src="./assets/img/main/new6.jpg" alt="" class = "new--img">
                <div class="new--dcr">
                    <span>Quisque volutpat mattis.</span>
                    <h3 class="text--main">sweet</h3>
                    <p>" Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "</p>
                </div>
                <h4>15.06.2020 / 2 comments</h4>
            </div>
            <div class="news__btn--page">
                <button>1</button>
                <button>2</button>
                <button>Next Page<i class="ti-angle-right"></i>
                </button>

            </div>
        </div>

        <div class="news_category">
            <div class="news__search">
                <input type="text" name="" id="" placeholder="Search...">
                <i class="fas fa-search"></i>
            </div>

            <h4 class="news__category--title">Categories</h4>
            <div class="news__category--list">
                <div class="news__category--item">
                    <div>
                        <i class="ti-angle-right"></i>
                        <a href="">Company</a>
                    </div>
                    <h4 class="">3</h4>
                </div>
                <div class="news__category--item">
                    <div class="div">
                        <i class="ti-angle-right"></i>
                        <a href="">Market Research</a>
                    </div>
                    <h4 class="">3</h4>
                </div>
                <div class="news__category--item">
                    <div class="div">
                        <i class="ti-angle-right"></i>
                        <a href="">Sales Services</a >
                    </div>
                    <h4 class="">2</h4>
                </div>
                <div class="news__category--item">
                    <div class="div">
                        <i class="ti-angle-right"></i>
                        <a href="">Manage Business</a >
                    </div>
                    <h4 class="">1</h4>
                </div>
                <div class="news__category--item">
                    <div class="div">
                        <i class="ti-angle-right"></i>
                        <a href="">Creativity</a >
                    </div>
                    <h4 class="">1</h4>
                </div>


            </div>

            <div class="news__category--post">
                <h4 class="news__category--title">Popular Posts</h4>

                <div class="news__post--list">
                    <div class="news__post--item">
                        <img src="./assets/img/main/post1__blog.jpg" alt="">
                        <div class="news__post--text">
                            <a href="">Aliquam tincidunt mauris eu risus.</a >
                            <span>21.04.2020</span>
                        </div>
                    </div>
                    <div class="news__post--item">
                        <img src="./assets/img/main/post2__blog.jpg" alt="">
                        <div class="news__post--text">
                            <a href="">Donec quis dui at dolor tempor interdum.</a >
                            <span>21.04.2020</span>
                        </div>
                    </div>
                    <div class="news__post--item">
                        <img src="./assets/img/main/post3__blog.jpg" alt="">
                        <div class="news__post--text">
                            <a href="">Vivamus molestie gravida turpis.
                            </a >
                            <span>21.04.2020</span>
                        </div>
                    </div>
                    <div class="news__post--item">
                        <img src="./assets/img/main/post4__blog.jpg" alt="">
                        <div class="news__post--text">
                            <a href="">Fusce lobortis lorem at ipsum semper sagittis.</a >
                            <span>21.04.2020</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>
</div>
</body>
</html>
