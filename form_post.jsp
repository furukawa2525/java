<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>form_post</title>
</head>
<body>
次のフォームからメールアカウントを入力してください。
<form action="./form_post.jsp" method="post">
	メールアドレス（半角英数記号）
	<input type="text" name="mailAddress">
	<input type="submit" value="送信する"/>
</form>
<br />
・受け取った値:<%= request.getParameter("mailAddress") %>
</body>
</html>