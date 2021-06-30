<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>c:url</title>
</head>
<body>
<%-- c:urlはURLの生成を行う。c:paramと組み合わせてリクエストパラメータを同時に送るURLを生成可能 --%>
<c:url var="url" value="c_foreach2.jsp">
	<c:param name="param1" value="value0&1" />
	<c:param name="param2" value="value2" />
</c:url>
<c:out value="${url }"/>
</body>
</html>