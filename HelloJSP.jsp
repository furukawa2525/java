<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8" import="java.time.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Hello</title>
</head>
<body>
aaa
<%
	LocalDateTime local = LocalDateTime.now();
	out.println(local.getHour());
	out.println(":");
	out.println(local.getMinute());
%>

<%

	String value = "";
	if(local.getHour() < 12){
		value = "午前中";
	}else{
		value = "午後";
		}
		out.println(value);
%>
ですね。
</body>
</html>