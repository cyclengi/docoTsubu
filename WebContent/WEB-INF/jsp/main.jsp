<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="model.User,model.Mutter,java.util.List" %>

<%
User loginUser = (User) session.getAttribute("loginUser");
List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<p><%= loginUser.getName() %>さん、ログイン中</p>

<p>
<a href="/docoTsubu/logout">ログアウト</a>
</p>

<p><a href="/docoTsubu/Main">更新</a></p>

<form action="/docoTsubu/Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>

<% for(Mutter mutter : mutterList){ %>
<p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
<% } %>


</body>
</html>