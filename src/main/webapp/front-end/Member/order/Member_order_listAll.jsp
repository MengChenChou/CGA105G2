<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.order.model.Order.pojo.*" %>
<%@ page import=" com.member.model.service.*" %>
<%@ page import=" com.order.model.service.*" %>

<%
    Integer memId = (Integer)request.getAttribute("memId");
    OrderService orderSvc = new OrderService();
    List<Order> list = orderSvc.getByMemId(memId);
    pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>๐ป่จๅฎ</title>
    <style type="text/css">
    </style>
</head>

<body>
<!-- header start -->
<%@ include file="/front-end/Member/01h/headerin.jsp" %>
<!-- header end -->
<!-- main -->
<div class="container-fluid">
    <div class="row">
        <!-- nav start -->
        <%@ include file="/front-end/Member/01h/nav/navin04.jsp" %>
        <!-- nav end -->
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4 my-5">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">๐่จๅฎๆฅ่ฉข</h1>
            </div>
            <!-- ๅๅๅ่กจ้ๅง -->
            <section class="pt80 pb80 listingDetails Campaigns">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 Filter-left mb-60">

                            <table class="table table-hover table-responsive-sm fold-table">
                                <thead class="thead-light">
                                <tr class="text-center">
                                    <th scope="col">ๅๅ่จๅฎ็ทจ่</th>
                                    <th scope="col">ๅๅน</th>
                                    <th scope="col">ๆๆฃ</th>
                                    <th scope="col">้่ฒป</th>
                                    <th scope="col">ไปๆฌพ้้ก</th>
                                    <th scope="col">่จๅฎๆ็ซๆฅๆ</th>
                                    <th scope="col">ๆฅ็่ฉณๆ</th>
                                </tr>
                                </thead>
                                <tbody class="text-center">
                                <c:forEach var="Order" items="${list}">
                                    <tr>
                                        <td># ${Order.orderId}</td>
                                        <td>${Order.orderPrice}</td>
                                        <td>-</td>
                                        <td class="text-danger">${Order.orderFre}</td>
                                        <td class="text-danger">${Order.orderFprice}</td>
                                        <td>${Order.orderTime}</td>
                                        <td>
											<a class="btn btn-outline-dark mt-auto fs-4" href="/CGA105G2/orderDetail.do?orderId=${Order.orderId}&action=getOne_For_Display">่จๅฎๆ็ดฐ</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </section>
            <!-- ๅๅๅ่กจ็ตๆ -->

        </main>
    </div>
</div>

<!-- main -->

<!-- footer start -->
<%@ include file="/front-end/Member/01h/footerin.jsp" %>
<!-- footer end -->
<script>
    $("a:contains(๐๏ธ็ฎก็)").closest("a").addClass("active disabled topage");
    $("a:contains(๐ป่จๅฎ)").closest("a").attr("data-toggle", "show");
    $("#pageSubmenu2").removeClass("collapse");
    $("#pageSubmenu2 a:contains(๐่จๅฎๆฅ่ฉข)").closest("a").addClass("active disabled bg-white topage");
</script>
</body>

</html>