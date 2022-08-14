<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/9/2022
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post</title>
</head>
<body>
<div class="header__post">
    <%@include file="/WEB-INF/views/user/navigation.jsp"%>
    <div class="slider__menu">
        <div class="slider__menu--text">
            <h2 class="slider__menu--title">
                Our Post
            </h2>
            <p class="slider__menu--content">Our news and posts.</p>
        </div>
    </div>
</div>
<div class="content__menu">
    <div class="content__menu--path">
        <a class="content__menu--link" href="./index.html" class="">Home</a> <i class="ti-angle-right"></i>
        <a class="content__menu--link" href="" class="">Our Post</a>
    </div>

    <div class="content__news--white">
        <div class="posts__intro">
            <div class="post__item">
                <img src="./assets/img/main/post1__POST.jpg" alt="" class="post--img">
                <div class="post--dcr">
                    <h4>15.06.2020 / 2 comments</h4>
                    <span>Cras iaculis ultricies nulla.</span>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.</p>
                    <p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>
                    <div class="post__quote">
                        <img class="post__qoute--img" src="./assets/img/main/quote.__POSTjpg.jpg" alt="">
                        <span>Mauris nibh felis, adipiscing varius, adipiscing in, lacinia vel, tellus. Suspendisse ac urna.</span>
                    </div>
                    <p>Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti. Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus.</p>
                    <div class="post__img">
                        <img  src="./assets/img/main/post2__POST.jpg" alt="">
                        <img  src="./assets/img/main/post3_POST.jpg" alt="">
                    </div>
                    <p>Nullam mollis. Ut justo. Suspendisse potenti. Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl.</p>

                    <!-- INFO -->
                    <div class="post__info">
                        <div class="info__tags">
                            <span>By : <a href="">Admin</a> </span>
                            <span>Tags : <a href="">Recipes</a> </span>
                        </div>

                        <div class="info__media">
                            <span>Share :
                                <a href="" class="">
                                    <i class="fab fa-twitter twitter"></i>
                                </a>
                               <a href="" class="">
                                   <i class="fab fa-facebook-f facebook"></i>
                               </a>
                                <a href="" class="">
                                    <i class="fab fa-instagram instagram"></i>
                                </a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="post__cmt">
                <span class="post__cmt--title">2 Comments</span>

                <div class="post__cmt--list">
                    <div class="post__cmt--item">
                        <img class="post__cmt--img" src="./assets/img/main/ava1__POST.jpg" alt="">
                        <div class="post__cmt--info">
                            <div class="post__cmt--reply">
                                <h4>Phillip Win</h4>
                                <div class="post__cmt--time">
                                    <span>ReplyPosted October 7, 2018 </span>
                                    <i class="fas fa-reply"></i>
                                    <a href="" class="">Reply</a>
                                </div>
                            </div>
                            <p>Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl.</p>
                        </div>
                    </div>

                    <div class="post__cmt--item">
                        <img class="post__cmt--img" src="./assets/img/main/ava2__POST.jpg" alt="">
                        <div class="post__cmt--info">
                            <div class="post__cmt--reply">
                                <h4>John Doe</h4>
                                <div class="post__cmt--time">
                                    <span>ReplyPosted October 9, 2018 </span>
                                    <i class="fas fa-reply"></i>
                                    <a href="" class="">Reply</a>
                                </div>
                            </div>
                            <p>Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl.</p>
                        </div>
                    </div>



                </div>

                <div class="post__input">
                    <span class="post__cmt--title">Add a Comment</span>
                    <form class="post__input--info">
                        <input type="text" placeholder = "Your name" >
                        <input type="text" placeholder = "Your email address" >
                    </form>
                    <input type="text" placeholder = "Write your comment" >

                </div>
            </div>
            <div class="post__btn btn--white">
                <a href="" class="">Post Comment</a>
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
                        <a href="">Company</a href="">
                    </div>
                    <h4 class="">3</h4>
                </div>
                <div class="news__category--item">
                    <div class="div">
                        <i class="ti-angle-right"></i>
                        <a href="">Market Research</a href="">
                    </div>
                    <h4 class="">3</h4>
                </div>
                <div class="news__category--item">
                    <div class="div">
                        <i class="ti-angle-right"></i>
                        <a href="">Sales Services</a href="">
                    </div>
                    <h4 class="">2</h4>
                </div>
                <div class="news__category--item">
                    <div class="div">
                        <i class="ti-angle-right"></i>
                        <a href="">Manage Business</a href="">
                    </div>
                    <h4 class="">1</h4>
                </div>
                <div class="news__category--item">
                    <div class="div">
                        <i class="ti-angle-right"></i>
                        <a href="">Creativity</a href="">
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
                            <a href="">Aliquam tincidunt mauris eu risus.</a href="">
                            <span>21.04.2020</span>
                        </div>
                    </div>
                    <div class="news__post--item">
                        <img src="./assets/img/main/post2__blog.jpg" alt="">
                        <div class="news__post--text">
                            <a href="">Donec quis dui at dolor tempor interdum.</a href="">
                            <span>21.04.2020</span>
                        </div>
                    </div>
                    <div class="news__post--item">
                        <img src="./assets/img/main/post3__blog.jpg" alt="">
                        <div class="news__post--text">
                            <a href="">Vivamus molestie gravida turpis.
                            </a href="">
                            <span>21.04.2020</span>
                        </div>
                    </div>
                    <div class="news__post--item">
                        <img src="./assets/img/main/post4__blog.jpg" alt="">
                        <div class="news__post--text">
                            <a href="">Fusce lobortis lorem at ipsum semper sagittis.</a href="">
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
