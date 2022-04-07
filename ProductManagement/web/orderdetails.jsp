
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details | Product Management</title>
    <link rel="stylesheet" href="css/orderD.css">
    <script src="js/Jquery.js"></script>
</head>
<body>
    <div class="header">
        <div class="back">
            <a href="userpage.jsp"><i class="fa-solid fa-arrow-left fa-xl"></i></a>
            <p>Back</p>
        </div>
        <h1>Order Details</h1>
    </div>
    <div class="container">
        <div class="main">
            <div class="card-header">
                <h2><i class="fa-solid fa-cart-shopping"></i> My Order</h2>
            </div>
            <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
            <c:forEach items="${sessionScope.orderList}" var="o" varStatus="loop">
                <form action="Feedback" method="POST">
                    <div class="recent-order">
                        <input style="display: none;" type="text" name="pID" value="${o.product.productID}">
                        <input style="display: none;" type="text" name="cusID" value="${sessionScope.cus.cusid}">
                        <div class="card-name">
                            <h4><c:out value="${o.product.name}"/><br>
                                <small style="color: #bbb;">Color: <c:out value="${o.product.color}"/></small>
                            </h4>
                            <c:choose>
                                <c:when test="${not empty o.shipDate}">
                                    <span class="status delivered">Delivered</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="status inprogress">In process</span>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div>
                            <h4>$<fmt:formatNumber type="number" maxFractionDigits="2" value="${o.totalprice}"/><br>
                                <small style="color: #ff6666;">Discount: <c:out value="${o.discount}"/></small>
                            </h4>
                        </div>
                        <div>
                            <h4>Quantity: <c:out value="${o.quantity}"/></h4>
                        </div>
                        <div>
                            <h4 id="feedback">Feedback -
                                <small style="color: #bbb; font-style: italic;"></small>
                            </h4>
                            <div class="card-feedback">
                                <textarea name="userfb" id="fb-area" onkeyup="req()">
                                    <c:if test="${not empty Feedb}">${Feedb.feedback.message}</c:if>
                                </textarea>
                                <div class="num-count">
                                    <button type="submit" class="status post">Post</button>
                                    <span id="left">1000</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
                </form>
            </c:forEach>
        </div>
    </div>
    
    <div class="footer">
        <i class="far fa-copyright"> This page was created by Anh Vo - 2022</i>
    </div>
    <script src="js/orderD.js"></script>
</body>
</html>
