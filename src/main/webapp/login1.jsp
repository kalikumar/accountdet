 
    <%@ page import="example.Login"%>  
    <jsp:useBean id="obj" class="example.LoginProcess"/>  
      
    <jsp:setProperty property="*" name="obj"/>  
      
    <%  
    boolean status=Login.validate(obj);  
    if(status){  
    out.println("You r successfully logged in");  
    session.setAttribute("session","TRUE");  
    }  
    else  
    {  
    out.print("Sorry, email or password error");  
    %>  
    <jsp:include page="index.html"></jsp:include>  
    <%  
    }  
    %>  