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
<%-- ageの値を30に設定 --%>
<c:set value="30" var="age"></c:set>

<%-- c:ifは単純な条件分岐を提供する --%>
<c:if test="${age >= 50}">
	50以上です
</c:if>
<c:if test="${age < 50}">
	50未満です
</c:if>
</body>
</html>