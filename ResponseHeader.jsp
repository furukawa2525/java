<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Header</title>
</head>
<body>
	<table class="table table-bordered">
		<tr>
			<th>ヘッダー名</th>
			<th>値</th>
		</tr>
		<%
			//HTTPヘッダーの集合をCollectionで取得
			Cllection<String>headers = response.getHeaderNames();
		
			Iterator<String>keys = headers.iterator();
		
			//Enumerationの要素の数だけ繰り返す
			while(keys.hasNext()){
				//Enumeration.から取得した次の要素(HTTPヘッダー名)を取得
				String name = (String)keys.next();
				
				//指定されたHTTPヘッダーの値を取得
				String value = response.getHeader(name);
		%>
		<tr>
			<td><%=name%></td>
			<td><%=value%></td>
		</tr>
		<%
			}
		%>
</body>
</html>