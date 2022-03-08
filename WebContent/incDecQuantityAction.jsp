<%@ page import = "project.ConnectionProvider"%>
<%@ page import= "java.sql.*" %>
<% 
String email=session.getAttribute("email").toString();
String id = request.getParameter("id");
String incdec = request.getParameter("quantity");
int price = 0;
int total = 0;
int quantity = 0;
int final_total = 0;
try
{
	Connection con = ConnectionProvider.getCon();	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from cart where email = '" +email+ "' and product_id='" +id+"' and address is NULL");
	while(rs.next())
	{
		price = rs.getInt(4);
		total  = rs.getInt(5);
		quantity = rs.getInt(3);
		
	}
	Statement st1 = con.createStatement();
	if(quantity == 1 && incdec.equals("dec"))
		response.sendRedirect("myCart.jsp?msg=notPossible");
	else if(quantity!=1 && incdec.equals("dec"))
	{
		total = total-price;
		quantity -=1;
		System.out.println(total);
		st1.executeUpdate("update cart set total= '"+total+ "' , quantity='"+quantity+"'where email='"+email+"' and product_id='" +id+ "' and address is NULL ");
		
		response.sendRedirect("myCart.jsp?msg=dec");
	}
	else
	{
		total = total+price;
		quantity +=1;
		System.out.println(total);
		System.out.println(quantity);
		System.out.println(email);
		System.out.println(id);
		st1.executeUpdate("update cart set total= '"+total+"', quantity= '"+quantity+"' where email='"+email+"' and product_id='" +id+ "' and address is NULL ");
		response.sendRedirect("myCart.jsp?msg=inc");
	}

}
catch(Exception e)
{
	System.out.println(e);
}




%>