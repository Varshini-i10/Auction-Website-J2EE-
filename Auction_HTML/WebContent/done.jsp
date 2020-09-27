<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table, td {  
  border: 1px solid #ddd;
  text-align: center;
}

table {
  border-collapse: collapse;
  width: 15%;
}

 td {
  padding: 13px;
}
body{
background-color:#ffa31a;
}
#one{
background-color:black;
color:white;
}
</style>
</head>
<body>
<%String id = request.getParameter("id");
String name=request.getParameter("name");
String yname=request.getParameter("yname");
String email= request.getParameter("email");
String bid= request.getParameter("bid");
%>
<h1 align="center">Bid Submitted</h1>
<h3 align="center">Your bid is now active. If your bid is successful, you will be notified within 24hours of the close of bidding.</h3>
<center><table>
<tr><td id="one">   <% out.write("<b>"+name+"</b>");%></td></tr>
<tr><td><b>Item ID:</b><% out.write("<b>"+id+"</b>");%></td></tr>
<tr><td><b>Name:</b> <% out.write("<b>"+yname+"</b>");%></td></tr>
<tr><td><b>Email address:</b><% out.write("<b>"+email+"</b>");%></td></tr>
<tr><td><b>Bid price:</b><% out.write("<b>Rs."+bid+"</b>");%></td></tr>
<tr><td><b>Auto-increment price:</b><%if(request.getParameter("ch") == null)
{out.write("<b>false</b>");}
else{
	out.write("<b>true</b>");
}
%></td></tr>
</center>
</table>

</body>
</html>