<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.product_wrapper {
	display: inline-flex;
	width: 1700px;
	justify-content: center;
	padding-top: 50px;
}

.product_img {
	width: 500px;
	display: inline-block;
}

.product_info, .pinfo_wrapper {
	display: inline-block;
}

.pinfo_wrapper {
	width: 500px;
	padding-left: 50px;
	padding-right: 50px;
	background-color: white;
}

.subject {
	padding-top: 20px;
	font-size: 25px;
	font-weight: 900;
}

.price {
	margin-top: 10px;
	width: 400px;
	font-size: 20px; 
	font-weight : 900;
	color: #f1c40f;
	padding-bottom: 30px;
	font-weight: 900; color : #f1c40f; 
	padding-bottom : 30px;
	border-bottom: 1px solid #f1c40f;
}

.qty {
	font-weight: 600;
	color: #303030;
}

.qty_input {
	border-radius: 0px;
	border: 1px solid gray;
	border-left: 0px solid gray;
	border-right: 0px solid gray;
	padding: 0;
	width: 40px;
	height: 40px;
	text-align: center;
	font-size: 17px;
}

.calc {
	display: inline-block;
	width: 40px;
	height: 40px;
	text-align: center;
	border: 1px solid gray;
	font-size: 25px;
	cursor: pointer;
	color: gray;
}

.calc_wrapper{
	display: inline-flex;
	padding-bottom: 50px;
	width: 400px;
	border-bottom: 1px solid #f1c40f;
	
}

.price_sum_wrapper {
display: inline-block;
	width: 100%;
	margin-bottom: 30px;
	
}
.price_sum_wrapper p{
	display: inline-block;
	margin: 20px 0px;
}

.price_sum_wrapper p:first-child{
	float: left;
	font-size: 20px;
	font-weight: 800;
	color : #f1c40f; 
}

.price_sum_wrapper p:nth-child(2){
	float: right;
	font-size: 20px;
	font-weight: 800;
	color : #f1c40f; 
}

.btn_wrapper{
	display: inline-flex;
	justify-content: center;
	width: 400px;
}

.btn_wrapper button{
	background-color:  #233067;
	color:  #f1c40f;
	border: none;
	width: 120px;
	height:50px;
	border-radius: 50px;
	font-size: 16px;
	font-weight: 900;
	margin-right: 10px;
	margin-left: 10px;
}
.btn_wrapper button:nth-child(3) {
	font-size: 28px;
}

.red{
	color: red;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
</head>

<body>
	<%@ include file="../../../TeamProjectCSS/header.jsp"%>
	<div class="product_wrapper">
		<img class="product_img" alt="productImg"
			src="${path}/ProductImg/a.png">
		<div class="pinfo_wrapper">
			<p class="product_info subject">[ 오크 ] 엘 레시오</p>
			<br>
			<p class="product_info price"><span class="one_price">36900</span>원</p>
			<br>
			<p class="product_info qty">수량</p>
			<br>
			<div class="calc_wrapper">
			<div class="calc" onclick="minus()">-</div>
			<input class="qty_input" type="text" value="1" readonly />
			<div class="calc" onclick="plus()">+</div>
			</div><br>
			<div class="price_sum_wrapper">
			<p class="product_info price_sum_txt">총 금액</p>
			<p class="price_sum"><span class="real_price">36900</span>원</p>
			</div>
			<div class="btn_wrapper">
			<button type="button">구매하기</button>
			<button type="button">장바구니</button>
			<button type="button" class="wishlist" onclick="red()">♥</button>
			</div>
		</div>

	</div>
	<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
<script type="text/javascript">
	function plus(){
		$(".qty_input").val((Number)($(".qty_input").val())+1);
		$(".real_price").text(((Number)($(".qty_input").val()))*((Number)($(".one_price").text())));
		
	}
	function minus(){
		if(!((Number)($(".qty_input").val())==1)){
		$(".qty_input").val((Number)($(".qty_input").val())-1);
		$(".real_price").text(((Number)($(".qty_input").val()))*((Number)($(".one_price").text())));
		}
	}
	function red(){
		$(".wishlist").add
	}
</script>
</html>