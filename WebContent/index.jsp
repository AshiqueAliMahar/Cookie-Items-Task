<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="CookieGetSet" method="post">
		<input type="text" name="name">
		<input type="number" name="age">
		<button type="submit">Save</button>

	</form>
	<table>
		<tr>
			<th>Index</th>
			<th>Name</th>
			<th>Value</th>
		</tr>

		<%
			try{
				for (int i=0;i<request.getCookies().length;i++) {
					Cookie cookie[]=request.getCookies();
		%>

		<tr>
			<td><%=i %></td>
			<td><%=cookie[i].getName()%></td>
			<td><%=cookie[i].getValue()%></td>
			<form action="CookieGetSet" method="post">
			<td><button type="submit" name="delete" value='<%=i%>'>Delete</button></td>
			</form>
		</tr>
		<%
				}
			}catch(NullPointerException ex){
				System.out.print("Empty Cookies");
			}
		%>
		
	</table>
</body>
</html>