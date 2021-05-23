<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세 보기</title>
<style>
#container { width: 400px; margin: 0 auto; font-size: 0.8em}
h1, .acc { text-align: center;}
a { text-decoration: none; color: brown;}
table { width: 400px; border: 1px solid black; border-collapse: collapse;}
th, td { border: 1px solid black; font-weight: normal;}
tr { height: 50px;}
th { background: orange;}
input, textarea { margin-left: 5px;}
.btns input { border: 0; width: 100px; height: 30px; background: black; color: white;}
</style>
</head>
<body>
<div id="container">
<h1>글 상세 보기</h1>
<div class="acc"><a href="logout.do">로그아웃</a></div>
<hr>
<form action="updateBoard.do" method="post">
<input type="hidden" name="seq" value="${board.seq}">
<table>
	<tr>
		<th width="20%">제목</th>
		<td width="80%"><input type="text" name="title" size="42" value="${board.title}"></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><input type="text" name="writer" size="42" value="${board.writer}"></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea cols="41" rows="10" name="content">${board.content}</textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<div class="btns">
		<input type="submit" value="글 수정">
		<input type="button" value="글 삭제" onclick="location='deleteBoard.do?seq=${board.seq}'">
		<input type="button" value="글 목록 " onclick="location='getBoardList.do'">
		</div>
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>