<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>c:ifのサンプル</title>
</head>
<body>
<%-- ageの値を50に設定 --%>
<c:set value="50" var="age"></c:set>

<%-- 1つの条件に合致すると以降のc:whenは処理されない --%>
<c:choose>
	<c:when test="${age >= 100}">100以上です</c:when>
	<c:when test="${age >= 80}">80以上です</c:when>
	<c:when test="${age >= 60}">60以上です</c:when>
	<c:when test="${age >= 40}">40以上です</c:when>
	<c:when test="${age >= 20}">20以上です</c:when>
	<c:otherwise>どの条件にも一致しませんでした</c:otherwise>
</c:choose>

</body>
</html>