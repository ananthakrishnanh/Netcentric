<%@ page import ="java.sql.*" %>
<%
	String q1 = request.getParameter("qs1");
	String ans1 = request.getParameter("ans1");
	String q2 = request.getParameter("qs2");
	String ans2 = request.getParameter("ans2");
	String q3 = request.getParameter("qs3");
	String ans3 = request.getParameter("ans3");
	String q4 = request.getParameter("qs4");
	String ans4 = request.getParameter("ans4");
	String q5 = request.getParameter("qs5");
	String ans5 = request.getParameter("ans5");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ncp","root", "kuttupappy");
    Statement st = con.createStatement();

    int i = st.executeUpdate("insert into test(qs1,ans1,qs2,ans2,qs3,ans3,qs4,ans4,qs5,ans5) values('" + q1 + "','" + ans1 + "','" + q2 + "','" + ans2 + "','" + q3 + "','" + ans3 + "','" + q4 + "','" + ans4 + "','" + q5 + "','" + ans5 + "');");
	if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("qsgenerated.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("admin.jsp");
    }
%>