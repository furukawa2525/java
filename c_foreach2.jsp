<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>c:foreachのサンプル(2)</title>
</head>
<body>
<%
	List<Map<String, Object>>list = new ArreyList<Map<String, Object>>();
	Map<String, Object>mapA = new HashMap<String, Object>();
	mapA.put("username", "ユーザー名 A");
	mapA.put("age", 16);
	mapA.put("birthday", "10/30");
	
	Map<String, Object>mapB = new HashMap<String, Object>();
	mapB.put("username", "ユーザー名 B");
	mapB.put("age", "24");
	mapB.put("birthday", "6/8");
	
	Map<String, Object>mapC = new HashMap<String, Object>();
	mapC.put("username", "ユーザー名 C");
	mapB.put("age", "29");
	mapB.put("birthday", "12/12");
	
	list.add(mapA);
	list.add(mapB);
	list.add(mapC);
	
	request.setAttribute("list", list);
%>

<%-- c:foreachはjava.utilに含まれるコレクションや配列の内容を取り出して、その中身をvarに指定した変数へ格納する --%>
<table border="1">
<c:forEach></c:forEach>
</table>

</body>
</html>