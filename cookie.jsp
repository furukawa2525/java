<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie</title>
</head>
<body>
<%
	//クッキーオブジェクトの作成
	cookie ck = Cookie("PARAM1", "Value12345");
<<<<<<< HEAD
=======

>>>>>>> 567d8cbb9c156a44b8884b3fa67d1f0b6d25e46f
	//発行されてからの有効期限。秒単位。-1を指定するとブラウザを閉じるまで有効。
	ck.setMaxAge(60 * 60 * 24);
	
	//クッキーパス。ドメイン以降のURLのパスに一致させないと発行されない。
	ck.setPath("/");
	
	//クッキー発行ドメイン
	ck.setDomain(".sample.co.jp");
	
	//HTTPSのみに発行許可するかを判定するフラグ
	ck.setSecure(false);
	
	//クッキーを出力する
	response.addCookie(ck);
%>
クッキーを出力しました。
</body>
</html>