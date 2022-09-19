<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 14/09/2022
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
</head>
<body>
Add Product to Order #${order.id}
<form:form>
    <input type="text" name="searchProduct" placeholder="Search Product"/>
    <input type="submit" value="Search"/>
</form:form>
<br>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <c:url var="addProductToOrder" value="/orders/addProduct">
                <c:param name="productId" value="${product.id}"/>
                <c:param name="orderId" value="${order.id}"/>
            </c:url>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.stock}</td>
            <td><a href="${addProductToOrder}">Add To Order</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
