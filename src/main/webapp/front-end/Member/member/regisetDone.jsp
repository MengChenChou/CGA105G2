<%@ page import="com.member.model.Member.pojo.Member" %>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html class="no-js" lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="x-ua-compatible" content="ie=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <title>🗃️管理</title>
            </head>

            <body>
                <!-- header start -->
                <%@ include file="/front-end/Member/01h/headerout.jsp" %>
                    <!-- header end -->
                    <!-- main -->
                    <div class="container-fluid container">
                        <main role="main" class="col-md-9 m-sm-auto col-lg-10 px-md-4 my-5 container">
                            <!-- "contacts" section start -->
                            <section class="section container" id="contacts">
                                <div class="section-content container">
                                    <div class="">
                                        <div class="col-12 col-lg-12 mb-14 mb-lg-0 text-center card shadow-lg">
                                            <div class="p-5 m-5">
                                                <h1>註冊成功</h1> <br>
                                                <p>已將驗證信發送至您的信箱</p>
                                                <span id="count"></span><span>秒後跳轉至上頁</span>
                                                <a href="<%request.getContextPath(); %>/CGA105G2/index.jsp"
                                                    class="btn btn-block btn-primary my-5">或點此回上一頁</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </section>
                        </main>
                    </div>
                    <canvas height="200"></canvas>
                    <a class="d-block btn btn-outline-danger  position-fixed position-bottom-10  position-right-10 text-center"
                        href="#" data-toggle="smooth-scroll" data-target="#page-start-anchor"
                        style="z-index: 9; border-radius: 50%;"> <i class="material-icons text-black ">arrow_upward</i>
                    </a>
                    <!-- main -->
                    <!-- footer start -->
                    <%@ include file="/front-end/Member/01h/footerin.jsp" %>
                        <!-- footer end -->
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
                            crossorigin="anonymous"></script>
                        <script src="https://demeter.5fpro.com/tw/zipcode-selector.js"></script>
                        <script>
                            $("a:contains(📭聯繫我們)").closest("a").addClass("active disabled topage");
                            //設定倒數秒數
                            let t = 5;
                            //顯示倒數秒數
                            function showTime() {
                                t -= 1;
                                document.getElementById('count').innerHTML = t;
                                if (t == 0) {
                                    location.href = '<%request.getContextPath(); %>/CGA105G2/index.jsp';
                                }
                                //每秒執行一次,showTime()
                                setTimeout("showTime()", 1000);
                            }

                            //執行showTime()
                            showTime();



                            $("a:contains(🥙註冊)").closest("a").addClass("active disabled topage");
                            $(document).ready(function () {
                                new ClipboardJS('.btn');
                            });
                        </script>
                        <script src="https://demeter.5fpro.com/tw/zipcode-selector.js"></script>
            </body>

            </html>