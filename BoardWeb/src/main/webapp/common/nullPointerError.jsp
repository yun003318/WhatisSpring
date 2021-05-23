<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>널 포인터 예외 처리(NullPointerException)</title>
<style>
#container { width: 500px; margin: 0 auto;}
table { width: 500px; border: 1px solid black; border-collapse: collapse;}
th, td { border: 1px solid black; font-weight: normal, text-align: center;}
tr { height: 20px;}
th { background: skyblue;}
</style>
</head>
<body>
<div id="container">
<table>
	<tr><th>NullPointer 예외 처리</th></tr>
	<tr><td>예외 처리 메시지 : ${exception.message}</td></tr>
</table>
</div>
</body>
</html>