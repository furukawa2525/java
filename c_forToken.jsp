<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>forToken</title>
</head>
<body>
<%-- c:forTokensはStringTokenizerと同様に働く --%>
<c:set var="vals" value="1, 2, 4, 8, 16, 32, 64, 128, 256"/>

<%-- itemsに区切り文字で区切られた文字列を指定し、区切り文字はdelimsで指定 --%>
<c:forTokens items="${vals}" delims="," var="token">
	<c:out value="${token}"/><br />
</c:forTokens>
<hr />
<%-- 区切り記号にカンマ以外も指定可能 --%>
<c:set var="alphabets" value="a:b:c:d:e:f:g:h:i:j"/>

<%-- itemsに区切り文字で区切られた文字列を指定し、区切り文字はdelimsで指定 --%>
<c:forTokens items="${alphabets}" delims=":" var="alphabet">
	<c:out value="${alphabet}"/><br />
</c:forTokens>
</body>
</html>