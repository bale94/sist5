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
      <label for="pname">선수이름</label>
    </div>
    <div class="col-75">
      <input type="text" id="pname" name="pname" placeholder="선수이름입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="record">성적</label>
    </div>
    <div class="col-75">
      <input type="text" id="record" name="record" placeholder="성적입력.."
         value="">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="데이터 입력">
  </div>
  </form>
</div> 
<table >
	<col width="30%">
   <tr><th>선수명</th><th>기록</th><th></th></tr>
   <tr><td>${playerInfo.pname }</td><td>${playerInfo.record }</td></tr>
</table>
</body>
</html>