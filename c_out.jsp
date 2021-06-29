<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>c:outのサンプル</title>
</head>
<body>
<%-- そのままJSPへ渡してしまうとscriptタグが起動する値を設定 --%>
<c:set var="xss" value="<script>alert('スクリプトが起動しました！)</script>"></c:set>

<%-- c:outで表示される文字列はHTMLエスケープも使える --%>
<c:out value="${xss}" escapeXml="false" />
</body>
</html>