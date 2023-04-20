<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
    <div class = "main">
        <form action="index" method="post">
            <h1>Nhập tên người chơi: </h1>
            <input placeholder="Nhập tên người chơi" name="name" value="${name}" />
        </form>

        	<div class="board">
        				<h5>Bảng xếp hạng</h5>
        				<div class="scrollbar">
        					<table class="table">
        						<thead>
        							<tr>
        								<th scope="col">Hạng</th>
        								<th scope="col">Tên người chơi</th>
        								<th scope="col">Số lần đoán</th>
        							</tr>
        						</thead>
        						<tbody>
        							<c:set var="no" value="0" />
        							<c:forEach var="player" items="${GameMethod.players}">
        								<c:set var="no" value="${no+1}" />
        								<tr>
        									<td>${no}</td>
        									<td>${player.getPlayerName()}</td>
        									<td>${player.getCounter()}</td>
        								</tr>
        							</c:forEach>
        						</tbody>
        					</table>
        				</div>
        			</div>
    </div>
</body>
</html>
