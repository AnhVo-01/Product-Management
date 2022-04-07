<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details | Product Management</title>
    <link rel="stylesheet" href="css/productD.css">
    <script src="https://kit.fontawesome.com/a4edd5786f.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="header">
        <div class="back">
            <a href="ProductList"><i class="fa-solid fa-arrow-left fa-xl"></i></a>
            <p>Back</p>
        </div>
        <h1>Product Details</h1>
    </div>
    <div class="container">
        <div class="product">
            <form action="DetailsController" method="GET">
                <div class="profile">
                    <h2>Details</h2>
                    <button class="button" type="submit"><i class="fa-regular fa-floppy-disk icon"></i> Save</button>
                </div>
                <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
                <div class="details">
                    <div>
                        <h5>ID</h5>
                        <input type="text" name="pid" value="${PDD.productID}" disabled>
                    </div>
                    <div>
                        <h5>Name</h5>
                        <input type="text" name="pname" value="${PDD.name}">
                    </div>
                    <div>
                        <h5>Color</h5>
                        <input type="text" name="pcolor" value="${PDD.color}">
                    </div>
                    <div>
                        <h5>Price</h5>
                        <input type="text" name="price" value="${PDD.price}">
                    </div>
                    <div>
                        <h5>Category</h5>
                        <input type="text" name="subcate" value="${PDD.subID}">
                    </div>
                    <div>
                        <h5>Discontinued</h5>
                        <input style="width: 50px" type="radio" name="Discon" value="Y" <c:if test="${PDD.discontinued}">checked</c:if>>Yes
                        <br>
                        <input style="width: 50px" type="radio" name="Discon" value="N" <c:if test="${!PDD.discontinued}">checked</c:if>>No
                    </div>
                    <div>
                        <h5>Model</h5>
                        <input type="text" name="modelID" value="${PDD.modelID}">
                    </div>
                </div>
            </form>
        </div>

        <sql:setDataSource var="db" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"  
                url="jdbc:sqlserver://localhost:1433;databaseName=PDM"  
                user="sa"  password="123456"/>
        <sql:query dataSource="${db}" var="rs">  
            SELECT ProductID, Name, Email, [Message], [Date]
            FROM [FeedbackProduct] fp
            INNER JOIN [Customers] c
            ON c.CustomerID = fp.CustomerID
            WHERE ProductID = ${PDD.productID}
        </sql:query> 
        <div class="feedback">
            <form action="">
                <div class="profile">
                    <h2>Feedback</h2>
                </div>
                <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
                <table>
                    <thead>
                        <tr>
                            <th></th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Content</th>
                            <th>Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="rsl" items="${rs.rows}">                   
                            <tr>
                                <td>
                                    <span class="status">
                                        <a style="color: #000;" href="#"><i class="fa-solid fa-trash-can remove"></i></a>
                                    </span>
                                </td>
                                <td><c:out value="${rsl.ProductID}"/></td>
                                <td><c:out value="${rsl.Name}"/> <br>
                                    <small><c:out value="${rsl.Email}"/></small>
                                </td>
                                <td><c:out value="${rsl.Message}"/></td>
                                <td><c:out value="${rsl.Date}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </form>
        </div>

        <div class="warehouse">
            <form action="">
                <div class="profile">
                    <h2>Ware House</h2>
                    <!-- <button class="button" type="submit"><i class="fa-regular fa-floppy-disk icon"></i> Save</button> -->
                </div>
                <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Selled</th>
                            <th>Availability</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${PDW}" var="w">
                            <tr>
                                <td><c:out value="${w.localid}"/></td>
                                <td><c:out value="${w.name}"/></td>
                                <td><c:out value="${w.selled}"/></td>
                                <td><c:out value="${w.avail}"/></td>
                                <td><c:out value="${w.total}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </form>
        </div>
    </div>

    <div class="footer">
        <i class="far fa-copyright"> This page was created by Anh Vo - 2022</i>
    </div>
</body>
</html>
