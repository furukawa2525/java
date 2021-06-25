<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.net.URLDecoder" %>
<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>URLEncodeSample</title>
</head>
<body>
<%
//パラメータを渡すURL
	String url = "URLEncodeSample.jsp?param=";

//クエリ文字列に入れたい値
	String params = "全/角？字";

//全角文字やURLに含めてはいけない文字列があるのでURLエンコード
	String encoded = URLEncoder.encode(params, "UTF-8");

//URLを作成
	url = url + encoded;
%>
<a href="<%= url %>">URLエンコードされていますか？</a><br />

<%
	String receive = request.getParameter("param");
	if(receive != null){
		//受け取ったパラメータをURLデコードする
		receive = URLDecoder.decode(receive, "UTF-8");
	}
%>

送信パラメータ:param:<%= receive %>
</body>
</html>