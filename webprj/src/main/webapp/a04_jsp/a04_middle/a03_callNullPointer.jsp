<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    %>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>

</head>
<%--
ex) z04_zeroByException (예외처리 jsp)
		java.lang.ArithmeticException(서버에 등록할 예외 클래스)
	a04_call_Arithmetic.jsp(테스트용jsp)
--%>
<body>

<%
String req = request.getParameter("");
log(req.toString());

%>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="dname">@@@</label>
    </div>
    <div class="col-75">
      <input type="text" id="dname" name="dname" placeholder="부서명입력.."
         value="">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="검색">
  </div>
  </form>
</div> 
<table >
   <tr><th>###</th><th>###</th><th>###</th></tr>
   <tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>