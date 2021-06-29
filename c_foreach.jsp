<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>c:foreachのサンプル</title>
</head>
<body>
<%
	List<String>list = Arrays.asList("a", "b", "c", "d", "e");

	request.setAttribute("list", list);
%>

<%-- c:foreachはjava.utilに含まれるコレクションや配列の内容を取り出して、その中身をvarに指定した変数へ格納する --%>
<c:forEach items="${list}" var="obj" varStatus="status">
<%-- varStatusは繰り返し情報を格納するインスタンスを指定する。indexにループが格納されている。 --%>
<c:out value="${status.index}" />
<c:out value="${obj}"></c:out>
<br />
</c:forEach>
</body>
</html>