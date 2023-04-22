<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Random" %>

<html>
<body  style="text-align:center;">

<div >
    <h1 >
        Game đoán số
    </h1>
    <h3>
        Đoán số ngẫu nhiên trong khoảng [1-1000]
    </h3>
    <h2>${message}</h2>
    <% String contextPath = request.getContextPath();%>
    <form action="<%=contextPath%>" method="post">
        <input type="number" name="number"/>
        <button type="submit" >Xác nhận</button>
    </form>
</div>
<b>Bảng xếp hạng</b>
<table  style="margin-left:auto; margin-right:auto;">
    <tr>
        <td>Xếp hạng</td>
        <td>Tên</td>
        <td>Điểm số</td>
    </tr>
    <c:if test="${players!=null}">
        <c:forEach var="temp" items="${players}">
            <tr>
                <td> ${temp.getScore()}
                </td>
                <td>Player ${temp.getName}
                </td>
            </tr>

        </c:forEach>
    </c:if>
</table>
</body>
</html>
