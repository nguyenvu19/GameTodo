<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <c:set var="showDialog" value="${GameMethod.is_dialog}" scope="request" />
    <c:set var="gameState" value="${GameMethod.check_state}"
    	scope="request" />
</head>
<body>
   	<div class="main">
   		<div class="container">
   			<h3>
   				Đoán 1 số bất kỳ từ 1 đến 1000.
   			</h3>
   			<form action="game" method="post">
   				<input name="numGuess" value="${savedNum}" class="form-control"
   					type="number" placeholder="Số" min="1" max="1000" required
   					autofocus onfocus="onFocusSelectAll(this);">
   				<div class="btn-set">
   					<button name="submit" value="checkin">Dự đoán</button>
   				</div>
   				<div class="modal fade" id="dialogCongratulation"
   					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
   					aria-labelledby="staticBackdropLabel" aria-hidden="true">
   					<div class="modal-dialog">
   						<div class="modal-content">
   							<div class="modal-header">
   								<h5 class="modal-title" id="staticBackdropLabel">Thông Báo</h5>
   							</div>
   							<div class="modal-body">Bạn thật xuất sắc!</div>
   							<div class="modal-footer">
   								<button name="submit" value="checkout" type="submit"
   									class="btn btn-primary">Làm mới</button>
   							</div>
   						</div>
   					</div>
   				</div>
   			</form>
   			<p>${botRep}</p>
   		</div>
   	</div>
   	<div class="modal fade" id="dialogWarning" data-bs-backdrop="static"
   		data-bs-keyboard="false" tabindex="-1"
   		aria-labelledby="staticBackdropLabel" aria-hidden="true">
   		<div class="modal-dialog">
   			<div class="modal-content">
   				<div class="modal-header">
   					<h5 class="modal-title" id="staticBackdropLabel">Cảnh Báo</h5>
   				</div>
   				<div class="modal-body">Số này bạn vừa nhập xong, hãy nhập lại
   					số khác!</div>
   				<div class="modal-footer">
   					<button type="button" class="btn btn-secondary"
   						data-bs-dismiss="modal">Đóng</button>
   				</div>
   			</div>
   		</div>
   	</div>
</body>
</html>
