<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ncp","root", "kuttupappy");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if(rs.next()){
        String pass = "admin";
        String ppp = rs.getString("pass");
        session.setAttribute("userid", userid);
        if(pwd.equals(pass)){
            response.sendRedirect("admin.jsp");
        }
        else if(pwd.equals(ppp)){
        response.sendRedirect("user.jsp");
        }
    }
    else{
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>