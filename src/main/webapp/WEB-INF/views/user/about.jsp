<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/9/2022
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About Us</title>
</head>
<body>
<div class="header__menu">
    <%@include file="/WEB-INF/views/user/navigation.jsp"%>
    <div class="slider__menu">
        <div class="slider__menu--text">
            <h2 class="slider__menu--title">
                About Us
            </h2>
            <p class="slider__menu--content">Get to know more about our bistro.</p>
        </div>
    </div>
</div>
<div class="">
    <div class="content__menu">
        <div class="content__menu--path">
            <a class="content__menu--link" href="./index.html" class="">Home</a> <i class="ti-angle-right"></i>
            <a class="content__menu--link" href="" class="">About Us</a>
            <div class="about__history">
                <img src="./assets/img/main/chef1__ABOUT.png" alt="">
                <div class="about__history--content">
                    <h4>Our History</h4>
                    <span>Discover Our Story</span>
                    <p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor.</p>
                    <p>Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>
                    <div class="about__history--chef">
                        <img class="about__history--chef--ava" src="./assets/img/main/chef1--ava__ABOUT.jpg" alt="">
                        <img class="about__history--chef--sign" src="./assets/img/main/chef1--sign__ABOUT.png" alt="">
                    </div>
                </div>
            </div>

            <div class="about__history">
                <div class="about__history--content">
                    <h4>Who We Are</h4>
                    <span>Welcome to Koad</span>
                    <p>Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>
                    <p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilisis libero dolor a purus.</p>
                </div>
                <img src="./assets/img/main/intro__ABOUT.png" alt="">

            </div>

            <div class="about__quantity">
                <div   class="quatity__item">
                    <span class="quatity__item--number">60+</span>
                    <span class="quatity__item--dcr">Tasty Dishes</span>
                </div>
                <div class="quatity__item">
                    <span class="quatity__item--number">25k</span>
                    <span class="quatity__item--dcr">Happy Customers</span>
                </div>
                <div class="quatity__item">
                    <span class="quatity__item--number">12</span>
                    <span class="quatity__item--dcr">Amazing Chifs</span>
                </div>
                <div class="quatity__item">
                    <span class="quatity__item--number">300+</span>
                    <span class="quatity__item--dcr">Best Recipts</span>
                </div>

            </div>
        </div>
    </div>


    <div class="about__chef">
        <div class="content__chef">
            <div class="chef__info">
                <h4>Meet Our Chefs</h4>
                <span>They Say About Us</span>
            </div>

            <div class="chef__list">
                <div class="chef__item">
                    <img src="./assets/img/main/chef1--list.jpg" alt="">
                    <div class="chef__item--name">
                        <h4>Corben Naylor</h4>
                        <span>Chef</span>
                        <div class="chef__info--icon">
                            <a href="">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>

                </div>
                <div class="chef__item">
                    <img src="./assets/img/main/chef2--list.jpg" alt="">
                    <div class="chef__item--name">
                        <h4>Jozefo Teodora</h4>
                        <span>Chef</span>
                        <div class="chef__info--icon">
                            <a href="">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>


                </div>
                <div class="chef__item">
                    <img src="./assets/img/main/chef3--list.jpg" alt="">
                    <div class="chef__item--name">
                        <h4>Raya Leach</h4>
                        <span>Chef</span>
                        <div class="chef__info--icon">
                            <a href="">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>

    <div class="about__cmt">
        <div class="cmt">
            <div class="cmt--title">
                <h3>Testimonials</h3>
                <span>They Say About Us</span>
            </div>

            <div class="intro__block">
                <div class="intro__Wrapper">
                    <div class="cmt__list">
                        <div class="cmt__item box--shadow">
                            <img src="./assets/img/main/cmt--img1.jpg" alt="">
                            <span>Jane Avila</span>
                            <p>Manager</p>

                            <div class="cmt--dcr">
                                " Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "

                            </div>
                        </div>

                        <div class="cmt__item box--shadow">
                            <img src="./assets/img/main/cmt--img2.jpg" alt="">
                            <span>Rhiana Fields</span>
                            <p>Designer</p>

                            <div class="cmt--dcr">
                                " Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "

                            </div>
                        </div>

                        <div class="cmt__item box--shadow">
                            <img src="./assets/img/main/cmt--img3.jpg" alt="">
                            <span>Corben Naylor</span>
                            <p>Chef</p>

                            <div class="cmt--dcr">
                                " Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellente squefelis. "
                            </div>
                        </div>



                    </div>
                </div>
            </div>

            <div class="dot--list">
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>
    </div>

</div>
</body>
</html>
