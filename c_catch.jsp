<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>c:catch</title>
</head>
<body>
<%-- c:catchのタグ内で発生した例外をキャッチ可能 --%>
<c:catch var="ex">
	<%
		Object obj = new String("abcde");
		//ここでキャスト例外
		Integer i = (Integer)obj;
	%>
</c:catch>

<c:out value="${ex}"></c:out>
</body>
</html>