<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script>
	/*
	
	 */
	$(document).ready(function(){
		//$("h1").text("시작!")
	})
</script>
</head>
<body>

<%--

--%>
<h1></h1>

<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="name">회원이름</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="name" placeholder="회원이름입력.."
         value="${param.ename}">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="age">나이</label>
    </div>
    <div class="col-75">
      <input type="text" id="age" name="age" placeholder="나이입력.."
         value="${param.age}">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="데이터 입력">
  </div>
  </form>
</div> 
<table >
	<col width="30%">
   <tr><th>회원이름</th><th>나이</th></tr>
   <tr><td>${memberInfo.name}</td><td>${memberInfo.age}</td></tr>
</table>
</body>
</html>