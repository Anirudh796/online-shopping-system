
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp"method = "post">
     <input type="email" name = "email" placeholder = "Enter Emial" required> 
     <input type = "password" name = "password" placeholder  ="Enter Password" required>
     <input type = "submit" value = "Login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
String msg = request.getParameter("msg");
if("notexist".equals(msg))
{
%>
<h1>Incorrect Username or Password</h1>
<%}%>
<%
	if("invalid.".equals("msg"))
	{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%}%>


    <h2>Mynza</h2>
    <p>Get some beautiful items from our website, item safety is ours primary choice. Returning of orders only considered within 5 days after  issuing the product</p>
  </div>
</div>

</body>
</html>