<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method = "post">
    <input type="text" name = "name" placeholder = "Enter Name" required> 
    <input type="email" name = "email" placeholder = "Enter Emial" required> 
    <input type="number" name = "mobileNumber" placeholder = "Enter Number" required> 
    <select name = "securityQuestion">
    <option value = "What is your first car" > What was you first car </option>
    <option value = "What is your first pet" > What was you first pet </option>
    <option value = "What is your first school" > What was you first school </option>
    <option value = "What is your first college" > What was you first college </option>
    </select> 
    <input type = "text" name = "answer" placeholder="Enter Answer" required>
    <input type = "password" name = "password" placeholder  ="Enter Password" required>
    <input type = "submit" value = "signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Updated</h1>
<%}%>

<%
	if("invalid".equals(msg))
	{
		//System.out.println("Hi");
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%}%>

    <h2>Mynza</h2>
    <p>Get some beautiful items from our website, item safety is ours primary choice. Returning of orders only considered within 5 days after  issuing the product</p>
  </div>
</div>

</body>
</html>