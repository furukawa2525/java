<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>r:removeのサンプル</title>
</head>
<body>
<%-- c:setでいくつかの変数を格納した後、c:removeで消去 --%>
<c:set value="名前" var="name" />
<c:set value="住所" var="address" scope="session" />
<c:set value="mail@test.co.jp" var="mail" scope="session" />
<c:set value="*" var="mail" scope="request" />

<%-- c:removeで、変数addressとmailを削除 --%>
<c:remove var="address" scope="session" />
<c:remove var="mail" />

<%-- c:outで表示する。もしnullであったら、defaultの値が表示される。 --%>
<c:out value="${name}" default="-----"></c:out>
<c:out value="${address}" default="-----"></c:out>
<c:out value="${mail}" default="-----"></c:out>
</body>
</html>